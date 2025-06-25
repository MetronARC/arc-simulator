<?php

namespace App\Controllers;

use CodeIgniter\API\ResponseTrait;

class Recap extends BaseController
{
    use ResponseTrait; // Include the ResponseTrait to use respond()

    protected $db, $builder;

    public function __construct()
    {
        $this->db = \Config\Database::connect();
        $this->builder = $this->db->table('machine'); // Connect to the 'machine' table
    }

    public function index(): string
    {
        // Fetch all machine names from the 'machine' table
        $machines = $this->builder->select('MachineID')->get()->getResultArray();

        // Pass the machine names to the view
        $data = [
            'title' => 'Machine Recap',
            'sidebarData' => 'recap',
            'machines' => $machines
        ];

        return view('user/recap', $data);
    }

    public function fetchMachineData()
    {
        // Get POST data
        $input = $this->request->getJSON(true);
        $machineName = $input['machineName'] ?? '';
        $date = $input['date'] ?? '';

        // Query the machine history based on machineID and date
        $historyBuilder = $this->db->table('machinehistory1');
        $data = $historyBuilder->select('ArcOn, ArcOff')
            ->where('MachineID', $machineName)
            ->where('Date', $date)
            ->get()
            ->getResultArray();

        return $this->respond($data);
    }

    public function calculateUsagePercentage()
    {
        try {
            // Get JSON input data
            $input = $this->request->getJSON(true);

            // Validate required input data
            if (!isset($input['machineName'], $input['date'], $input['startTime'], $input['endTime'])) {
                throw new \Exception('Invalid input data');
            }

            $machineName = $input['machineName'];
            $date = $input['date'];
            $startTime = $input['startTime'];
            $endTime = $input['endTime'];

            $machineID = $machineName;

            // Step 2: Sum ArcTotal within the specified time range
            $historyBuilder = $this->db->table('machinehistory1');
            $result = $historyBuilder->select('SUM(TIME_TO_SEC(ArcTotal)) AS totalArcTimeInSeconds')
                ->where('MachineID', $machineID)
                ->where('Date', $date)
                ->where('ArcOn >=', $startTime)
                ->where('ArcOff <=', $endTime)
                ->get()
                ->getRow();

            $totalArcTimeInSeconds = (int)($result->totalArcTimeInSeconds ?? 0);

            // Step 3: Calculate the total seconds in the given time range
            $startDateTime = new \DateTime("$date $startTime");
            $endDateTime = new \DateTime("$date $endTime");
            $timeDifferenceInSeconds = $endDateTime->getTimestamp() - $startDateTime->getTimestamp();

            // Validate time range
            if ($timeDifferenceInSeconds <= 0) {
                throw new \Exception('Invalid time range. End time must be after start time.');
            }

            // Step 4: Calculate the usage percentage
            $usagePercentage = ($totalArcTimeInSeconds / $timeDifferenceInSeconds) * 100;

            // Return JSON response with usage data
            return $this->respond([
                'totalArcTime' => $totalArcTimeInSeconds,
                'usagePercentage' => round($usagePercentage, 2) // Rounded to two decimal places
            ]);
        } catch (\Exception $e) {
            // Return error response if an exception occurs
            return $this->respond(['error' => $e->getMessage()], 400);
        }
    }

    public function allCharts()
    {
        $date = $this->request->getPost('date');
        $area = $this->request->getPost('area');

        // If no date or area is provided, redirect back with error
        if (empty($date) || empty($area)) {
            session()->setFlashdata('error', 'Please select both date and area');
            return redirect()->back();
        }

        // Format the date to ensure YYYY-MM-DD format
        try {
            $formattedDate = date('Y-m-d', strtotime($date));
        } catch (\Exception $e) {
            session()->setFlashdata('error', 'Invalid date format');
            return redirect()->back();
        }

        // Get the area number from the area string
        $areaNumber = substr($area, -1);
        $historyTable = 'machinehistory' . $areaNumber;

        // Pass both date and area to the view
        $data = [
            'title' => 'All Machine Charts',
            'sidebarData' => 'recap',
            'date' => $formattedDate,
            'area' => $area,
            'historyTable' => $historyTable
        ];

        return view('user/allChart', $data);
    }

    public function fetchChartData()
    {
        // Get the date and area from the request
        $input = $this->request->getJSON();
        $date = $input->date ?? '';
        $area = $input->area ?? '';

        if (empty($date) || empty($area)) {
            return $this->response->setJSON(['error' => 'Date and Area are required'])->setStatusCode(400);
        }

        // Get the area number from the area string
        $areaNumber = substr($area, -1);
        $historyTable = 'machinehistory' . $areaNumber;

        $data = [];

        // Fetch states from the corresponding history table
        $sql = "SELECT m.MachineID, mh.ArcOn, mh.ArcOff, mh.State
            FROM machine m
            JOIN $historyTable mh ON m.MachineID = mh.MachineID
            WHERE m.Area = ? AND DATE(mh.Date) = ?
            ORDER BY mh.ArcOn ASC";
        
        $stmt = $this->db->connID->prepare($sql);
        $stmt->bind_param("ss", $areaNumber, $date); // Just use the number since Area column contains numbers
        
        // Log the query parameters for debugging
        log_message('debug', 'SQL Query: ' . $sql);
        log_message('debug', 'Area Number: ' . $areaNumber);
        log_message('debug', 'Date: ' . $date);
        
        $stmt->execute();
        $result = $stmt->get_result();
        
        while ($row = $result->fetch_assoc()) {
            $data[$row['MachineID']][] = [
                'ArcOn' => $row['ArcOn'],
                'ArcOff' => $row['ArcOff'],
                'State' => $row['State'] ?? null
            ];
        }
        $stmt->close();

        // Log the result data for debugging
        log_message('debug', 'Fetched Data: ' . json_encode($data));

        // Return data
        $response = [
            'date' => $date,
            'area' => $area,
            'data' => $data
        ];
        return $this->response->setJSON($response);
    }
}
