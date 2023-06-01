import 'package:attacne/services/variabels.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

String titleS_id = 'Jerawat Batu', desc_id = '...';
//--------------------------------------------------------------------
//String Login Page
String login_id = 'Masuk',
    subTitleLogin_id = "Masuk untuk melanjutkan",
    emailLogin_id = 'Alamat email',
    hintEmailLogin_id = 'Alamat email anda...',
    passLogin_id = 'Kata sandi',
    hintPassLogin_id = 'Alamat Kata Sandi Anda...',
    btnLogin_id = login_id,
    infoLogin_id = "Belum punya akun?",
    btnSignUp_id = 'Mendaftar';
//--------------------------------------------------------------------
//String Register Page
String register_id = 'Daftar',
    subTitleRegister_id = "Daftar untuk Masuk",
    fullName_id = 'Nama lengkap',
    hintFullName_id = 'Nama lengkap Anda...',
    userName_id = 'Nama belakang',
    hintUserName_id = 'Nama pengguna Anda...',
    emailRegister_id = 'Alamat email',
    hintEmailRegister_id = 'Alamat email anda...',
    passRegister_id = 'Kata sandi',
    hintPassRegister_id = 'Alamat Kata Sandi Anda...',
    btnRegister_id = 'Gabung',
    infoRegister_id = "Belum punya akun?",
    btnSignIn_id = 'Masuk';
//--------------------------------------------------------------------
// String Navbar Page
List<String> titleNavBar_id = ['Home', 'Acne', 'History', 'Profile'];
//--------------------------------------------------------------------
// String Acne Page
String acneHead_id = 'Yuk Periksa', imgAcne_id = 'assets/acne_vec.png';
//--------------------------------------------------------------------
// String History Page
String historyHead_id = 'Riwayat',
    infoHistory_id = 'Tidak ada riwayat terbaru',
    dgDeleteHistroy_id = 'Anda ingin menghapus?';
//--------------------------------------------------------------------
// String Home Page
String appName_id = 'Attacne',
    imgMaskotHome_id = 'assets/sliver_image.png',
    subHead1Home_id = 'Kenali Jerawat Anda',
    subHead2Home_id = 'Belajar Terkait Jerawat',
    headCard1Home_id = 'Apa itu jerawat',
    titleCard1Home_id =
        "Jerawat adalah kondisi kulit yang terjadi ketika pori-pori kulit "
        "tersumbat oleh minyak, sel kulit mati, dan bakteri. Biasanya muncul"
        " sebagai bintik-bintik kecil pada wajah, leher, dada, dan punggung."
        " Terjadi pada remaja selama masa pubertas dan dipengaruhi oleh "
        "faktor seperti hormon, genetika, stres, dan pola makan yang buruk.",
    headCard2Home_id = 'Apa jenis-jenis jerawat?',
    titleCard2Home_id =
        "Jenis-jenis jerawat antara lain Blackhead, Nodules, Papules, Pustules, dan "
        "Whitehead. Setiap jenis jerawat memerlukan penanganan yang berbeda "
        "tergantung pada tingkat keparahan dan tipe jerawat. Konsultasi "
        "dengan dokter kulit atau ahli kecantikan direkomendasikan untuk "
        "jerawat yang parah.";
//--------------------------------------------------------------------
//String Edit Profile page
String editProfileHead_id = 'Edit Profile',
    labelNameEP_id = 'Nama',
    labelUserNameEP_id = 'Username',
    labelEmailEP_id = 'Alamat email',
    labelPassEP_id = 'kata sandi baru';
//--------------------------------------------------------------------
//String Detail Info page
String detailInfoHead_id = 'Detail';
//--------------------------------------------------------------------
//String Detail Scane page
String detailScanHead_id = 'Detail',
    subHeadDetailScan_id = 'Rekomendasi Produk',
    btn1DetailScan_id = 'Simpan',
    btn2DetailScan_id = 'Batal';
List<String> imgProfile_id = [
  'assets/card1.png',
  'assets/card1.png',
  'assets/card1.png',
  'assets/card1.png',
  'assets/card1.png',
  'assets/card1.png',
];
//--------------------------------------------------------------------
//String Profile page
String mainUserName_id = 'Muh. Hilmy Noor Fauzi',
    mainEmail_id = 'a267dsx2266@bangkit.academy',
    dgLogOut_id = 'Keluar?',
    head1Profile_id = 'Akun',
    subHead1Profile_id = 'Tutorial untuk digunakan',
    subHead2Profile_id = 'Kebijakan pribadi',
    head2Profile_id = 'Umum',
    subHead3Profile_id = 'Bahasa',
    subHead4Profile_id = 'Tema',
    subHead5Profile_id = 'Tentang aplikasi',
    subHead6Profile_id = 'Nilai aplikasi ini';
//--------------------------------------------------------------------
//Home page card model -> DetailInfo page
List<String?> titleInfo_id = [
  'Jerawat Blackhead',
  'Jerawat Nodules',
  'Jerawat Papules',
  'Jerawat Pustules',
  'Jerawat Whitehead',
];
List<String?> imgInfo_id = [
  "assets/card1.png",
  "assets/card2.png",
  "assets/card1.png",
  "assets/card1.png",
  "assets/card1.png",
];
List<String?> descInfo_id = [
  "aaa",
  "bbb",
  "ccc",
  "ddd",
  "ddd",
];
//--------------------------------------------------------------------
//Recomendation product model
List<String?> imgRecProd_id = [
  "assets/card1.png",
  "assets/card1.png",
  "assets/card1.png",
  "assets/card1.png",
];

List<String?> prodName_id = [
  'Salep anti kesurupan',
  'Salep penenang',
  'Salep anti burnout',
  'Salep anti alay',
];
