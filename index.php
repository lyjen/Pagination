<?php 
	include 'pagination.php'; 
	include 'employee_process.php';
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<title>Simple Pagination - OOP</title>
</head>
<body>
	<div id="wrapper">
		<div id="employee_list">
			<h1>Employee Lists</h1>
			<?php
				$employee = new Employee();	
				$page = new Pagination;
				
				$showEmployee = $employee->viewEmployee();
				$numbers = $page->paginate($showEmployee,5);
				$data = $page->viewResults();
				
				foreach($data as $display){
					echo "<p>".$display['emp_name']."</p>";
				}
				foreach($numbers as $num){
					echo "<a href='index.php?page=".$num."'>".$num."</a>";
				}
			?>
			<p>Simple Pagination | OOP Approach</p>
			<p>FB: /lyjen | Twitter: &copy;love_lyjen</p>
		</div>
	</div>
</body>
</html>