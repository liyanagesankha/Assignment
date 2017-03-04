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

			<!--Form to Search-->
			<div id="Search">
				<form>
					<input type="text" name=search>
					<input type="submit" value="Search">
				</form>
			</div>
		</div>

		<!--Contains Sub Forum List with the number of threads and number of posts-->
		<div id="SubForumList">
			<table>
				<tr>
					<th colspan="2">Sub Forum</th>
					<th># Threads</th>
					<th># Posts</th>
				</tr>
				<tr>
					<td><img src="images/accomodation.png"></td>
					<td>Accomadation</td>
					<td>10</td>
					<td>10</td>
				</tr>
				<tr>
					<td><img src="images/dining.png"</td>
					<td>Dining</td>
					<td>10</td>
					<td>10</td>
				</tr>
				<tr>
					<td><img src="images/hospitality.png"></td>
					<td>Hospitality</td>
					<td>10</td>
					<td>10</td>
				</tr>
				<tr>
					<td><img src="images/spa.png"></td>
					<td>Spa and Recreation</td>
					<td>10</td>
					<td>10</td>
				</tr>
				<tr>
					<td><img src="images/experience.png"></td>
					<td>Experience</td>
					<td>10</td>
					<td>10</td>
				</tr>
			</table>
		</div>

		<!--Contains a Quick Navigation panel through the forums-->
		<div id="QuickNavigation"></div>
	</div>
</div>