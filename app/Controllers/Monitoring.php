<?php

namespace App\Controllers;

use CodeIgniter\Database\Exceptions\DatabaseException;

class Monitoring extends BaseController
{
    public function index(): string
    {
        // Load the database
        $db = \Config\Database::connect();

        try {
            // Query to get all tables with the prefix "area"
            $query = $db->query("SHOW TABLES LIKE 'area%'");
            $tables = $query->getResultArray();

            // Initialize an array to store area data
            $areaData = [];

            foreach ($tables as $table) {
                $tableName = array_values($table)[0]; // Get the table name

                // Count the rows in the current table
                $rowCountQuery = $db->query("SELECT COUNT(*) as total FROM `$tableName` WHERE State = 'ON'");
                $rowCount = $rowCountQuery->getRow()->total;

                // Fetch the machine states
                $machineStateQuery = $db->query("SELECT State FROM `$tableName`");
                $machineStates = $machineStateQuery->getResultArray();

                // Add the table name, row count, and machine states to the areaData array
                $areaData[] = [
                    'name' => $tableName,
                    'rowCount' => $rowCount,
                    'machines' => $machineStates // Store machine states
                ];
            }

            // Pass the data to the view
            $data['title'] = 'Monitoring Page';
            $data['sidebarData'] = 'monitoring';
            $data['areas'] = $areaData; // Pass area data to the view

        } catch (DatabaseException $e) {
            // Handle any database exceptions
            return $e->getMessage();
        }

        return view('user/monitoring/monitoring', $data);
    }


    public function activeMachine($areaName): string
    {
        $db = \Config\Database::connect();

        // Fetch data from the table with the name passed in the URL (e.g., "area1")
        $query = $db->query("SELECT * FROM `$areaName`");
        $results = $query->getResultArray();

        // Prepare data for the view
        $data['title'] = 'Active Machine Page';
        $data['sidebarData'] = 'monitoring';
        $data['areaName'] = $areaName;
        $data['machines'] = $results;

        return view('user/monitoring/activeMachine', $data);
    }

    public function getMachineState($areaName)
    {
        $db = \Config\Database::connect();

        // Fetch only the necessary fields to reduce payload size
        $query = $db->query("SELECT MachineID, lastBeat, State FROM `$areaName`");
        $results = $query->getResultArray();

        // Return JSON response without specifying the return type as string
        return $this->response->setJSON($results);
    }
}
