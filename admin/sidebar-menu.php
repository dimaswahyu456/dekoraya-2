	<!-- sidebar menu start -->
	<ul class="sidebar-menu">
		<li class="header">MAIN MENU</li>

		<?php
		// fungsi untuk pengecekan menu aktif
		// jika menu home dipilih, menu home aktif
		if ($_GET["module"] == "home") { ?>
			<li class="active">
				<a href="?module=home"><i class="fa fa-home"></i> Home </a>
			</li>
		<?php
		}
		// jika tidak, menu home tidak aktif
		else { ?>
			<li>
				<a href="?module=home"><i class="fa fa-home"></i> Home </a>
			</li>
		<?php
		}

		// jika menu about dipilih, menu about aktif
		if ($_GET["module"] == "about") { ?>
			<li class="active">
				<a href="?module=about"><i class="fa fa-leaf"></i> About </a>
			</li>
		<?php
		}
		// jika tidak, menu about tidak aktif
		else { ?>
			<li>
				<a href="?module=about"><i class="fa fa-leaf"></i> About </a>
			</li>
		<?php
		}

		// jika menu service dipilih, menu service aktif
		if ($_GET["module"] == "service") { ?>
			<li class="active">
				<a href="?module=service"><i class="fa fa-check-square-o"></i> Service </a>
			</li>
		<?php
		}
		// jika tidak, menu service tidak aktif
		else { ?>
			<li>
				<a href="?module=service"><i class="fa fa-check-square-o"></i> Service </a>
			</li>
		<?php
		}

		// jika menu portfolio dipilih, menu portfolio aktif
		if ($_GET["module"] == "portfolio" || $_GET["module"] == "form_portfolio") { ?>
			<li class="active">
				<a href="?module=portfolio"><i class="fa fa-desktop"></i> Portfolio</a>
			</li>
		<?php
		}
		// jika tidak, menu portfolio tidak aktif
		else { ?>
			<li>
				<a href="?module=portfolio"><i class="fa fa-desktop"></i> Portfolio</a>
			</li>
		<?php
		}

		// jika menu message dipilih, menu message aktif
		if ($_GET["module"] == "message" || $_GET["module"] == "form_message") { ?>
			<li class="active">
				<a href="?module=message"><i class="fa fa-envelope"></i> Message </a>
			</li>
		<?php
		}
		// jika tidak, menu message tidak aktif
		else { ?>
			<li>
				<a href="?module=message"><i class="fa fa-envelope"></i> Message </a>
			</li>
		<?php
		}
		?>
	</ul>
	<!--sidebar menu end-->