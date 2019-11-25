		<h1 class="lead">
			<?php if($my_city){ ?>
			<h1 class="lead">Cafes at <b><?= ucfirst($city_name) ?></b></h1>
			<?php } else { ?>
				<h1 class="lead">Other cafes</h1>
			<?php } ?>
		</h1>
		<hr class="bg-primary">
		<div class="row">
			<?php foreach($cafes as $cafe): ?>
				<div class="card col-md-3">
					<img src="<?= $cafe->image_url ?>" width="150" height="150" class="card-img-top" alt="<?= $cafe->name ?>">
					<div class="card-body">
						<h5 class="card-title"><?= ucfirst($cafe->name) ?></h5>
						<p class="card-text"><?= ucfirst($cafe->city) ?></p>
					</div>
				</div>
			<?php endforeach; ?>
		</div>
