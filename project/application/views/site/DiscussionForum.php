<div class="container">

		<!--MainBody, contains TopBody, MidBody, BotBody-->
		<div id="MainBody">

			<!--PageHeader contains LogoImage, CompanyName, LoggedUser, and a welcome message-->
			<div id="TopBody">

				<div id="PageHeading" class="centeredText">
					<hr/>
					<h2>Welcome to Forum</h2>
				</div>
				<div id="PageDescription" class="centeredText">
					<p>This is the forum where you can discuss all aspects about our company.
						Please select the suitable subforum and post your queires.</p>
					<hr/>
				</div>
			</div>

			<!-- MidBody contains the main body -->
			<div id="MidBody" class="centeredText">

				<div id="Breadcrumb">
				<!-- navigation breadcrumb -->
				<p>Home > Forum</p>
				</div>

				<div id="AddSearchForum" class="divTable">
					<div class="divTableRow">
						<div id="AddForum" class="divTableData">
							<form action="AddNewSubForum.php" method="get">
								<input type="submit" value="Add New Sub Forum">
							</form>
						</div>

						<div id="Search" class="divTableData">
							<form>
								<input type="text">
								<input type="submit" value="Search">
							</form>
						</div>
					</div>

				</div>

				<div id="ForumTable">
					<hr/>

					<table>
						<tr>
							<th colspan="2">Sub Forum</th>
							<th class="ThreadsAndPosts">#Threads</th>
							<th class="ThreadsAndPosts">#Posts</th>
						</tr>
						<tr>
							<td class="Forumlogo">
								<img src="<?php echo base_url('/branding/images/logo.png'); ?>" width="40" height="40">
							</td>
							<td class="leftAlignedText">Services</td>
							<td class="ThreadsAndPosts">5</td>
							<td class="ThreadsAndPosts">42</td>
						</tr>
						<tr>
							<td class="Forumlogo">
								<img src="<?php echo base_url('/branding/images/logo.png'); ?>" width="40" height="40">
							</td>
							<td class="leftAlignedText">Rooms</td>
							<td class="ThreadsAndPosts">5</td>
							<td class="ThreadsAndPosts">42</td>
						</tr>
						<tr>
							<td class="Forumlogo">
								<img src="<?php echo base_url('/branding/images/logo.png'); ?>" width="40" height="40">
							</td>
							<td class="leftAlignedText">Foods</td>
							<td class="ThreadsAndPosts">5</td>
							<td class="ThreadsAndPosts">42</td>
						</tr>
					</table>
				</div>
				<div id="QuickNavigation">
					<p>Quick Navigation</p>
					<form>
						<input list="sub forums" name="sub forum">
						<datalist id="sub forums">
						<option value="Services">
						<option value="Rooms">
						<option value="Food">
						</datalist>
						<input type="submit" value="Submit">
					</form>
				</div>
			</div>
		</div>
</div>

