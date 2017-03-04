<div class="container">
	<H1>Add New Topic Page will be developed here.</H1>	
	<div id="DataInput"></div>
		<form>
			<p>Topic*</p>
			<input type="text" name=fname>
			<br><br>

			<p>Post Content*</p>
			<input type="textarea" name="description">
			<br><br>

			<form action="upload.php" method="post" enctype="multipart/form-data">
    		Select image to upload:
    		<input type="file" name="fileToUpload" id="fileToUpload">
		</form>
		<br>

	<div id="Submission">
		<form>
			<input type="button" onclick="alert('Successfully added Post')" value="Submit">
		</form>
		<br>
	</div>

	<div id="Guide">
		<p>There are required fields in this form marked *</p>
	</div>
</div>