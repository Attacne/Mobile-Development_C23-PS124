import 'dart:io';
import 'dart:math';

import 'package:attacne/screens/acne.dart';
import 'package:attacne/screens/history.dart';
import 'package:attacne/screens/home.dart';
import 'package:attacne/screens/profile_settings.dart';
import 'package:attacne/services/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//--------------------------------------------------------------------
//--------------------------------------------------------------------
//Prepare
var jenisAcne = [
  'Blackhead',
  'Nodules',
  'Papules',
  'Pustules',
  'Whitehead',
];
var desk = [
  '\nBerdasarkan pemindaian wajah Anda, hasil menunjukkan bahwa jenis jerawat yang Anda alami adalah Blackhead. Jerawat Blackhead adalah jenis jerawat yang terbentuk ketika pori-pori kulit tersumbat oleh minyak dan sel-sel kulit mati. Penyumbatan ini menyebabkan pori-pori tampak seperti titik hitam pada permukaan kulit.\n\nJerawat Blackhead umumnya tidak terlalu meradang dan cenderung muncul di area-area wajah yang memiliki produksi minyak berlebih. Perawatan yang tepat dapat membantu mengatasi jerawat Blackhead dan meningkatkan kondisi kulit Anda.\n\nUntuk mengurangi jerawat Blackhead, Anda dapat mengikuti langkah-langkah perawatan berikut:\n\n1. Bersihkan wajah\nBersihkan wajah secara teratur dengan pembersih yang lembut untuk menghilangkan kotoran, minyak, dan sel-sel kulit mati.\n\n2. Gunakan produk\nGunakan produk eksfoliasi yang mengandung bahan-bahan seperti asam salisilat atau retinol untuk membantu membersihkan pori-pori dan mengurangi pembentukan jerawat.\n\n3. Hindari memencet\nHindari memencet atau menggaruk jerawat Blackhead, karena hal ini dapat menyebabkan peradangan dan bekas luka.\n\n4. Gunakan produk perawatan\nGunakan produk perawatan kulit yang mengandung bahan aktif seperti asam salisilat, sulfur, atau benzoyl peroxide untuk membantu membersihkan pori-pori dan mengurangi minyak berlebih.\n\n5. Jaga pola makan\nJaga pola makan sehat dan konsumsi cukup air untuk menjaga kulit tetap sehat dari dalam.\n\nSelalu ingat bahwa setiap orang memiliki kondisi kulit yang unik, jadi hasil pemindaian ini hanya sebagai panduan awal. Jika jerawat Anda tidak kunjung membaik atau mengganggu, disarankan untuk berkonsultasi dengan dokter kulit atau ahli kecantikan untuk penanganan yang lebih spesifik dan tepat sesuai kebutuhan Anda.\n\n',
  '\nSetelah melakukan pemindaian wajah, aplikasi tersebut menampilkan hasil yang menyatakan bahwa jenis jerawat yang terdeteksi adalah Nodules.\n\nHasil pemindaian menunjukkan bahwa jerawat Anda termasuk dalam kategori Nodules. Jerawat tipe ini cenderung lebih besar dan terletak di bawah permukaan kulit. Nodules terbentuk akibat peradangan yang dalam dan sering kali disertai rasa nyeri. Perawatan jerawat tipe ini membutuhkan pendekatan yang lebih terarah dan intensif.\n\nUntuk mengatasi jerawat Nodules, disarankan untuk berkonsultasi dengan dokter kulit atau ahli kecantikan. Mereka dapat membantu merancang rencana perawatan yang cocok untuk kondisi kulit Anda. Beberapa perawatan yang mungkin direkomendasikan termasuk terapi topikal, obat oral, atau prosedur medis seperti penghilangan jerawat dengan laser atau pengisian filler.\n\nSelain itu, penting untuk menjaga kebersihan kulit secara teratur dan menghindari memencet jerawat, karena tindakan tersebut dapat memperburuk peradangan dan meninggalkan bekas luka. Perhatikan pula pola makan dan gaya hidup yang sehat, seperti mengonsumsi makanan bergizi, meminimalkan stres, dan tidur yang cukup.\n\nDalam aplikasi ini, Anda juga dapat menemukan tips perawatan dan saran produk yang sesuai untuk jerawat Nodules. Tetaplah konsisten dalam menjalankan perawatan yang direkomendasikan dan jangan ragu untuk meminta bantuan profesional jika diperlukan. Bersama-sama, kita dapat merawat kulit Anda dengan lebih baik dan mengembalikan kepercayaan diri Anda.\n\n',
  '\nSetelah melakukan pemindaian wajah, hasil deteksi menunjukkan bahwa jerawat yang dimiliki oleh pengguna adalah tipe Papules.\n\nBerdasarkan pemindaian wajah Anda, kami menemukan bahwa jenis jerawat yang Anda miliki adalah Papules. Papules adalah lesi jerawat yang muncul sebagai benjolan kecil, merah, dan teraba di permukaan kulit. Mereka sering kali timbul akibat peradangan folikel rambut yang tersumbat oleh kotoran, minyak berlebih, atau sel kulit mati.\n\nJerawat Papules biasanya tidak memiliki kepala putih atau hitam dan dapat terasa sedikit nyeri jika disentuh. Penting untuk diingat bahwa jerawat Papules harus dihindari untuk tidak dijepit atau ditekan karena dapat meninggalkan bekas luka atau meradang lebih parah.\n\nUntuk mengatasi jerawat Papules, perawatan kulit yang tepat sangat penting. Kami merekomendasikan Anda menjaga kebersihan kulit, mencuci wajah dua kali sehari dengan pembersih lembut yang tidak mengiritasi, dan menggunakan produk perawatan kulit yang mengandung bahan aktif seperti asam salisilat atau benzoyl peroxide.\n\nJika jerawat Papules Anda terus mengganggu atau mengalami peradangan yang parah, disarankan untuk berkonsultasi dengan dokter kulit atau ahli dermatologi. Mereka dapat memberikan perawatan tambahan, seperti penggunaan obat topikal atau prosedur medis yang sesuai dengan kebutuhan kulit Anda.\n\nIngatlah bahwa setiap orang memiliki jenis kulit yang unik, jadi penting untuk menyesuaikan perawatan jerawat Anda sesuai dengan kebutuhan individu. Dengan perawatan yang tepat dan konsisten, Anda dapat meraih kulit yang lebih sehat dan bebas dari jerawat Papules. Tetaplah sabar dan jaga kepercayaan diri!\n\n',
  '\nSetelah menganalisis wajah Anda, aplikasi ini berhasil mengidentifikasi bahwa jenis jerawat yang Anda miliki adalah tipe Pustules.\n\nJerawat tipe Pustules umumnya ditandai oleh lesi kulit yang meradang dengan pus yang terakumulasi di dalamnya. Mereka muncul sebagai benjolan merah yang terangkat di permukaan kulit, seringkali dengan pus putih atau kuning yang terlihat di pusatnya. Pustules biasanya memiliki area merah di sekitar benjolan yang menunjukkan peradangan.\n\nTipe jerawat ini sering terkait dengan produksi berlebihan sebum (minyak) oleh kelenjar sebaceous, yang menyumbat pori-pori kulit. Bakteri Propionibacterium acnes juga dapat berperan dalam memperburuk kondisi ini dengan menyebabkan peradangan.\n\nUntuk mengelola jerawat tipe Pustules, penting untuk menjaga kebersihan kulit dengan rutin mencuci wajah dua kali sehari menggunakan pembersih yang lembut. Hindari memencet atau menggaruk jerawat, karena hal itu dapat memperparah peradangan dan menyebabkan infeksi.\n\nSelain itu, Anda juga dapat mencoba penggunaan produk perawatan kulit yang mengandung bahan seperti asam salisilat atau benzoyl peroxide, yang dapat membantu mengurangi peradangan dan mempercepat penyembuhan jerawat.\n\nTetaplah teratur dalam perawatan kulit harian Anda dan jika jerawat terus menjadi masalah, konsultasikan dengan dokter kulit untuk mendapatkan saran dan perawatan yang lebih spesifik sesuai dengan kebutuhan kulit Anda.\n\nSelalu diingat bahwa setiap orang memiliki kondisi kulit yang unik, dan hasil yang efektif dapat berbeda-beda untuk setiap individu. Teruslah memantau perkembangan jerawat Anda dan berikan perhatian khusus pada kebersihan kulit serta gaya hidup sehat untuk mencapai kulit yang sehat dan bersinar.\n\n',
  '\nSetelah melakukan pemindaian wajah, aplikasi tersebut memberikan deskripsi yang informatif dan membantu terkait jerawat bertipe Whitehead.\n\nSetelah menganalisis hasil pemindaian wajah Anda, kami mendeteksi bahwa jenis jerawat yang Anda miliki adalah Whitehead. Jerawat Whitehead biasanya muncul sebagai benjolan kecil dengan kepala putih di atasnya. Mereka terbentuk ketika pori-pori kulit tersumbat oleh sebum, minyak alami yang diproduksi oleh kelenjar minyak. Kondisi ini sering disebabkan oleh penumpukan sel kulit mati dan bakteri di pori-pori, yang menghambat aliran minyak keluar dari kulit. Jerawat Whitehead umumnya dianggap sebagai jerawat yang lebih ringan dan dapat diatasi dengan perawatan yang tepat.\n\nUntuk mengatasi jerawat Whitehead, disarankan untuk menjaga kebersihan wajah secara teratur dengan mencuci wajah menggunakan pembersih yang lembut. Hindari menggosok wajah terlalu keras, karena hal itu dapat menyebabkan iritasi dan peradangan. Selain itu, penting untuk menggunakan produk perawatan kulit yang mengandung bahan seperti asam salisilat atau benzoyl peroxide yang dapat membantu membersihkan pori-pori dan mengurangi produksi minyak berlebih. Perawatan rutin ini akan membantu menjaga kulit Anda tetap bersih, sehat, dan bebas jerawat.\n\nPenting untuk diingat bahwa setiap orang memiliki kondisi kulit yang unik, jadi hasil pemindaian ini hanya memberikan informasi umum tentang jerawat yang Anda miliki. Jika jerawat Anda terus memburuk atau tidak menunjukkan perbaikan dengan perawatan yang disarankan, disarankan untuk berkonsultasi dengan dokter kulit atau profesional kesehatan yang berkualifikasi. Mereka dapat memberikan nasihat yang lebih spesifik dan meresepkan perawatan yang sesuai dengan kondisi kulit Anda. Tetaplah merawat kulit Anda dengan baik dan jangan ragu untuk mencari bantuan profesional jika diperlukan.\n\n',
];
/*var recomendasi = [
  [
    ["assets/Card 1.png", 'Salep Blackhead'],
    ["assets/Card 2.png", 'Salep Blackhead'],
    ["assets/Card 3.png", 'Salep Blackhead'],
    ["assets/Card 4.png", 'Salep Blackhead'],
    ["assets/Card 5.png", 'Salep Blackhead'],
  ],
  [
    ["assets/Card 1.png", 'Salep Nodules'],
    ["assets/Card 2.png", 'Salep Nodules'],
    ["assets/Card 3.png", 'Salep Nodules'],
    ["assets/Card 4.png", 'Salep Nodules'],
    ["assets/Card 5.png", 'Salep Nodules']
  ],
  [
    ["assets/Card 1.png", 'Salep Papules'],
    ["assets/Card 2.png", 'Salep Papules'],
    ["assets/Card 3.png", 'Salep Papules'],
    ["assets/Card 4.png", 'Salep Papules'],
    ["assets/Card 5.png", 'Salep Papules']
  ],
  [
    ["assets/Card 1.png", 'Salep Pustules'],
    ["assets/Card 2.png", 'Salep Pustules'],
    ["assets/Card 3.png", 'Salep Pustules'],
    ["assets/Card 4.png", 'Salep Pustules'],
    ["assets/Card 5.png", 'Salep Pustules']
  ],
  [
    ["assets/Card 1.png", 'Salep Whitehead'],
    ["assets/Card 2.png", 'Salep Whitehead'],
    ["assets/Card 3.png", 'Salep Whitehead'],
    ["assets/Card 4.png", 'Salep Whitehead'],
    ["assets/Card 5.png", 'Salep Whitehead']
  ]
];*/

//--------------------------------------------------------------------
//--------------------------------------------------------------------

//--------------------------------------------------------------------
var bold = FontWeight.bold;
var rounded = BorderRadius.circular;

//--------------------------------------------------------------------
// String Navbar Page
List<String> titleNavBar = [
  'Home',
  'Acne',
  'History',
  'Setting',
];

//--------------------------------------------------------------------
//List untuk icon Navbar
List<IconData> icon = [
  Icons.home_rounded,
  Icons.face_retouching_natural_rounded,
  Icons.history_rounded,
  Icons.settings,
];

//--------------------------------------------------------------------
//List untuk Navigasi Navbar
List<Widget> destPage = [
  Home(),
  Acne(),
  History(),
  ProfileSettings(),
];

//--------------------------------------------------------------------
//State Manajement edit
StateM Create(BuildContext c) => c.read<StateM>();

//--------------------------------------------------------------------
//State Manajement lihat
StateM Watch(BuildContext c) => c.watch<StateM>();

//--------------------------------------------------------------------
// List untuk ganti gambar profile
List<String> imgProfile = [
  'assets/attacne_logo.png',
  'assets/Card 1.png',
  'assets/Card 2.png',
  'assets/Card 3.png',
  'assets/Card 4.png',
  'assets/Card 5.png',
  'assets/Card 6.png',
];

//--------------------------------------------------------------------
// String Acne Page
String imgAcneLight = 'assets/acne_vec.png', imgAcneDark = 'assets/acneDark_vec.png';

//--------------------------------------------------------------------
// String Home Page
String imgMaskotHome = 'assets/sliver_image.png';
