<?= $this->extend('template/index') ?>
<?= $this->section('page-content') ?>

<h1>Dashboard</h1>

<div class="date"></div>

<div class="insights">
    <?php foreach ($machines as $machine): ?>
        <div class="sales machine-card" data-machine-id="<?= $machine['MachineID']; ?>">
            <span class="material-symbols-outlined">zoom_in_map</span>
            <div class="middle">
                <div class="left">
                    <h3>Latest Arc On: <?= $machine['lastBeat']; ?></h3>
                    <h1><?= $machine['MachineID']; ?></h1>
                </div>
                <div class="progress">
                    <a><img src="<?= base_url(); ?>img/<?= $machine['State'] === 'OFF' ? 'machineInactive.png' : ($machine['State'] === 'IDLE' ? 'machineIDLE.png' : 'machineActive.png'); ?>" alt="Machine State"></a>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>

<!-- Custom Modal -->
<div id="customModal" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h2>Machine Details</h2>
            <span class="close-modal">&times;</span>
        </div>
        <div class="modal-body">
            <div class="modal-grid">
                <div class="details-section">
                    <div class="detail-item">
                        <label>Machine ID:</label>
                        <span id="modalMachineId"></span>
                    </div>
                    <div class="detail-item">
                        <label>Area:</label>
                        <span id="modalArea"></span>
                    </div>
                    <div class="detail-item">
                        <label>Welder:</label>
                        <span id="modalWelder"></span>
                    </div>
                </div>
                <div class="image-section">
                    <img id="modalWelderImage" src="" alt="Welder Image" 
                         onerror="this.onerror=null; this.src='<?= base_url('img/default-user.png'); ?>'">
                </div>
            </div>
        </div>
    </div>
</div>

<style>
/* Card Styles */
.machine-card {
    cursor: pointer;
    transition: transform 0.2s;
}

.machine-card:hover {
    transform: scale(1.02);
}

/* Modal Styles */
.modal {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
    z-index: 1000;
}

.modal-content {
    position: relative;
    background-color: #fff;
    margin: 5% auto;
    width: 90%;
    max-width: 600px;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    animation: modalSlideIn 0.3s ease-out;
}

@keyframes modalSlideIn {
    from {
        transform: translateY(-100px);
        opacity: 0;
    }
    to {
        transform: translateY(0);
        opacity: 1;
    }
}

.modal-header {
    padding: 20px;
    border-bottom: 1px solid #eee;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.modal-header h2 {
    margin: 0;
    color: #333;
    font-size: 1.5rem;
}

.close-modal {
    font-size: 28px;
    font-weight: bold;
    color: #666;
    cursor: pointer;
    transition: color 0.2s;
}

.close-modal:hover {
    color: #333;
}

.modal-body {
    padding: 20px;
}

.modal-grid {
    display: grid;
    grid-template-columns: 2fr 1fr;
    gap: 20px;
}

.details-section {
    padding-right: 20px;
}

.detail-item {
    margin-bottom: 15px;
}

.detail-item label {
    font-weight: bold;
    color: #666;
    display: block;
    margin-bottom: 5px;
}

.detail-item span {
    color: #333;
    font-size: 1.1em;
}

.image-section {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 15px;
    background-color: #f8f9fa;
    border-radius: 8px;
    min-height: 200px;
}

.image-section img {
    width: 100%;
    max-width: 200px;
    height: auto;
    border-radius: 8px;
    object-fit: contain;
    aspect-ratio: 1;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

@media (max-width: 768px) {
    .modal-grid {
        grid-template-columns: 1fr;
    }
    
    .details-section {
        padding-right: 0;
    }
}
</style>

<script>
    function updateMachineState() {
        $.ajax({
            url: "<?= base_url('monitoring/getMachineState/' . $areaName); ?>",
            method: "GET",
            dataType: "json",
            success: function(data) {
                $('.sales').each(function(index, element) {
                    var machine = data[index];
                    $(element).find('h3').text("Latest Arc On: " + machine.lastBeat);
                    $(element).find('h1').text(machine.MachineID);
                    var stateImage = machine.State === 'OFF' ? 'machineInactive.png' : (machine.State === 'IDLE' ? 'machineIDLE.png' : 'machineActive.png');
                    $(element).find('img').attr('src', '<?= base_url(); ?>img/' + stateImage);
                });
            }
        });
    }

    setInterval(updateMachineState, 1000);

    // Modal functionality
    const modal = document.getElementById('customModal');
    const closeBtn = document.querySelector('.close-modal');

    // Close modal when clicking the close button
    closeBtn.onclick = function() {
        modal.style.display = "none";
    }

    // Close modal when clicking outside
    window.onclick = function(event) {
        if (event.target === modal) {
            modal.style.display = "none";
        }
    }

    // Handle machine card click
    $('.machine-card').on('click', function() {
        const machineId = $(this).data('machine-id');
        
        // Fetch machine details
        $.ajax({
            url: "<?= base_url('monitoring/getMachineDetails/' . $areaName); ?>/" + machineId,
            method: "GET",
            dataType: "json",
            success: function(data) {
                // Update modal content
                document.getElementById('modalMachineId').textContent = data.MachineID || 'N/A';
                document.getElementById('modalArea').textContent = data.Area || 'N/A';
                document.getElementById('modalWelder').textContent = data.Name || 'N/A';
                
                // Handle image URL
                const welderImage = document.getElementById('modalWelderImage');
                if (data['user-image']) {
                    welderImage.src = data['user-image'];
                } else {
                    welderImage.src = '<?= base_url('img/default-user.png'); ?>';
                }
                
                // Show the modal
                modal.style.display = "block";
            },
            error: function() {
                alert('Error fetching machine details. Please try again.');
            }
        });
    });

    // Add escape key support to close modal
    document.addEventListener('keydown', function(event) {
        if (event.key === 'Escape' && modal.style.display === "block") {
            modal.style.display = "none";
        }
    });
</script>

<?= $this->endSection() ?>