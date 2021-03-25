<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Page extends MY_Controller {
    /*****************************************************************************/
	public function __construct()
	{
		parent::__construct();
		// $this->data['header'] = $this->parser->parse('frontend/header_frontend.html', $this->data, true);
		// $this->data['menu'] = $this->parser->parse('frontend/frontend_home.html', $this->data, true);
		// $this->data['breadcrum'] = $this->parser->parse('frontend/frontend_home.html', $this->data, true);
		// $this->data['body'] = $this->parser->parse('frontend/body_frontend.html', $this->data, true);
		// $this->data['footer'] = $this->parser->parse('frontend/footer_frontend.html', $this->data, true);
	}
    /*****************************************************************************/
    /*****************************************************************************/
	function index()
    {
		// $this->data['content'] = $this->parser->parse('frontend/index.html', $this->data, true);
		$this->parser->parse('frontend/index.html', $this->data, false);
	}
    /*****************************************************************************/

}

/* End of file Contoh.php */
/* Location: ./application/controllers/Contoh.php */