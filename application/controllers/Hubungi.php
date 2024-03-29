<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hubungi extends MY_Controller {
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
		$this->data['function'] = str_replace("_"," ", 'Hubungi');

        $array = array('content_category' => 17, 'content_parent' => 0);
        $this->db->where($array);
        $contact = $this->db->get('content')->result();
        $this->data['contact'] = $contact;

		$name	= $this->input->post('nama_pelanggan');
		$nohp	= $this->input->post('hp_pelanggan');
		$nowa	= $this->input->post('wa_pelanggan');

		$data	= array(
			'nama_pelanggan'	=> $name,
			'hp_pelanggan'		=> $nohp,
			'wa_pelanggan'		=> $nowa
		);

		// opn($data);exit();
		$insert = $this->db->insert('konsultasi', $data);

		if ($insert) {
			$_SESSION['request_teknisi'] = 1;

		}

		if (isset($_SESSION['request_teknisi'])) {
			$this->data['msg'] =
			'
			<div class="col-md-12 text-center">
				<p>Terimakasih! Kami akan segera menghubungi anda</p>
			</div>
			';
			$this->session->sess_destroy(isset($_SESSION['request_teknisi']));
		} else {
			$this->data['msg'] ="";
		}

		$this->data['content'] = $this->parser->parse(template.'/contact.html', $this->data, true);
		$this->parser->parse(template.'/index_frontend.html', $this->data, false);
	}
    /*****************************************************************************/

}

/* End of file Contoh.php */
/* Location: ./application/controllers/Contoh.php */