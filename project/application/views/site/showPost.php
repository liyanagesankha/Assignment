<div class="container">

	<!--MidBody contains the main body of the Forum page-->
	<div id="MidBody">
	
		<!--Description about the Forum-->
		<div id="Description">
			<p>This is the show Post Page. You can add new posts and view existing replies.</p>
		</div>
		
		<!--Contains Forms to Add New Sub Forums and to Search-->
		<div id="AddNew">

			<!--Form to Add New Sub Forum-->
			<div id="AddButton">
			<form action="addNewTopic" method="post">
				<input type="submit" value="Add New Post">
			</form>
			<br>

			<!--Form to Search-->
			<div id="Search">
				<form>
					<input type="text" name=search>
					<input type="submit" value="Search">
				</form>
				<br>
			</div>
		</div>



		<!--Contains Sub Forum List with the number of threads and number of posts-->
		<div id="PostsList">

				<div class="panel-group">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<?php echo $mainPost->title.' <span class="badge">Replies '.$mainPost->no_of_replies.'</span>';?>
							<div class="row">
								<div class="col-sm-2"><?php echo $mainPost->username; ?></div>
								<div class="col-sm-2"><?php echo $mainPost->date; ?></div>
								<div class="col-sm-2"><?php echo $mainPost->time; ?></div>
							</div>	
						</div>
						<div class="panel-body">
							<?php echo $mainPost->message; ?>
						</div>
					</div>

					<?php 
					if($replyPosts){

						foreach ($replyPosts as $row):
					
						if($row->depth > 2){
							$ml = $row->depth * 30;
							echo '<div style="margin-left:'.$ml.'px;" class="panel panel-info">';
						}else{
							echo '<div class="panel panel-success">';
						}

					?>
							<div class="panel-heading">
								<div ><?php echo $row->value->title.' <span class="badge">Replies '.$row->value->no_of_replies.'</span>'; ?></div>
								<div class="row">
									<div class="col-sm-2"><?php echo $row->value->username; ?></div>
									<div class="col-sm-2"><?php echo $row->value->date; ?></div>
									<div class="col-sm-2"><?php echo $row->value->time; ?></div>
								</div>
							</div>
							<div class="panel-body">
								<?php echo $row->value->message; ?>
							</div>
						</div>
					<?php
						endforeach;
					}else{
						echo "No Replies Yet!";
					}
					?>
				</div>
		</div>

		<!--Contains a Quick Navigation panel through the forums-->
		<div id="QuickNavigation"></div>
	</div>
</div>