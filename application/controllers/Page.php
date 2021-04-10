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
		$this->data['content'] = $this->parser->parse(template.'/home.html', $this->data, true);
		// content
        // hero
        $array = array('content_category' => 1, 'content_parent' => 0);
        $this->db->where($array);
        $hero = $this->db->get('content')->result();
        $this->data['hero'] = $hero;
        foreach ($hero as $key => $value) {
            $this->db->where('content_parent', $value->content_id);
            $subcontent = $this->db->get('content')->result();
            $subchild = array();
            $subchild_ren = array();
            foreach ($subcontent as $skey => $sub_value) {
                $array_key = array_keys((array)$sub_value) ;
                $array_value = array_values((array)$sub_value);
                foreach ($array_key as $sub_key => $subvaluemenu) {
                    $subchild_ren['ch_'.$subvaluemenu] = $array_value[$sub_key];
                }
                $subchild [] = $subchild_ren;
            }
            $value->child = $subchild;
        }
        // opn($value);exit();

        // values
        $array = array('content_category' => 2, 'content_parent' => 0);
        $this->db->where($array);
        $value = $this->db->get('content')->result();
        $this->data['value'] = $value;
        // opn($value);exit();
        
        // count
        $array = array('content_category' => 3, 'content_parent' => 0);
        $this->db->where($array);
        $count = $this->db->get('content')->result();
        $this->data['count'] = $count;
        // opn($value);exit();

        // features
        $array = array('content_category' => 4, 'content_parent' => 0);
        $this->db->where($array);
        $feature = $this->db->get('content')->result();
        $this->data['feature'] = $feature;
        foreach ($feature as $key => $value) {
            $value->aos_zoom_out = 'zoom-out';
        }

        $array = array('content_category' => 5, 'content_parent' => 0);
        $this->db->where($array);
        $feature_img = $this->db->get('content')->result();
        $this->data['feature_img'] = $feature_img;

		// visi misi
        $array = array('content_category' => 6, 'content_parent' => 0);
        $this->db->where($array);
        $title = $this->db->get('content')->result();
        $this->data['title'] = $title;
        foreach ($title as $key => $value) {
            $this->db->where('content_parent', $value->content_id);
            $subcontent = $this->db->get('content')->result();
            $subchild = array();
            $subchild_ren = array();
            foreach ($subcontent as $skey => $sub_value) {
                $array_key = array_keys((array)$sub_value) ;
                $array_value = array_values((array)$sub_value);
                foreach ($array_key as $sub_key => $subvaluemenu) {
                    $subchild_ren['ch_'.$subvaluemenu] = $array_value[$sub_key];
                }
                $subchild [] = $subchild_ren;
            }
            $value->child = $subchild;
        }
        // opn($value);exit();

        $array = array('content_category' => 9, 'content_parent' => 0);
        $this->db->where($array);
        $vismisimg = $this->db->get('content')->result();
        $this->data['vismisimg'] = $vismisimg;

		// mengapa memilih kami
        $array = array('content_category' => 10, 'content_parent' => 0);
        $this->db->where($array);
        $pilih = $this->db->get('content')->result();
        $this->data['pilih'] = $pilih;

        $array = array('content_category' => 11, 'content_parent' => 0);
        $this->db->where($array);
        $kelebihan = $this->db->get('content')->result();
        $this->data['kelebihan'] = $kelebihan;

		// faq
        $array = array('content_category' => 12, 'content_parent' => 0);
        $this->db->where($array);
        $faq = $this->db->get('content')->result();
        $this->data['faq'] = $faq;

		// testimoni
        $array = array('content_category' => 13, 'content_parent' => 0);
        $this->db->where($array);
        $testimoni = $this->db->get('content')->result();
        $this->data['testimoni'] = $testimoni;

		// blog
        $posthome = $this->db->get('blog', 3)->result();
        $this->data['posthome'] = $posthome;

		// harga
		$price = $this->db->get('product')->result();
        $this->data['price'] = $price;
	
		$this->data['buletin'] = $this->parser->parse(template.'/buletin.html', $this->data, true);
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