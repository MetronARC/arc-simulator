<?= $this->extend('template2/index') ?>
<?= $this->section('page-content') ?>

<h1>Dashboard</h1>

<div class="date"></div>

<div class="insights">
    <?php foreach ($areas as $area): ?>
        <div class="sales">
            <span class="material-symbols-outlined">zoom_in_map</span>
            <a href="<?= base_url('monitoring/activeMachine/' . $area['name']); ?>">
                <div class="middle">
                    <div class="left">
                        <h3><?= $area['name'] ?></h3>
                        <div class="machine-states" id="machine-states-<?= $area['name'] ?>">
                            <?php foreach ($area['machines'] as $machine): ?>
                                <span class="material-symbols-outlined" style="background: <?= $machine['State'] === 'Active' ? 'green' : ($machine['State'] === 'IDLE' ? 'yellow' : 'red') ?>; width: 30px; height: 30px; margin-right: 15px"></span>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
            </a>
        </div>
    <?php endforeach; ?>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    function fetchMachineStates(areaName) {
        $.ajax({
            url: '<?= base_url('monitoring/getMachineState/') ?>' + areaName,
            method: 'GET',
            success: function(data) {
                const machineStatesContainer = $('#machine-states-' + areaName);
                machineStatesContainer.empty(); // Clear existing spans

                data.forEach(function(machine) {
                    const stateColor = machine.State === 'ON' ? 'green' : (machine.State === 'IDLE' ? 'yellow' : 'red');
                    machineStatesContainer.append('<span class="material-symbols-outlined" style="background: ' + stateColor + '; width: 30px; height: 30px; margin-right: 15px"></span>');
                });
            }
        });
    }

    // Call fetchMachineStates every second for each area
    setInterval(function() {
        <?php foreach ($areas as $area): ?>
            fetchMachineStates('<?= $area['name'] ?>');
        <?php endforeach; ?>
    }, 1000);
</script>


<!-- END OF INSIGHTS -->

<?= $this->endSection() ?>