import 'package:attacne/services/variabels.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//--------------------------------------------------------------------
//String Login Page
String login_en = 'Masuk',
    subTitleLogin_en = "Masuk untuk melanjutkan",
    emailLogin_en = 'Alamat email',
    hintEmailLogin_en = 'Alamat email anda...',
    passLogin_en = 'Kata sandi',
    hintPassLogin_en = 'Alamat Kata Sandi Anda...',
    btnLogin_en = login_en,
    infoLogin_en = "Belum punya akun?",
    btnSignUp_en = 'Mendaftar';
//--------------------------------------------------------------------
//String Register Page
String register_en = 'Daftar',
    subTitleRegister_en = "Daftar untuk Masuk",
    fullName_en = 'Nama lengkap',
    hintFullName_en = 'Nama lengkap Anda...',
    userName_en = 'Nama belakang',
    hintUserName_en = 'Nama pengguna Anda...',
    emailRegister_en = 'Alamat email',
    hintEmailRegister_en = 'Alamat email anda...',
    passRegister_en = 'Kata sandi',
    hintPassRegister_en = 'Alamat Kata Sandi Anda...',
    btnRegister_en = 'Gabung',
    infoRegister_en = "Belum punya akun?",
    btnSignIn_en = 'Masuk';
//--------------------------------------------------------------------
// String Acne Page
String acneHead_en = 'Yuk Periksa';
//--------------------------------------------------------------------
// String History Page
String historyHead_en = 'Riwayat', infoHistory_en = 'Tidak ada riwayat terbaru', dgDeleteHistroy_en = 'Anda ingin menghapus?';
//--------------------------------------------------------------------
// String Home Page
String appName_en = 'Attacne', subHead1Home_en = 'Kenali Jerawat Anda', subHead2Home_en = 'Belajar Terkait Jerawat';
List<String> headCardHome_en = [
  'Jerawat itu apa sih?',
  'Penyebab jerawat itu apa ya?',
  'Apakah jerawat akan hilang dengan sendirinya?',
  'Apa yang ada di dalam jerawat?',
  'Apakah isi jerawat harus di keluarkan?',
];
List<String> titleCardHome_en = [
  "Jerawat adalah kondisi kulit yang ditandai oleh pori-pori yang tersumbat oleh sebum (minyak alami kulit), sel-sel kulit mati, dan bakteri. Ini menyebabkan peradangan yang dapat menghasilkan benjolan merah, kemerahan, dan terkadang nanah. Faktor-faktor seperti produksi sebum berlebih, perubahan hormon, kebersihan kulit, dan faktor genetik dapat mempengaruhi timbulnya jerawat.",
  "Penyebab jerawat dapat disebabkan oleh beberapa faktor, termasuk kelebihan produksi sebum (minyak kulit), penumpukan sel-sel kulit mati, infeksi bakteri Propionibacterium acnes, peradangan, perubahan hormon, kebersihan kulit yang buruk, faktor genetik, serta penggunaan kosmetik atau produk perawatan kulit yang tidak cocok. Kombinasi dari faktor-faktor ini dapat menyebabkan pori-pori tersumbat, peradangan, dan akhirnya pembentukan jerawat.",
  "Ya, dalam banyak kasus, jerawat dapat hilang dengan sendirinya seiring waktu. Biasanya, jerawat ringan akan membaik dalam beberapa minggu atau bulan tanpa pengobatan khusus. Namun, jerawat yang lebih parah atau persisten mungkin membutuhkan perawatan medis atau pengobatan topikal untuk membantu mengendalikan peradangan, mengurangi produksi minyak, dan membersihkan pori-pori kulit. Konsultasikan dengan dokter kulit untuk memperoleh saran yang tepat mengenai perawatan yang sesuai untuk kondisi kulit Anda.",
  "Jerawat terbentuk ketika pori-pori kulit tersumbat oleh sebum (minyak alami kulit), sel-sel kulit mati, dan bakteri. Bakteri Propionibacterium acnes berkembang biak di dalam pori-pori yang tersumbat, menyebabkan peradangan. Ini menghasilkan jerawat dengan kemerahan, pembengkakan, dan mungkin nanah jika infeksi lebih parah. Faktor lain seperti perubahan hormon, kebersihan kulit, dan faktor genetik juga dapat mempengaruhi perkembangan jerawat.",
  "Tidak disarankan untuk memencet atau mengeluarkan isi jerawat secara paksa. Meskipun mungkin tergoda untuk melakukannya, proses ini dapat menyebabkan infeksi, peradangan lebih lanjut, dan bahkan meninggalkan bekas atau luka pada kulit. Sebaiknya biarkan jerawat sembuh secara alami atau konsultasikan dengan dokter kulit yang dapat memberikan perawatan yang tepat untuk mengurangi jerawat dan meminimalkan risiko kerusakan kulit.",
];
//--------------------------------------------------------------------
//String Edit Profile page
String editProfileHead_en = 'Edit Profile', labelNameEP_en = 'Nama', labelUserNameEP_en = 'Username', labelEmailEP_en = 'Alamat email', labelPassEP_en = 'kata sandi baru';
//--------------------------------------------------------------------
//String Detail Info page
String detailInfoHead_en = 'Detail';
//--------------------------------------------------------------------
//String Detail Scane page
String detailScanHead_en = 'Detail', subHeadDetailScan_en = 'Rekomendasi Produk', btn1DetailScan_en = 'Simpan', btn2DetailScan_en = 'Batal';

//--------------------------------------------------------------------
//String Profile page
String dgLogOut_en = 'Keluar?',
    head1Profile_en = 'Akun',
    subHead1Profile_en = 'Tutorial untuk digunakan',
    subHead2Profile_en = 'Kebijakan pribadi',
    head2Profile_en = 'Umum',
    subHead3Profile_en = 'Bahasa',
    subHead4Profile_en = 'Tema',
    subHead5Profile_en = 'Tentang aplikasi',
    subHead6Profile_en = 'Nilai aplikasi ini';
//--------------------------------------------------------------------
//Model untuk info
List<String> nameAcneInfo_en = [
  'Jerawat Blackhead',
  'Jerawat Nodules',
  'Jerawat Papules',
  'Jerawat Pustules',
  'Jerawat Whitehead',
];
List<String> descAcneInfo_en = [
  "Jerawat blackhead (komedo hitam) adalah jenis jerawat non-radang yang terbentuk ketika pori-pori kulit "
      "tersumbat oleh sebum (minyak alami kulit), sel kulit mati, dan kotoran. Ketika pori-pori tersumbat, "
      "sebum yang terperangkap di dalamnya mengalami oksidasi dan menghasilkan warna hitam, mengakibatkan "
      "penampilan komedo hitam. \n\n"
      "Blackhead biasanya muncul di area kulit yang memiliki kelenjar minyak berlebih, seperti wajah, "
      "dada, dan punggung. Mereka memiliki tampilan permukaan yang terbuka dan "
      "terlihat seperti titik-titik hitam kecil di kulit.\n\n"
      "Blackhead sering disebabkan oleh kombinasi faktor-faktor seperti produksi minyak yang berlebihan, "
      "perubahan hormon, penumpukan sel kulit mati, penggunaan produk "
      "perawatan kulit yang tidak cocok, dan ketidakseimbangan bakteri pada kulit."
      "Untuk mengobati jerawat blackhead, penting untuk menjaga kebersihan kulit secara teratur dengan "
      "membersihkannya secara lembut menggunakan pembersih wajah yang sesuai. Penggunaan eksfolian dan "
      "masker yang mengandung bahan seperti asam salisilat atau retinoid juga dapat membantu membersihkan "
      "pori-pori dan mencegah pembentukan blackhead baru. Jika jerawat blackhead Anda persisten atau "
      "parah, berkonsultasilah dengan dokter kulit untuk saran dan perawatan yang tepat.",
  "Jerawat nodul adalah jenis jerawat yang lebih serius dan parah dibandingkan dengan jerawat biasa. "
      "Mereka muncul sebagai benjolan besar, meradang, dan terasa sakit yang terletak di bawah permukaan "
      "kulit. Jerawat nodul biasanya lebih dalam dan lebih besar daripada jerawat biasa atau jerawat batu.\n\n"
      "Jerawat nodul terbentuk ketika pori-pori kulit tersumbat oleh minyak, sel kulit mati, dan bakteri. "
      "Penyebab utama jerawat nodul adalah peningkatan produksi minyak oleh kelenjar sebaceous di bawah "
      "kulit dan peradangan yang terjadi dalam pori-pori.\n\nPerawatan jerawat nodul biasanya lebih sulit dan "
      "memerlukan intervensi medis. Perawatan yang mungkin direkomendasikan termasuk:\n"
      "1. Obat topikal: Krim atau gel yang mengandung bahan seperti retinoid atau benzoyl peroxide "
      "dapat digunakan untuk mengurangi peradangan dan membantu membersihkan pori-pori.\n"
      "2. Obat oral: Dalam kasus yang lebih parah, dokter mungkin meresepkan antibiotik oral atau "
      "isotretinoin untuk mengurangi peradangan dan mengontrol produksi minyak kulit.\n"
      "3. Injeksi kortikosteroid: Dokter dapat menginjeksi kortikosteroid langsung ke dalam jerawat nodul "
      "untuk mengurangi peradangan dan mengurangi ukuran benjolan.4. Perawatan dokter kulit: Prosedur medis "
      "seperti pengelupasan kimia, mikrodermabrasi, atau terapi cahaya dapat digunakan untuk membantu "
      "membersihkan pori-pori dan mengurangi peradangan.Selalu konsultasikan dengan dokter atau ahli kulit "
      "untuk menentukan perawatan yang tepat untuk jerawat nodul Anda. Mereka dapat memberikan saran yang "
      "disesuaikan dengan kondisi kulit Anda dan membantu mengendalikan jerawat nodul secara efektif.",
  "Jerawat papul adalah salah satu jenis jerawat yang sering muncul pada kulit. Jerawat papul ditandai "
      "dengan adanya benjolan kecil yang merah dan terangkat di permukaan kulit. Benjolan ini biasanya tidak "
      "terisi nanah dan tidak memiliki kepala putih seperti jerawat bernanah (pustules).\n\nJerawat papul "
      "terjadi ketika folikel rambut atau pori-pori kulit tersumbat oleh sebum (minyak alami kulit) dan sel "
      "kulit mati. Penyumbatan ini mengakibatkan peradangan pada kulit, yang menyebabkan munculnya benjolan "
      "merah pada area yang terkena.\n\nPada beberapa kasus, jerawat papul dapat terasa sedikit sakit atau gatal. "
      "Jika jerawat ini disentuh atau dipencet, bisa menyebabkan iritasi dan peradangan yang lebih parah, "
      "serta meningkatkan risiko infeksi.\n\nPengobatan untuk jerawat papul sering kali melibatkan perawatan kulit "
      "yang tepat, seperti membersihkan kulit secara teratur dengan pembersih yang lembut, menghindari penggunaan "
      "produk perawatan kulit yang mengandung bahan yang dapat menyumbat pori-pori, dan menggunakan produk perawatan "
      "kulit yang mengandung bahan seperti asam salisilat atau benzoyl peroxide yang dapat membantu membersihkan "
      "\n\npori-pori.Jika jerawat papul parah atau tidak merespon terhadap perawatan rumah, disarankan untuk "
      "berkonsultasi dengan dokter kulit atau ahli kecantikan yang dapat memberikan pengobatan tambahan, seperti "
      "krim atau obat yang mengandung retinoid, antibiotik topikal, atau terapi laser untuk mengurangi "
      "peradangan dan mengontrol jerawat.",
  "Jerawat pustula adalah jenis jerawat yang terbentuk ketika pori-pori kulit tersumbat oleh minyak, sel-sel "
      "kulit mati, dan bakteri Propionibacterium acnes. Jerawat ini ditandai dengan adanya benjolan merah yang "
      "terasa nyeri dan berisi nanah (pustula) di pusatnya.\n\nPustula terbentuk ketika pori-pori kulit yang tersumbat "
      "menjadi meradang dan terinfeksi. Proses ini terjadi ketika minyak alami (sebum) yang diproduksi oleh "
      "kelenjar minyak kulit terperangkap di dalam pori-pori, bersama dengan sel-sel kulit mati yang menumpuk. "
      "Bakteri Propionibacterium acnes yang ada di permukaan kulit juga dapat menyebabkan infeksi pada pori-pori"
      " yang tersumbat, menyebabkan pembengkakan dan peradangan.\n\nGejala umum dari jerawat pustula adalah benjolan"
      " merah yang terasa nyeri, dengan pus atau nanah yang terlihat di bagian tengahnya. Mereka cenderung lebih"
      " besar dan lebih meradang daripada jenis jerawat lainnya, seperti komedo atau jerawat biasa. Jerawat "
      "pustula juga bisa menyebabkan kulit terasa panas atau gatal di sekitar area yang terkena.\n\nPerawatan "
      "jerawat pustula umumnya melibatkan penggunaan produk perawatan kulit yang mengandung bahan aktif "
      "seperti benzoyl peroxide, asam salisilat, atau retinoid topikal. Jika jerawat pustula parah atau "
      "tidak merespons pengobatan topikal, dokter kulit mungkin meresepkan antibiotik oral atau obat anti-jerawat"
      " lainnya. Penting untuk tidak mencoba memencet atau mengeluarkan nanah dari jerawat pustula, karena ini "
      "dapat menyebabkan peradangan yang lebih parah atau infeksi lebih lanjut.\n\nPenting juga untuk menjaga kebersihan"
      " kulit dengan mencuci wajah secara teratur, menghindari penggunaan produk perawatan kulit yang berminyak, "
      "dan menghindari pemakaian kosmetik yang berpotensi menyumbat pori-pori. Jika jerawat pustula terus berlanjut"
      " atau mengganggu kehidupan sehari-hari Anda, disarankan untuk berkonsultasi dengan dokter kulit untuk "
      "evaluasi dan saran lebih lanjut.",
  "Jerawat Whitehead adalah salah satu jenis jerawat yang biasanya muncul dalam bentuk komedo putih kecil di kulit. "
      "Jerawat Whitehead, juga dikenal sebagai komedo tertutup, terjadi ketika pori-pori kulit tersumbat oleh sebum "
      "(minyak alami kulit), sel-sel kulit mati, dan bakteri, yang kemudian membentuk lepuh berwarna putih.\n\nPerbedaan"
      " antara jerawat Whitehead dan jerawat lainnya, seperti jerawat hitam atau jerawat merah yang terbuka, terletak"
      " pada sumbatan pori-pori. Pada jerawat Whitehead, pori-pori tertutup oleh lapisan kulit yang menyebabkan komedo"
      " tampak putih.\n\nJerawat Whitehead biasanya muncul pada daerah yang memiliki kelenjar minyak yang lebih aktif, "
      "seperti wajah, dada, dan punggung. Faktor-faktor yang dapat menyebabkan timbulnya jerawat Whitehead meliputi"
      " kelebihan produksi minyak kulit, perubahan hormon, penumpukan sel-sel kulit mati, dan infeksi bakteri pada "
      "pori-pori yang tersumbat.\n\nUntuk mengobati jerawat Whitehead, penting untuk menjaga kebersihan kulit dengan "
      "mencuci wajah secara teratur, menggunakan produk perawatan kulit yang sesuai, dan menghindari pemakaian "
      "kosmetik berminyak yang dapat menyumbat pori-pori. Penggunaan bahan aktif seperti asam salisilat atau "
      "benzoyl peroxide dapat membantu membersihkan pori-pori dan mengurangi pembentukan jerawat Whitehead. Jika"
      " jerawat Whitehead parah atau tidak merespon terhadap perawatan rumah, disarankan untuk berkonsultasi "
      "dengan dokter kulit untuk perawatan yang lebih lanjut.",
];
