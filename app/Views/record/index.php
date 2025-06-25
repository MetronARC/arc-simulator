<?= $this->extend('template3/index') ?>
<?= $this->section('page-content') ?>

<h1>Data Records</h1>

<div class="date"></div>

<div class="recent-orders">
    <div style="display: flex; align-items: center;">
        <h2 style="flex: 1;">Projects</h2>
        <form action="<?= site_url('record/createProject') ?>" method="POST" style="background: transparent; border: none; padding: 0;">
            <input type="hidden" name="postValue" value="Project">
            <button type="submit" class="btn btn-primary" style="display: flex; align-items: center; gap: 5px; background: transparent; border: none; color: #007bff; font-size: 14px; cursor: pointer;">
                Add Records <i class="fas fa-arrow-right"></i>
            </button>
        </form>
    </div>

    <table>
        <thead>
            <tr>
                <th>Project Number</th>
                <th>Project Name</th>
                <th>Creation Date</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($jobRecords as $jobRecord): ?>
                <tr>
                    <td><?= esc($jobRecord['jobNumber']) ?></td>
                    <td><?= esc($jobRecord['jobName']) ?></td>
                    <td><?= esc($jobRecord['jobCreationDate']) ?></td>
                    <td>
                        <div style="display: flex; gap: 5px;">
                            <a href="" class="btn btn-warning">View</a>
                            <a href="" class="btn btn-warning">Edit</a>
                            <a href="" class="btn btn-danger">Delete</a>
                        </div>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<!-- FontAwesome for the right arrow icon -->
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>


<div class="recent-orders">
    <div style="display: flex; align-items: center;">
        <h2 style="flex: 1;">Weld Metals</h2>
        <form action="<?= site_url('record/createWeldMetal') ?>" method="POST" style="background: transparent; border: none; padding: 0;">
            <input type="hidden" name="postValue" value="Weld Metal">
            <button type="submit" class="btn btn-primary" style="display: flex; align-items: center; gap: 5px; background: transparent; border: none; color: #007bff; font-size: 14px; cursor: pointer;">
                Add Records <i class="fas fa-arrow-right"></i>
            </button>
        </form>
    </div>
    <table>
        <thead>
            <tr>
                <th>Weld Metal Number</th>
                <th>Weld Metal Name</th>
                <th>Weld Metal Cert. No</th>
                <th>Creation Date</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($weldMetalRecords as $weldMetalRecord): ?>
                <tr>
                    <td><?= esc($weldMetalRecord['weldMetalNumber']) ?></td>
                    <td><?= esc($weldMetalRecord['weldMetalName']) ?></td>
                    <td><?= esc($weldMetalRecord['weldMetalCertNumber']) ?></td>
                    <td><?= esc($weldMetalRecord['weldMetalCreationDate']) ?></td>
                    <td>
                        <div style="display: flex; gap: 5px;">
                            <!-- <a href="<?= site_url('record/edit/' . $weldMetalRecord['weldMetalNumber']) ?>" class="btn btn-warning">Edit</a> -->
                            <a href="" class="btn btn-warning">View</a>
                            <a href="" class="btn btn-warning">Edit</a>
                            <!-- <a href="<?= site_url('record/delete/' . $weldMetalRecord['weldMetalNumber']) ?>" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this record?')">Delete</a> -->
                            <a href="" class="btn btn-danger">Delete</a>
                        </div>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>

    </table>
</div>



<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<?= $this->endSection() ?>