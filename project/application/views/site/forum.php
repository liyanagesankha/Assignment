<div class="container">

	<!--MidBody contains the main body of the Forum page-->
	<div id="MidBody">
	
		<!--Description about the Forum-->
		<div id="Description">
			<p>This is the Forum Page. You can add new sub forums and go to existing sub forums.</p>
		</div>
		
		<!--Contains Forms to Add New Sub Forums and to Search-->
		<div id="AddNew">

			<!--Form to Add New Sub Forum-->
			<div id="AddButton">
			<form action="addNewSubForum" method="post">
				<input type="submit" value="Add New Sub Forum">
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
		<div id="SubForumList">	
			<table>
				<tr>
					<th width="500" colspan="2">Sub Forum</th>
					<th width="200"># Threads</th>
					<th width="500"># Posts</th>
				</tr>

				<?php 
				foreach ($subforums as $row):
				?>
				<tr height="50">
					<td><img src="<?php echo base_url() ?>/../branding/images/<?php echo "subforum_".$row->title ?>.png" width="40"></td>
					<td><?php echo '<a href="http://localhost/assignment/trunk/project/index.php/posts/LoadPostsPage/'.$row->sf_id.'">'; ?> <?php echo $row->title; ?></a></td>
					<td>10</td>
					<td>10</td>
				</tr>
				<?php
				endforeach;
				?>
			</table>
		</div>

		<!--Contains a Quick Navigation panel through the forums-->
		<div id="QuickNavigation"></div>
	</div>
</div>