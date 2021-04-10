<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Layanan extends MY_Controller {
    /*****************************************************************************/
	public function __construct()
	{
		parent::__construct();
		//opn($this->data);die();
		$this->data['header'] = $this->parser->parse(template.'/header.html', $this->data, true);
		$this->data['menu'] = $this->parser->parse(template.'/menu.html', $this->data, true);
		$this->data['breadcrum'] = $this->parser->parse(template.'/breadcrumb.html', $this->data, true);
		$this->data['sidebar'] = $this->parser->parse(template.'/blog-sidebar.html', $this->data, true);
		// $this->data['body'] = $this->parser->parse('frontend/parsial/body.html', $this->data, true);
		$this->data['footer'] = $this->parser->parse(template.'/footer.html', $this->data, true);
		$this->data['buletin'] = "";

		$this->load->library('session');
		$this->load->helper('text');
	}
    /*****************************************************************************/
    /*****************************************************************************/
	function index()
    {
		$this->data['function'] = str_replace("_"," ", 'Layanan');

        $array = array('content_category' => 16, 'content_parent' => 0);
        $this->db->where($array);
        $service = $this->db->get('content')->result();
        $this->data['service'] = $service;
        
		$this->data['content'] = $this->parser->parse(template.'/services.html', $this->data, true);
		$this->parser->parse(template.'/index_frontend.html', $this->data, false);
	}
    /*****************************************************************************/
	function subscribe()
	{
		// opn(current_url());exit();

		$email	= $this->input->post('email');

		$data	= array(
			'subscribe_email'		=> $email
		);

		$insert = $this->db->insert('subscribe', $data);

		redirect($_SERVER['HTTP_REFERER']);

	}
    /*****************************************************************************/
	function landing()
	{
		$this->data['content'] = $this->parser->parse(template.'/landing.html', $this->data, true);
		$this->parser->parse(template.'/index_frontend.html', $this->data, false);
	}
    /*****************************************************************************/

}

/* End of file Contoh.php */
/* Location: ./application/controllers/Contoh.php */