<?= $this->extend('template2/index') ?>
<?= $this->section('page-content') ?>

<h1>Dashboard</h1>

<div class="date"></div>

<div class="insights">
    <!-- Form for input -->
    <div class="input-form">
        <h3 style="margin-bottom: 20px; text-align: center;">
            Create New <?= esc($postValue) ?> Records
        </h3>
        <form id="createWeldMetalForm" method="POST">
            <div class="form-row" style="display: flex; justify-content: space-between; margin-bottom: 15px;">
                <!-- QR Data -->
                <div class="form-group" style="flex: 1; margin-right: 10px;">
                    <label for="weldMetalQR" style="display: block; margin-bottom: 5px; font-weight: bold;">QR Data</label>
                    <input type="text" id="weldMetalQR" name="weldMetalQR" value="<?= esc($tmpQR) ?>" readonly
                        style="width: calc(100% - 20px); padding: 10px; border: 1px solid #ccc; border-radius: 4px; background-color: #a6acaf; cursor: default; color: white;">
                </div>

                <!-- RFID Data -->
                <div class="form-group" style="flex: 1; margin-right: 0;">
                    <label for="rfidData" style="display: block; margin-bottom: 5px; font-weight: bold;">RFID Data</label>
                    <input type="text" id="rfidData" name="rfidData" value="<?= esc($tmpRFID) ?>" readonly
                        style="width: calc(100% - 20px); padding: 10px; border: 1px solid #ccc; border-radius: 4px; background-color: #a6acaf; cursor: default; color: white;">
                </div>
            </div>
            <div class="form-row" style="display: flex; justify-content: space-between; margin-bottom: 15px;">
                <div class="form-group" style="flex: 1; margin-right: 10px;">
                    <label for="weldMetalNumber" style="display: block; margin-bottom: 5px; font-weight: bold;">Weld Metal Number</label>
                    <input type="text" id="weldMetalNumber" name="weldMetalNumber" placeholder="Enter Project Number" style="width: calc(100% - 20px); padding: 10px; border: 1px solid #ccc; border-radius: 4px;">
                </div>
                <div class="form-group" style="flex: 1; margin-right: 0;">
                    <label for="weldMetalName" style="display: block; margin-bottom: 5px; font-weight: bold;">Weld Metal Name</label>
                    <input type="text" id="weldMetalName" name="weldMetalName" placeholder="Enter Project Name" style="width: calc(100% - 20px); padding: 10px; border: 1px solid #ccc; border-radius: 4px;">
                </div>
                <div class="form-group" style="flex: 1; margin-right: 0;">
                    <label for="weldMetalCertNo" style="display: block; margin-bottom: 5px; font-weight: bold;">Weld Metal Cert. No</label>
                    <input type="text" id="weldMetalCertNumber" name="weldMetalCertNumber" placeholder="Enter Weld Metal Cert. No" style="width: calc(100% - 20px); padding: 10px; border: 1px solid #ccc; border-radius: 4px;">
                </div>
            </div>
            <div class="form-row" style="display: flex; justify-content: space-between; margin-bottom: 15px;">
                <div class="form-group" style="flex: 1; margin-right: 10px;">
                    <label for="weldMetalDescription" style="display: block; margin-bottom: 5px; font-weight: bold;">Project Description</label>
                    <textarea placeholder="Enter Weld Metal Description" id="weldMetalDescription" name="weldMetalDescription"
                        style="width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px; height: 100px; resize: vertical;"></textarea>
                </div>
            </div>
            <div class="form-buttons" style="display: flex; justify-content: flex-end; margin-top: 20px;">
                <button type="submit" style="margin-left: 10px; padding: 10px 15px; border: none; border-radius: 4px; background-color: #007bff; color: white; cursor: pointer; transition: background-color 0.3s;">Create</button>
                <button type="button" id="resetBtn"
                    style="margin-left: 10px; padding: 10px 15px; border: none; border-radius: 4px; background-color: #6c757d; color: white; cursor: pointer; transition: background-color 0.3s;">
                    Reset
                </button>
            </div>
        </form>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    function fetchTmpData() {
        $.ajax({
            url: "<?= base_url('record/fetchTmpDataWeldMetal') ?>", // Adjust route if needed
            type: "GET",
            dataType: "json",
            success: function(response) {
                $("#weldMetalQR").val(response.tmpQR);
                $("#rfidData").val(response.tmpRFID);
            },
            error: function(xhr, status, error) {
                console.error("Error fetching data:", error);
            }
        });
    }

    // Fetch data every 1 second
    setInterval(fetchTmpData, 1000);

    // Handle Reset Button Click
    $("#resetBtn").on("click", function() {
        $.ajax({
            url: "<?= base_url('record/resetTmpDataWeldMetal') ?>", // Adjust route if needed
            type: "POST",
            dataType: "json",
            success: function(response) {
                if (response.status === "success") {
                    $("#qrData").val(""); // Clear input fields
                    $("#rfidData").val("");
                    console.log("Data reset successfully");
                }
            },
            error: function(xhr, status, error) {
                console.error("Error resetting data:", error);
            }
        });
    });
</script>

<script>
    $(document).ready(function() {
        $("#createWeldMetalForm").submit(function(event) {
            event.preventDefault();

            var formData = $(this).serialize();
            console.log("Submitting data:", formData); // Debugging

            $.ajax({
                url: "<?= base_url('record/insertWeldMetal') ?>",
                type: "POST",
                data: formData,
                dataType: "json",
                success: function(response) {
                    if (response.status === "success") {
                        Swal.fire({
                            title: 'Sucess!',
                            text: response.message,
                            icon: 'success'
                        });
                        $("#createProjectForm")[0].reset();
                    } else {
                        Swal.fire({
                            title: 'Failed!',
                            text: response.message,
                            icon: 'warning'
                        });
                    }
                },
            });

            $.ajax({
                url: "<?= base_url('record/resetTmpDataWeldMetal') ?>", // Adjust route if needed
                type: "POST",
                dataType: "json",
                success: function(response) {
                    if (response.status === "success") {
                        // Clear QR and RFID fields
                        $("#weldMetalQR").val("");
                        $("#rfidData").val("");

                        // Clear other input fields on front-end only (not in DB)
                        $("input[type='text']").not("#qrData, #rfidData").val("");
                        $("textarea").val("");
                    }
                },
                error: function(xhr, status, error) {
                }
            });
        });

    });
</script>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


<?= $this->endSection() ?>