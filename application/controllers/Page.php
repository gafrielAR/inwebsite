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
		$this->data['breadcrum'] = $this->parser->parse(template.'/breadcrumb.html', $this->data, true);
		// $this->data['menu'] = $this->parser->parse('frontend/parsial/menu.html', $this->data, true);
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
	function tentang()
    {
		$this->data['function'] = str_replace("_"," ", __FUNCTION__);
		$this->data['content'] = $this->parser->parse(template.'/about.html', $this->data, true);
		$this->parser->parse(template.'/index_frontend.html', $this->data, false);
	}
    /*****************************************************************************/
	function hubungi()
    {
		$this->data['function'] = str_replace("_"," ", __FUNCTION__);
		$this->data['content'] = $this->parser->parse(template.'/contact.html', $this->data, true);
		$this->parser->parse(template.'/index_frontend.html', $this->data, false);
	}
    /*****************************************************************************/
	function tim()
    {
		$this->data['function'] = str_replace("_"," ", __FUNCTION__);
		$this->data['content'] = $this->parser->parse(template.'/team.html', $this->data, true);
		$this->parser->parse(template.'/index_frontend.html', $this->data, false);
	}
    /*****************************************************************************/
	function layanan()
    {
		$this->data['function'] = str_replace("_"," ", __FUNCTION__);
		$this->data['content'] = $this->parser->parse(template.'/services.html', $this->data, true);
		$this->parser->parse(template.'/index_frontend.html', $this->data, false);
	}
    /*****************************************************************************/
	function portofolio()
    {
		$this->data['function'] = str_replace("_"," ", __FUNCTION__);
		// opn(__FUNCTION__);exit;
		$arg = func_get_args();
		
		if (isset($arg[0])) {
			if($arg[0] == 'detail'){
				$this->data['content'] = $this->parser->parse(template.'/portfolio-details.html', $this->data, true);
			} else {
				redirect(base.'/page/portofolio');
			}
		} else {
			$this->data['content'] = $this->parser->parse(template.'/portfolio.html', $this->data, true);
		}
		
		$this->parser->parse(template.'/index_frontend.html', $this->data, false);
	}
    /*****************************************************************************/
	function blog()
    {
		$this->data['function'] = str_replace("_"," ", __FUNCTION__);
		$arg = func_get_args();
		
		if (isset($arg[0])) {
			if($arg[0] == 'detail'){
				$this->data['content'] = $this->parser->parse(template.'/blog-single.html', $this->data, true);
			} else {
				redirect(base.'/page/blog');
			}
		} else {
			$this->data['content'] = $this->parser->parse(template.'/blog.html', $this->data, true);
		}
		$this->parser->parse(template.'/index_frontend.html', $this->data, false);
	}
    /*****************************************************************************/

}

/* End of file Contoh.php */
/* Location: ./application/controllers/Contoh.php */