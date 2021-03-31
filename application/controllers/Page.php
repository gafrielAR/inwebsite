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
				$this->db->where('portfolio_id', $arg[1] );
				$detil = $this->db->join('portfolio_category','portfolio.portfolio_category = portfolio_category.portfolio_category_id','Left');
				if($detil){
					$this->db->where('portfolio_id', $arg[1]);
					$detil_info = $this->db->get('portfolio')->result();
					foreach($detil_info as $key => $value){
						$this->db->where('portfolio_id', $value->portfolio_id);
						$value->image = $this->db->get('portfolio_image')->result();
						foreach($value->image as $k => $v){
									$gambar[] 		=	$v->portfolio_image_name;
								}							
						}
						$this->data['detil_info'] = $detil_info;
					
					}else{
						redirect(base.'/page/portfolio');
					}
					$this->data['content'] = $this->parser->parse(template.'/portfolio-details.html', $this->data, true);
			}
		} else {
			
			$portfolio_cat[] = $this->db->get('portfolio_category')->result();
			foreach($portfolio_cat as $key => $value){
				$portfolio_cat = $value;
			}
			$this->data['portfolio_cat'] = $portfolio_cat ;
			
			// $this->db->where('produk.kategori_produk_id IN ('.$implode.')');
			$this->db->join('portfolio_category','portfolio.portfolio_category = portfolio_category.portfolio_category_id','Left');
			$this->db->join('portfolio_image','portfolio.portfolio_id = portfolio_image.portfolio_id','Left');
			$this->db->group_by('portfolio_category');
			$portfolio_all[] = $this->db->get('portfolio')->result();
			foreach($portfolio_all as $key => $value){
					$portfolio_all = $value;
				}
				// opn($portfolio_all);exit();
				$this->data['portfolio_all'] = $portfolio_all ;
				
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