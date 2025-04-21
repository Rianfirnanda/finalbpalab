<?php
class Guru extends CI_Controller{
    function __construct(){
        parent::__construct();
        if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
        $this->load->model('m_guru'); // Tambahkan ini untuk load model
        $this->load->library('upload');
    }

    function index(){
        $x['data']=$this->m_guru->get_all_guru();
        $this->load->view('admin/v_guru',$x);
    }

    function simpan_guru(){
        $config['upload_path'] = './assets/images/'; //path folder
        $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
        $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

        $this->upload->initialize($config);
        if(!empty($_FILES['filefoto']['name'])){
            if ($this->upload->do_upload('filefoto')){
                $gbr = $this->upload->data();
                //Compress Image
                $config['image_library']='gd2';
                $config['source_image']='./assets/images/'.$gbr['file_name'];
                $config['create_thumb']= FALSE;
                $config['maintain_ratio']= FALSE;
                $config['quality']= '100%';
                $config['width']= 300;
                $config['height']= 300;
                $config['new_image']= './assets/images/'.$gbr['file_name'];
                $this->load->library('image_lib', $config);
                $this->image_lib->resize();

                $photo=$gbr['file_name'];
                $nip=$this->input->post('xnip');
                $nama=$this->input->post('xnama');
                $riwayat_pendidikan=$this->input->post('xriwayat_pendidikan');
                $mapel=$this->input->post('xmapel');
                $google_scholar=$this->input->post('xgoogle_scholar');

                $this->m_guru->simpan_guru($nip,$nama,$riwayat_pendidikan,$mapel,$google_scholar,$photo);
                echo $this->session->set_flashdata('msg','success');
                redirect('admin/guru');
            }else{
                echo $this->session->set_flashdata('msg','warning');
                redirect('admin/guru');
            }
        }else{
            $nip=$this->input->post('xnip');
            $nama=$this->input->post('xnama');
            $riwayat_pendidikan=$this->input->post('xriwayat_pendidikan');
            $mapel=$this->input->post('xmapel');
            $google_scholar=$this->input->post('xgoogle_scholar');

            $this->m_guru->simpan_guru($nip,$nama,$riwayat_pendidikan,$mapel,$google_scholar,'default.jpg');
            echo $this->session->set_flashdata('msg','success');
            redirect('admin/guru');
        }
    }

    function update_guru(){
        $config['upload_path'] = './assets/images/'; //path folder
        $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
        $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

        $this->upload->initialize($config);
        if(!empty($_FILES['filefoto']['name'])){
            if ($this->upload->do_upload('filefoto')){
                $gbr = $this->upload->data();
                //Compress Image
                $config['image_library']='gd2';
                $config['source_image']='./assets/images/'.$gbr['file_name'];
                $config['create_thumb']= FALSE;
                $config['maintain_ratio']= FALSE;
                $config['quality']= '60%';
                $config['width']= 300;
                $config['height']= 300;
                $config['new_image']= './assets/images/'.$gbr['file_name'];
                $this->load->library('image_lib', $config);
                $this->image_lib->resize();

                $photo=$gbr['file_name'];
                $kode=$this->input->post('kode');
                $nip=$this->input->post('xnip');
                $nama=$this->input->post('xnama');
                $riwayat_pendidikan=$this->input->post('xriwayat_pendidikan');
                $mapel=$this->input->post('xmapel');
                $google_scholar=$this->input->post('xgoogle_scholar');

                //hapus foto lama
                $gambar=$this->input->post('gambar');
                if($gambar != 'default.jpg') {
                    unlink('assets/images/'.$gambar);
                }

                $this->m_guru->update_guru($kode,$nip,$nama,$riwayat_pendidikan,$mapel,$google_scholar,$photo);
                echo $this->session->set_flashdata('msg','info');
                redirect('admin/guru');
            }else{
                echo $this->session->set_flashdata('msg','warning');
                redirect('admin/guru');
            }
        }else{
            $kode=$this->input->post('kode');
            $nip=$this->input->post('xnip');
            $nama=$this->input->post('xnama');
            $riwayat_pendidikan=$this->input->post('xriwayat_pendidikan');
            $mapel=$this->input->post('xmapel');
            $google_scholar=$this->input->post('xgoogle_scholar');
            
            $this->m_guru->update_guru_no_img($kode,$nip,$nama,$riwayat_pendidikan,$mapel,$google_scholar);
            echo $this->session->set_flashdata('msg','info');
            redirect('admin/guru');
        }
    }

    function hapus_guru(){
        $kode=$this->input->post('kode');
        $gambar=$this->input->post('gambar');
        if($gambar != 'default.jpg') {
            unlink('assets/images/'.$gambar);
        }
        $this->m_guru->hapus_guru($kode);
        echo $this->session->set_flashdata('msg','success-hapus');
        redirect('admin/guru');
    }
}