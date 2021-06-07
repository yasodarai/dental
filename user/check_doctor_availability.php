<?php
require_once('include/config.php');

if(isset($_POST["doctor"]) && isset($_POST["appdate"]) && isset($_POST["apptime"])) 
{
	$doctorid=$_POST['doctor'];
	$appdate=$_POST['appdate'];
	$time=$_POST['apptime'];

	$query1= mysqli_query($con,"select doctorId from appointment where doctorId='$doctorid' and appointmentDate='$appdate' and appointmentTime='$time'");
	if(mysqli_num_rows($query1) > 0)
	{
		echo "<span style='color:red'> Doctor not available on selected date and time .</span>";
		echo "<script>$('#submit').prop('disabled',true);</script>";
	}
	else {
	
		echo "<span style='color:green'> Available </span>";
		echo "<script>$('#submit').prop('disabled',false);</script>";
	}
}


