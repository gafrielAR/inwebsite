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
            opn($value->child);exit();
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
        $this->db->where('content_category', 1);
        $hero = $this->db->get('content')->result();
        $this->data['hero'] = $hero;
        foreach ($hero as $key => $value) {
            $value->hero_button     = 'btn-get-started d-inline-flex align-items-center justify-content-center align-self-center';
            $value->hero_img_class  = 'img-fluid';
            $value->aos_up          = 'fade-up';
            $value->aos_zoom_out    = 'zoom-out';
        }
        // opn($value);exit();

        // values
        $this->db->where('content_category', 2);
        $value = $this->db->get('content')->result();
        $this->data['value'] = $value;
        foreach ($value as $key => $value) {
            $value->after_row       = 'col-lg-4';
            $value->content_class   = 'box';
            $value->img_class       = 'img-fluid';
            $value->aos_up          = 'fade-up';
        }
        // opn($value);exit();
        
        // count
        $this->db->where('content_category', 3);
        $count = $this->db->get('content')->result();
        $this->data['count'] = $count;
        foreach ($count as $key => $value) {
            $value->after_row       = 'col-lg-4';
            $value->content_class   = 'box';
            $value->img_class       = 'img-fluid';
            $value->aos_up          = 'fade-up';
        }
        // opn($value);exit();

        // features
        $this->db->where('content_category', 4);
        $feature = $this->db->get('content')->result();
        $this->data['feature'] = $feature;
        foreach ($feature as $key => $value) {
            $value->aos_zoom_out = 'zoom-out';
        }

        $this->db->where('content_category', 5);
        $feature_img = $this->db->get('content')->result();
        $this->data['feature_img'] = $feature_img;
        // opn($img);exit();

        $this->db->where('content_category', 6);
        $title = $this->db->get('content')->result();
        $this->data['title'] = $title;

        $this->db->where('content_category', 7);
        $descvisi = $this->db->get('content')->result();
        $this->data['descvisi'] = $descvisi;

        $this->db->where('content_category', 8);
        $descvisi = $this->db->get('content')->result();
        $this->data['descvisi'] = $descvisi;


        $this->db->where('content_category', 9);
        $vismisimg = $this->db->get('content')->result();
        $this->data['vismisimg'] = $vismisimg;

        $this->db->where('content_category', 10);
        $pilih = $this->db->get('content')->result();
        $this->data['pilih'] = $pilih;

        $this->db->where('content_category', 11);
        $kelebihan = $this->db->get('content')->result();
        $this->data['kelebihan'] = $kelebihan;

        $this->db->where('content_category', 12);
        $faq = $this->db->get('content')->result();
        $this->data['faq'] = $faq;
        foreach ($faq as $key => $value) {
            $value->subclasstitle = 'accordion-button collapsed';
            $value->subclassdesc  = 'accordion-collapse collapse';
            $value->subclassdescbody  = 'accordion-body';
        }

        $this->db->where('content_category', 13);
        $testimoni = $this->db->get('content')->result();
        $this->data['testimoni'] = $testimoni;

        $this->db->where('content_category', 14);
        $post = $this->db->get('content')->result();
        $this->data['post'] = $post;
        // opn($img);exit();
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