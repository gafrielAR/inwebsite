<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Page extends MY_Controller {
    /*****************************************************************************/
	public function __construct()
	{
		parent::__construct();
		//opn($this->data);die();
		$this->data['header'] = $this->parser->parse(template.'/header.html', $this->data, true);
		$this->data['menu'] = $this->parser->parse(template.'/menu.html', $this->data, true);
		// $this->data['menu'] = $this->parser->parse('frontend/parsial/menu.html', $this->data, true);
		// $this->data['breadcrum'] = $this->parser->parse('frontend/parsial/breadcrum.html', $this->data, true);
		// $this->data['body'] = $this->parser->parse('frontend/parsial/body.html', $this->data, true);
		$this->data['footer'] = $this->parser->parse(template.'/footer.html', $this->data, true);
	}
    /*****************************************************************************/
    /*****************************************************************************/
	function index()
    {
		$this->data['content'] = $this->parser->parse(template.'/home.html', $this->data, true);
		$this->parser->parse(template.'/index_frontend.html', $this->data, false);
	}
    /*****************************************************************************/

}

/* End of file Contoh.php */
/* Location: ./application/controllers/Contoh.php */