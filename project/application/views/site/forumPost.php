<div class="container">

	<!--MidBody contains the main body of the Forum page-->
	<div id="MidBody">
	
		<!--Description about the Forum-->
		<div id="Description">
			<p>This is the Forum Post Page. You can add new topics and go to existing topics.</p>
		</div>
		
		<!--Contains Forms to Add New Sub Forums and to Search-->
		<div id="AddNew">

			<!--Form to Add New Sub Forum-->
			<div id="AddButton">
			<form action="addNewTopic" method="post">
				<input type="submit" value="Add New Topic">
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
					<th colspan="2">Topic</th>
					<th># Replies</th>
					<th># Views</th>
				</tr>
				<tr>
					<td><img src="images/accomodation.png"></td>
					<td>Topic 1</td>
					<td>10</td>
					<td>10</td>
				</tr>
				<tr>
					<td><img src="images/dining.png"</td>
					<td>Topic 2</td>
					<td>10</td>
					<td>10</td>
				</tr>
			</table>
		</div>

		<!--Contains a Quick Navigation panel through the forums-->
		<div id="QuickNavigation"></div>
	</div>
</div>