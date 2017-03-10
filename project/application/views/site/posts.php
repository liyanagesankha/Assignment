<div class="container">

	<!--MidBody contains the main body of the Forum page-->
	<div id="MidBody">
	
		<!--Description about the Forum-->
		<div id="Description">
			<p>This is the Post Page. You can add new posts and view the existing main posts.</p>
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
			<table>
				
				<?php 
				if($post){
				echo "<tr>
					<th>Posts</th>
					<th># Replies</th>
					<th># Views</th>
				</tr>";
				
				foreach ($post as $row):
				?>
				<tr height="50">
					<td width="500"><?php echo '<a href="http://localhost/assignment/trunk/project/index.php/showPost/LoadShowPostPage/'.$row->post_id.'">'.$row->title.'</a>'; ?></td>
					<td width="200"><?php echo $row->no_of_replies; ?></td>
					<td width="500"><?php echo $row->no_of_views; ?></td>
				</tr>
				<?php
				endforeach;
				}else{ echo "No Posts Yet!"; }
				?>
			</table>
		</div>

		<!--Contains a Quick Navigation panel through the forums-->
		<div id="QuickNavigation"></div>
	</div>
</div>