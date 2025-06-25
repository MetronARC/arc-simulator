<div class="right">
    <div class="top">
        <button id="menu-btn">
            <span class="material-symbols-outlined">menu</span>
        </button>
        <div class="theme-toggler">
            <span class="lni lni-sun"></span>
            <span class="fa-regular fa-moon"></span>
        </div>
        <div class="profile">
            <div class="info">
                <p>Hey, <b>Ronstan</b></p>
                <small class="text-muted">Admin</small>
            </div>
            <div class="profile-photo">
                <a href="Machine/Machine.php"><img src="<?= base_url(); ?>img/Logo.png" alt="AdminLogo"></a>
            </div>
        </div>
    </div>
    <div class="recent-updates">
        <h2><br /></h2>
        <form id="generate-charts-form" method="POST" action="<?= base_url('recap/allCharts') ?>">
            <input type="hidden" name="date" id="form-date-input">
            <input type="hidden" name="area" id="form-area-input">
            <a id="fetch-all-data" href="#" onclick="submitGenerateCharts(event)">
                <div class="updates" id="welder-updates" style="background: #7380ec;">
                    <h2 style="color: white; font-size: 1.2rem;">Generate All Machine Charts</h2>
                </div>
            </a>
        </form>

        <script>
            function submitGenerateCharts(event) {
                event.preventDefault();
                const dateInput = document.getElementById('date-input').value;
                const areaInput = document.getElementById('area-dropdown').value;
                
                if (!dateInput || !areaInput) {
                    Swal.fire({
                        title: 'Error!',
                        text: 'Please select both Date and Area',
                        icon: 'error'
                    });
                    return;
                }
                
                document.getElementById('form-date-input').value = dateInput;
                document.getElementById('form-area-input').value = areaInput;
                document.getElementById('generate-charts-form').submit();
            }
        </script>

    </div>
</div>