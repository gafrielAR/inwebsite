<?php
defined('BASEPATH') or exit('No direct script access allowed');

class MY_Controller extends CI_Controller
{
    /*****************************************************************************/
    public function __construct()
    {
        parent::__construct();
 
        define('base', rtrim(base_url(), '/'));
        $this->data['base']       = base;
        $this->data['tahun']      = date('Y'); 
        $this->data['CI_VERSION'] = CI_VERSION;
        $this->data['site_title'] = 'Contoh';
				
        if (isset($_SESSION['user_info'])) { 
            $this->data['user_info'] = $_SESSION['user_info'];
            $this->data['is_login']  = 'is_login';
            $this->data['is_logout'] = 'hidden';
            $this->data['is_admin']  = $_SESSION['user_info'][0]->user_level == 2 ? 'is_admin' : 'hidden';
            $this->_is_admin         = $_SESSION['user_info'][0]->user_level == 2 ? true : false;
            $this->_is_login         = true;
        } else {
            $this->data['user_info'] = array();
            $this->data['is_login']  = 'hidden';
            $this->data['is_admin']  = 'hidden';
            $this->data['is_logout'] = 'is_logout';
            $this->_is_admin         = false;
            $this->_is_login         = false;
        }
		
		
    /*****************************Load Menu************************************************/ 
       /*  $this->db->join('menu_hyperlink b', 'b.menu_id = a.menu_id');	
        $this->db->join('hyperlink c', 'c.hyperlink_id = b.hyperlink_id');	
        $this->db->where('a.disabled', '0');
        $this->db->where('b.disabled', '0');
        $this->db->where('c.disabled', '0');
        $this->db->where('b.menu_hyperlink_parent', '0');
        $all_link = $this->db->get('menu a')->result();
            foreach ($all_link as $key => $value) {
                
                $this->db->join('menu_hyperlink b', 'b.menu_id = a.menu_id');	
                $this->db->join('hyperlink c', 'c.hyperlink_id = b.hyperlink_id');
                $this->db->where('menu_hyperlink_parent', $value->hyperlink_id);
                $value->child = $this->db->get('menu a')->result();
                if (isset($value->child[0])) {
                    $this->data['class_menu'] = 'nav-link scrollto';
                }else{
                    $this->data['class_menu'] = 'dropdown';
                }
            }
        
        $this->data['all_link'] = $all_link;
 */


        //opn($all_link);exit();

        // header
        $this->db->where('menus_level', 1);
        $menus = $this->db->get('menus')->result();
        foreach ($menus as $key => $value) {
            $this->db->where('menus_parent', $value->menus_id);
            $submenu = $this->db->get('menus')->result();
            $subchild = array();
            $subchild_ren = array();
            foreach ($submenu as $skey => $sub_value) {
                $array_key = array_keys((array)$sub_value) ;
                $array_value = array_values((array)$sub_value);
                foreach ($array_key as $sub_key => $subvaluemenu) {
                    $subchild_ren['ch_'.$subvaluemenu] = $array_value[$sub_key];
                }
                $subchild [] = $subchild_ren;
            }
            $value->child = $subchild;
            // opn($value->child);exit();
        }
        foreach ($menus as $m_key => $m_value) {
            if (empty($m_value->child)) {
                $m_value->class_menu = 'nav-link';
                $m_value->class_chevron = '';
            }else{
                $m_value->class_menu = 'dropdown';
                $m_value->class_chevron = 'bi bi-chevron-down';
            }
        }
        $this->data['menus'] = $menus;

        // footer
        $this->db->where('menus_category', 2);
        $usefullink = $this->db->get('menus')->result();
        $this->data['usefullink'] = $usefullink;

        $this->db->where('menus_category', 3);
        $services = $this->db->get('menus')->result();
        $this->data['services'] = $services;
        
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

        $array = array('content_category' => 7, 'content_parent' => 0);
        $this->db->where($array);
        $descvisi = $this->db->get('content')->result();
        $this->data['descvisi'] = $descvisi;

        $array = array('content_category' => 8, 'content_parent' => 0);
        $this->db->where($array);
        $descmisi = $this->db->get('content')->result();
        $this->data['descmisi'] = $descmisi;
        // opn($descmisi);exit();

        $array = array('content_category' => 9, 'content_parent' => 0);
        $this->db->where($array);
        $vismisimg = $this->db->get('content')->result();
        $this->data['vismisimg'] = $vismisimg;

        $array = array('content_category' => 10, 'content_parent' => 0);
        $this->db->where($array);
        $pilih = $this->db->get('content')->result();
        $this->data['pilih'] = $pilih;

        $array = array('content_category' => 11, 'content_parent' => 0);
        $this->db->where($array);
        $kelebihan = $this->db->get('content')->result();
        $this->data['kelebihan'] = $kelebihan;

        $array = array('content_category' => 12, 'content_parent' => 0);
        $this->db->where($array);
        $faq = $this->db->get('content')->result();
        $this->data['faq'] = $faq;

        $array = array('content_category' => 13, 'content_parent' => 0);
        $this->db->where($array);
        $testimoni = $this->db->get('content')->result();
        $this->data['testimoni'] = $testimoni;

        $posthome = $this->db->get('blog', 3)->result();
        $this->data['posthome'] = $posthome;

        $this->db->group_by('blog_category');
        $blogcat = $this->db->get('blog', 5)->result();
        $this->data['blogcat'] = $blogcat;

        $postblog = $this->db->get('blog', 5)->result();
        $this->data['postblog'] = $postblog;

        $tag[] = $this->db->get('tag')->result();
        foreach($tag as $key => $value){
            $tag = $value;
        }
        $this->data['tag'] = $tag ;
        // opn($post);exit();

        $array = array('content_category' => 15, 'content_parent' => 0);
        $this->db->where($array);
        $tentang = $this->db->get('content')->result();
        $this->data['tentang'] = $tentang;
        foreach ($tentang as $key => $value) {
            $value->subtitle  = 'Siapa Kami';
        }

        $array = array('content_category' => 16, 'content_parent' => 0);
        $this->db->where($array);
        $service = $this->db->get('content')->result();
        $this->data['service'] = $service;

        $array = array('content_category' => 17, 'content_parent' => 0);
        $this->db->where($array);
        $contact = $this->db->get('content')->result();
        $this->data['contact'] = $contact;

        $array = array('content_category' => 17, 'content_parent' => 0);
        $this->db->where($array);
        $contactfoot = $this->db->get('content', 3)->result();
        $this->data['contactfoot'] = $contactfoot;

        $array = array('content_category' => 18, 'content_parent' => 0);
        $this->db->where($array);
        $social = $this->db->get('content')->result();
        $this->data['social'] = $social;
        // opn($social);exit();
    /*****************************************************************************/ 
		
    /*****************************Setting Template Aktif************************************************/ 
		$this->db->where('aktif', '1');
		$q_template = $this->db->get('template')->result();
		define('template', 'frontend/'.$q_template[0]->template_name);
		// opn($this->template);exit();
    /*****************************************************************************/ 
    }
}

/* End of file MY_Controller.php */
/* Location: ./application/core/MY_Controller.php */