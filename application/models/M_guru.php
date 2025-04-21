<?php
class M_guru extends CI_Model {
    
    function get_all_guru(){
        // Update query untuk hanya mengambil kolom yang ada
        $hsl = $this->db->query("SELECT 
            guru_id,
            guru_nip,
            guru_nama,
            guru_riwayat_pendidikan,
            guru_mapel,
            guru_photo,
            guru_google_scholar 
        FROM tbl_guru 
        ORDER BY guru_id DESC");
        return $hsl;
    }

    function simpan_guru($nip,$nama,$riwayat_pendidikan,$mapel,$google_scholar,$photo){
        $hsl=$this->db->query("INSERT INTO tbl_guru (
            guru_nip,
            guru_nama,
            guru_riwayat_pendidikan,
            guru_mapel,
            guru_google_scholar,
            guru_photo
        ) VALUES (
            '$nip',
            '$nama',
            '$riwayat_pendidikan',
            '$mapel',
            '$google_scholar',
            '$photo'
        )");
        return $hsl;
    }

    function update_guru($kode,$nip,$nama,$riwayat_pendidikan,$mapel,$google_scholar,$photo){
        $hsl=$this->db->query("UPDATE tbl_guru SET 
            guru_nip='$nip',
            guru_nama='$nama',
            guru_riwayat_pendidikan='$riwayat_pendidikan',
            guru_mapel='$mapel',
            guru_google_scholar='$google_scholar',
            guru_photo='$photo' 
        WHERE guru_id='$kode'");
        return $hsl;
    }

    function update_guru_no_img($kode,$nip,$nama,$riwayat_pendidikan,$mapel,$google_scholar){
        $hsl=$this->db->query("UPDATE tbl_guru SET 
            guru_nip='$nip',
            guru_nama='$nama',
            guru_riwayat_pendidikan='$riwayat_pendidikan',
            guru_mapel='$mapel',
            guru_google_scholar='$google_scholar' 
        WHERE guru_id='$kode'");
        return $hsl;
    }

    function hapus_guru($kode){
        $hsl=$this->db->query("DELETE FROM tbl_guru WHERE guru_id='$kode'");
        return $hsl;
    }
}
    //front-end
  function guru(){
    $hsl=$this->db->query("SELECT guru_id,guru_nip,guru_nama,guru_jenkel,guru_tmp_lahir,guru_tgl_lahir,guru_mapel,guru_photo,guru_google_scholar FROM tbl_guru ORDER BY guru_id DESC");
    return $hsl;
}

function guru_perpage($offset,$limit){
    $hsl=$this->db->query("SELECT guru_id,guru_nip,guru_nama,guru_jenkel,guru_tmp_lahir,guru_tgl_lahir,guru_mapel,guru_photo,guru_google_scholar FROM tbl_guru ORDER BY guru_id DESC LIMIT $offset,$limit");
    return $hsl;
}
