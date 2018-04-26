<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
* 
*/
class Datane extends CI_Model
{
	
	public function __construct()
	{
		$this->load->database();
	}

	public function submit($data)
	{
		$this->db->insert('user', $data);
	}
}