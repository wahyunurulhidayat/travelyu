<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
* 
*/
class User extends CI_Controller
{
	public function __construct(){
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('Datane');
	}

	public function g_melbu()
	{
		$this->load->view('melbu');
	}

	public function add_input()
	{
		$username = $this->input->post('username');
		$fullname = $this->input->post('fullname');
		$password = $this->input->post('password');

		 $data = array('username' =>$username,
		 'fullname' =>$fullname,
		 'password' =>$password,
		 'level' => 1 );

		 $this->Datane->submit($data);
		 $this->load->view('welcome_message');
	}

}