<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tentang extends MY_Controller {
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
		$this->data['function'] = str_replace("_"," ", 'Tentang');

		$array = array('content_category' => 15, 'content_parent' => 0);
        $this->db->where($array);
        $tentang = $this->db->get('content')->result();
        $this->data['tentang'] = $tentang;
        foreach ($tentang as $key => $value) {
            $value->subtitle  = 'Siapa Kami';
        }

		$this->data['content'] = $this->parser->parse(template.'/about.html', $this->data, true);
		$this->parser->parse(template.'/index_frontend.html', $this->data, false);
	}
    /*****************************************************************************/
}

/* End of file Contoh.php */
/* Location: ./application/controllers/Contoh.php */