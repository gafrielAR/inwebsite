<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Portfolio extends MY_Controller {
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
	}
    /*****************************************************************************/
    /*****************************************************************************/
	function index()
    {
		$this->data['function'] = str_replace("_"," ", 'Portfolio');
		// opn(__FUNCTION__);exit;
        $portfolio_cat[] = $this->db->get('portfolio')->result();
        foreach($portfolio_cat as $key => $value){
            $portfolio_cat = $value;
        }
        $this->data['portfolio_cat'] = $portfolio_cat ;

        // $this->db->where('produk.kategori_produk_id IN ('.$implode.')');
        $this->db->join('portfolio_image','portfolio.portfolio_id = portfolio_image.portfolio_id','Left');
        $this->db->group_by('portfolio_category');
        $portfolio_all[] = $this->db->get('portfolio')->result();
        // opn($portfolio);exit();

        foreach($portfolio_all as $key => $value){
                $portfolio_all = $value;
            }
            // opn($portfolio_all);exit();

        $this->data['portfolio_all'] = $portfolio_all ;
            
        $this->data['content'] = $this->parser->parse(template.'/portfolio.html', $this->data, true);
		$this->parser->parse(template.'/index_frontend.html', $this->data, false);
	}
    /*****************************************************************************/
    function detail() 
    {
        $this->data['function'] = str_replace("_"," ", 'Detail');
        $arg = func_get_args();
		
        $this->db->where('portfolio_id', $arg[0]);
        $detil = $this->db->get('portfolio')->result();
        // opn($detil);exit();

        if($detil){
            $this->db->where('portfolio_id', $arg[0]);
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
		$this->parser->parse(template.'/index_frontend.html', $this->data, false);
    }
}

/* End of file Contoh.php */
/* Location: ./application/controllers/Contoh.php */