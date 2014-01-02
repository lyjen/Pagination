<?php

	class Pagination{
	
		var $data;
	
		public function paginate($values,$per_page){ 
	
			$total_pages = count($values);
			
			if(isset($_GET['page'])){
				$current_page = $_GET['page'];
			}
			else{
				$current_page = 1;
			}
			
			$counts = ceil($total_pages/$per_page);
			$param1 = ($current_page-1)*$per_page;
			$this->data = array_slice($values,$param1,$per_page);
			
			for($x=1;$x<=$counts;$x++){
				$numbers[] = $x;
			}
			return $numbers;
		}
		
		public function viewResults(){
			$resultValues = $this->data;
			return $resultValues;
		}
	}

?>