<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Public Administration Unib > Dosen</title>
    <link rel="shorcut icon" href="<?php echo base_url().'theme/images/icon2.png'?>">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/bootstrap.min.css'?>">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/font-awesome.min.css'?>">
    <!-- Simple Line Font -->
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/simple-line-icons.css'?>">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/slick.css'?>">
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/slick-theme.css'?>">
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/owl.carousel.min.css'?>">
    <!-- Main CSS -->
    <link href="<?php echo base_url().'theme/css/style.css'?>" rel="stylesheet">
    <!-- Tambahkan di dalam tag head -->
    <style>
        .card {
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
        }
        .card:hover {
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }
        .card-img-top {
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
            height: 200px;
            object-fit: cover;
        }
        .badge {
            font-size: 0.9em;
        }
        .table-sm td {
            padding: 0.2rem;
            vertical-align: middle;
        }
        .btn-brown {
            background-color: #d2b48c;
            border-color: #d2b48c;
            color: white;
            border-radius: 20px;
        }
        .btn-brown:hover {
            background-color: #c3a382;
            border-color: #c3a382;
        }
        .card-body {
            padding-top: 15px; /* Add padding to the top of the card body */
        }
    </style>
</head>

<body>
  <!--============================= HEADER =============================-->
  <div class="header-topbar">
      <div class="container">
          <div class="row">
              <div class="col-xs-6 col-sm-8 col-md-9">
                  <div class="header-top_address">
                      <div class="header-top_list">
                          <span class="icon-phone"></span>089606032177
                      </div>
                      <div class="header-top_list">
                          <span class="icon-envelope-open"></span>administrasipublik@gmail.com
                      </div>
                      <div class="header-top_list">
                          <span class="icon-location-pin"></span>Jl. W.R Supratman, Kandang Limun, Bengkulu 38371
                      </div>
                  </div>
                  <div class="header-top_login2">
                      <a href="<?php echo site_url('contact');?>">Hubungi Kami</a>
                  </div>
              </div>
              <div class="col-xs-6 col-sm-4 col-md-3">
                  <div class="header-top_login mr-sm-3">
                      <a href="<?php echo site_url('contact');?>">Hubungi Kami</a>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <div data-toggle="affix" style="border-bottom:solid 1px #f2f2f2;">
      <div class="container nav-menu2">
          <div class="row">
              <div class="col-md-12">
                  <nav class="navbar navbar2 navbar-toggleable-md navbar-light bg-faded">
                      <button class="navbar-toggler navbar-toggler2 navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNavDropdown">
                          <span class="icon-menu"></span>
                      </button>
                      <a href="<?php echo site_url('');?>" class="navbar-brand nav-brand2"><img class="img img-responsive" width="200px;" src="<?php echo base_url().'theme/images/logo1.png'?>"></a>
                      <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                          <ul class="navbar-nav">
                              <li class="nav-item">
                                  <a class="nav-link" href="<?php echo site_url('');?>">Beranda</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="<?php echo site_url('about');?>">Tentang</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="<?php echo site_url('guru');?>">Dosen</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="<?php echo site_url('siswa');?>">Mahasiswa</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="<?php echo site_url('blog');?>">Berita</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="<?php echo site_url('pengumuman');?>">Info&Pengumuman</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="<?php echo site_url('agenda');?>">Agenda</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="<?php echo site_url('download');?>">Download</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="<?php echo site_url('galeri');?>">Galeri</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="<?php echo site_url('contact');?>">Kontak</a>
                              </li>
                              
                        </ul>
                  </div>
                </nav>
              </div>
            </div>
          </div>
        </div>
    <section>
</section>
<!--//END HEADER -->

<section class="our-teachers">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="mb-5">Pengajar Kami</h2>
            </div>
        </div>
        <div class="row">
            <?php foreach ($data->result() as $row) : ?>
                <div class="col-xs-12 col-sm-6 col-md-4 mb-4">
                    <div class="card admission_insruction">
                        <div class="text-center">
                            <?php if(empty($row->guru_photo)):?>
                                <img src="<?php echo base_url().'assets/images/blank.png';?>" class="card-img-top" alt="#">
                            <?php else:?>
                                <img src="<?php echo base_url().'assets/images/'.$row->guru_photo;?>" class="card-img-top" alt="#">
                            <?php endif;?>
                        </div>
                        
                        <div class="card-body">
                            <h4 class="card-title text-center"><?php echo $row->guru_nama;?></h4>
                            <p class="card-text text-center"><?php echo $row->guru_mapel;?></p>
                            
                            <div class="guru-info">
                                <table class="table table-sm">
                                    <tr>
                                        <td>NIP</td>
                                        <td>:</td>
                                        <td><?php echo $row->guru_nip;?></td>
                                    </tr>
                                    <tr>
                                        <td>Riwayat Pendidikan</td>
                                        <td>:</td>
                                        <td><?php echo nl2br($row->guru_riwayat_pendidikan);?></td>
                                    </tr>
                                    <?php if(!empty($row->guru_mapel)): ?>
                                    <tr>
                                        <td>Status</td>
                                        <td>:</td>
                                        <td><?php echo $row->guru_mapel;?></td>
                                    </tr>
                                    <?php endif; ?>
                                </table>
                                
                                <?php if(!empty($row->guru_google_scholar)): ?>
                                <div class="text-center mt-3">
                                    <a href="<?php echo $row->guru_google_scholar;?>" target="_blank" class="btn btn-brown btn-sm">
                                        <i class="fa fa-graduation-cap"></i> Lihat Publikasi
                                    </a>
                                </div>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach;?>
        </div>
        <div class="row">
            <div class="col-md-12">
                <nav><?php echo $page;?></nav>
            </div>
        </div>
    </div>
</section>

<style>
.admission_insruction {
    background: #fff;
    padding: 15px;
    margin-bottom: 20px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
    border-radius: 5px;
}

.guru-info table {
    font-size: 14px;
    margin-top: 15px;
}

.guru-info table td {
    padding: 5px;
}

.guru-info table td:first-child {
    width: 100px;
}

.guru-info table td:nth-child(2) {
    width: 20px;
}
</style>

<!--============================= FOOTER =============================-->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="foot-logo">
                    <a href="<?php echo site_url();?>">
                        <img src="<?php echo base_url().'theme/images/logo-putih.png'?>" class="img-fluid" alt="footer_logo">
                    </a>
                    <p><?php echo date('Y');?> © copyright by <a href="http://localhost/bpalab/" target="_blank">Administrasi Publik Fisip Unib 2025</a>. <br>All rights reserved.</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="sitemap">
                    <h3>Menu Utama</h3>
                    <ul>
                        <li><a href="<?php echo site_url();?>">Home</a></li>
                        <li><a href="<?php echo site_url('about');?>">About</a></li>
                        <li><a href="<?php echo site_url('artikel');?>">Blog </a></li>
                        <li><a href="<?php echo site_url('galeri');?>">Gallery</a></li>
                        <li><a href="<?php echo site_url('contact');?>">Contact</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-3">
                <div class="sitemap">
                    <h3>Akademik</h3>
                    <ul>
                        <li><a href="<?php echo site_url('guru');?>">Dosen</a></li>
                        <li><a href="<?php echo site_url('siswa');?>">Mahasiswa </a></li>
                        <li><a href="<?php echo site_url('pengumuman');?>">Pengumuman</a></li>
                        <li><a href="<?php echo site_url('agenda');?>">Agenda</a></li>
                        <li><a href="<?php echo site_url('download');?>">Download</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-3">
                <div class="address">
                    <h3>Hubungi Kami</h3>
                    <p><span>Alamat: </span> Jl. WR. Supratman, Kandang Limun, Kec. Muara Bangka Hulu, Sumatera, Bengkulu 38371</p>
                    <p>Email : admpublikfisip@unib.ac.id
                        <br> Phone : 089606032177</p>
                    <ul class="footer-social-icons">
                        <li><a href="#"><i class="fa fa-facebook fa-fb" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin fa-in" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter fa-tw" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<!--//END FOOTER -->

<!-- jQuery, Bootstrap JS. -->
<script src="<?php echo base_url().'theme/js/jquery.min.js'?>"></script>
<script src="<?php echo base_url().'theme/js/tether.min.js'?>"></script>
<script src="<?php echo base_url().'theme/js/bootstrap.min.js'?>"></script>
<!-- Plugins -->
<script src="<?php echo base_url().'theme/js/slick.min.js'?>"></script>
<script src="<?php echo base_url().'theme/js/waypoints.min.js'?>"></script>
<script src="<?php echo base_url().'theme/js/counterup.min.js'?>"></script>
<script src="<?php echo base_url().'theme/js/owl.carousel.min.js'?>"></script>
<script src="<?php echo base_url().'theme/js/validate.js'?>"></script>
<script src="<?php echo base_url().'theme/js/tweetie.min.js'?>"></script>
<!-- Subscribe -->
<script src="<?php echo base_url().'theme/js/subscribe.js'?>"></script>
<!-- Script JS -->
<script src="<?php echo base_url().'theme/js/script.js'?>"></script>
</body>

</html>