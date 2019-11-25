<?php 

class Cafe extends CI_CONTROLLER{

	private $ip_address;
	function __construct(){
		parent::__construct();
		$this->ip_address = '140.82.118.4';
		$this->load->model('Cafe_model');
	}

	function index(){
		$cafes = $this->Cafe_model->get(array('city' => $this->get_city()))->result();
		$other_cafes = $this->Cafe_model->get_all(array('city !=' => $this->get_city()));
		return $this->load->view('cafe-page/index', array(
			'cafes' => $cafes, 
			'city_name' => $this->get_city(),
			'other_cafes' => $other_cafes
		));
	}		

	function get_city(){
		$ch = curl_init("https://ipinfo.io/$this->ip_address/geo");
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		$response = curl_exec($ch);
		curl_close($ch);

		$decode = json_decode($response);
		$replace = str_replace('İ', 'i', $decode->city);
		return strtolower($replace);
	}

}