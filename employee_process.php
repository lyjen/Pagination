<?php

	class Employee{
	
		public $connection;
		
		public function __construct(){
			$this->connection = new mysqli('localhost','root','','sample');
		}
	
		public function viewEmployee(){
		
			$results = array();
			$show = $this->connection->query("SELECT * FROM employees");
			while($getEmployee = $show->fetch_assoc()){
				$results[] = $getEmployee;
			}
			return $results;
		}
	}
?>