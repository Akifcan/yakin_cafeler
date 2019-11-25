<?php 

class Cafe_model extends CI_MODEL{

	private $table_name;
	function __construct(){
		parent::__construct();
		$this->table_name = 'lists';
	}

	function get_all($not_equal=array()){
		$this->db->select('*');
		$this->db->from($this->table_name);
		$this->db->where($not_equal);
		return $this->db->get()->result();
	}

	function get($where){
		$this->db->select('*');
		$this->db->from($this->table_name);
		if($where){
			$this->db->where($where);
		}
		return $this->db->get();
	}


}