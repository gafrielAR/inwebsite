<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends MY_Controller {
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

		$this->load->helper('text');
	}
    /*****************************************************************************/
    /*****************************************************************************/
	function index()
    {
		$this->data['function'] = str_replace("_"," ", 'Blog');
        
        $cari	= $this->input->get('cari');
        $tag    = $this->input->get('tag');
        $kat    = $this->input->get('kategori');
        $blog_all = $this->db->get('blog')->result();

        if ($cari != null) {
            $blog_all = $this->db->query("SELECT * from blog WHERE blog_title like '%$cari%'")->result();
            foreach($blog_all as $key => $value){
                $value->content_limit = word_limiter($value->blog_content, 37);
            }
        } else {
            if ($tag != null) {
                $this->db->query("SELECT * from blog WHERE tag_name like '%$tag%'");
                $this->db->join('tag','blog_tag.tag_id = tag.tag_id','Inner');
                $this->db->group_by('blog_id');
                $blog_all = $this->db->get('blog_tag')->result();
                // $this->db->join('tag','blog_tag.tag_id = tag.tag_id','Inner');
                foreach($blog_all as $key => $value){
                    // opn($blog_all);exit();
                    $value->content_limit = word_limiter($value->blog_content, 37);
                }
            } else {
                if ($kat != null) {
                    $blog_all = $this->db->query("SELECT * from blog WHERE blog_category like '%$kat%'")->result();
                    foreach($blog_all as $key => $value){
                        $value->content_limit = word_limiter($value->blog_content, 37);
                    }
                } else {
                    foreach($blog_all as $key => $value){
                        $value->content_limit = word_limiter($value->blog_content, 37);
                    }
                }
            }
        }
        $this->data['blog_all'] = $blog_all;

        $this->data['content'] = $this->parser->parse(template.'/blog.html', $this->data, true);
		$this->parser->parse(template.'/index_frontend.html', $this->data, false);
	}
    /*****************************************************************************/
    function detail() 
    {
        $this->data['function'] = str_replace("_"," ", 'detail');
        $arg = func_get_args();
        
        $this->db->where('blog_id', $arg[0]);
        $detil_info = $this->db->get('blog')->result();

        if($detil_info) {
            foreach($detil_info as $key => $value){
                $this->db->where('blog_id', $value->blog_id);
                $this->db->join('tag','blog_tag.tag_id = tag.tag_id','Inner');
                $this->db->group_by('blog_id');
                $value->tag = $this->db->get('blog_tag')->result();
                foreach($value->tag as $k => $v){
                            $tag[] 		=	$v->tag_id;
                        }
            }
            $this->data['detil_info'] = $detil_info;
                    
        }else{
            redirect(base.'/blog');
        }
                // opn($detil_info);exit();
        $this->data['content'] = $this->parser->parse(template.'/blog-single.html', $this->data, true);
		$this->parser->parse(template.'/index_frontend.html', $this->data, false);
    }

}

/* End of file Contoh.php */
/* Location: ./application/controllers/Contoh.php */