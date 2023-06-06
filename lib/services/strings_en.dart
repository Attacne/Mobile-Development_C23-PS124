import 'dart:io';

import 'package:attacne/services/variabels.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//--------------------------------------------------------------------
//--------------------------------------------------------------------
//Prepare
var jenis_en = [
  'Blackhead Acne',
  'Nodules Acne',
  'Papules Acne',
  'Pustules Acne',
  'Whitehead  Acne',
];
var desk_en = [
  'Blackhead Acne',
  'Nodules Acne',
  'Papules Acne',
  'Pustules Acne',
  'Whitehead  Acne',
];
var recomendasi_en = [
  [
    ["assets/Card 1.png", 'Blackhead Potion'],
    ["assets/Card 2.png", 'Blackhead Potion'],
    ["assets/Card 3.png", 'Blackhead Potion'],
    ["assets/Card 4.png", 'Blackhead Potion'],
    ["assets/Card 5.png", 'Blackhead Potion'],
  ],
  [
    ["assets/Card 1.png", 'Nodules Potion'],
    ["assets/Card 2.png", 'Nodules Potion'],
    ["assets/Card 3.png", 'Nodules Potion'],
    ["assets/Card 4.png", 'Nodules Potion'],
    ["assets/Card 5.png", 'Nodules Potion'],
  ],
  [
    ["assets/Card 1.png", 'Papules Potion'],
    ["assets/Card 2.png", 'Papules Potion'],
    ["assets/Card 3.png", 'Papules Potion'],
    ["assets/Card 4.png", 'Papules Potion'],
    ["assets/Card 5.png", 'Papules Potion'],
  ],
  [
    ["assets/Card 1.png", 'Pustules Potion'],
    ["assets/Card 2.png", 'Pustules Potion'],
    ["assets/Card 3.png", 'Pustules Potion'],
    ["assets/Card 4.png", 'Pustules Potion'],
    ["assets/Card 5.png", 'Pustules Potion'],
  ],
  [
    ["assets/Card 1.png", 'Whitehead Potion'],
    ["assets/Card 2.png", 'Whitehead Potion'],
    ["assets/Card 3.png", 'Whitehead Potion'],
    ["assets/Card 4.png", 'Whitehead Potion'],
    ["assets/Card 5.png", 'Whitehead Potion'],
  ]
];

//--------------------------------------------------------------------
//--------------------------------------------------------------------

//--------------------------------------------------------------------
//String Login Page
String login_en = 'Login',
    subTitleLogin_en = "$login_en to continue",
    emailLogin_en = 'Email address',
    hintEmailLogin_en = 'Your $emailLogin_en...',
    passLogin_en = 'Password',
    hintPassLogin_en = 'Your $passLogin_en...',
    btnLogin_en = login_en,
    infoLogin_en = "Don't have an account?",
    btnSignUp_en = register_en;

//--------------------------------------------------------------------
//String Register Page
String register_en = 'Register',
    subTitleRegister_en = "Register for $login_en",
    fullName_en = 'Full name',
    hintFullName_en = 'Your $fullName_en...',
    userName_en = 'Username',
    hintUserName_en = 'Your $userName_en...',
    emailRegister_en = emailLogin_en,
    hintEmailRegister_en = hintEmailLogin_en,
    passRegister_en = passLogin_en,
    hintPassRegister_en = hintPassLogin_en,
    btnRegister_en = register_en,
    infoRegister_en = "Don't have an account?",
    btnSignIn_en = login_en;

//--------------------------------------------------------------------
// String Acne Page
String acneHead_en = "Let's Check";

//--------------------------------------------------------------------
// String History Page
String historyHead_en = 'History', infoHistory_en = 'No recent $historyHead_en', dgDeleteHistroy_en = 'You want to delete?';

//--------------------------------------------------------------------
// card extended belajar terkait jerawat
String subHead1Home_en = 'Get to know your acne', subHead2Home_en = 'Learning About Acne';
List<String> headCardHome_en = [
  'What is acne?',
  'What causes acne, you know?',
  'Will acne disappear on its own?',
  'What is inside a pimple?',
  'Should the content of a pimple be extracted?',
];
List<String> titleCardHome_en = [
  "Acne is a skin condition characterized by pores clogged with sebum (natural skin oil), dead skin cells, and bacteria. This results in inflammation that can produce red bumps, redness, and sometimes pus. Factors such as excessive sebum production, hormonal changes, skin hygiene, and genetic factors can influence the onset of acne.",
  "The causes of acne can be attributed to several factors, including excessive sebum (skin oil) production, accumulation of dead skin cells, Propionibacterium acnes bacterial infection, inflammation, hormonal changes, poor skin hygiene, genetic factors, as well as the use of cosmetics or skincare products that are not suitable. The combination of these factors can lead to clogged pores, inflammation, and ultimately the formation of acne.",
  "Yes, in many cases, acne can disappear on its own over time. Typically, mild acne will improve within a few weeks or months without specific treatment. However, more severe or persistent acne may require medical treatment or topical medications to help control inflammation, reduce oil production, and cleanse the skin pores. Consult a dermatologist to obtain appropriate advice regarding the suitable treatment for your skin condition.",
  "Acne forms when the skin pores become clogged with sebum (natural skin oil), dead skin cells, and bacteria. The bacteria Propionibacterium acnes multiply within the clogged pores, causing inflammation. This results in acne with redness, swelling, and possibly pus if the infection is severe. Other factors such as hormonal changes, skin hygiene, and genetic factors can also influence the development of acne.",
  "It is not recommended to squeeze or forcibly extract the contents of a pimple. Although you may be tempted to do so, this process can cause infection, further inflammation, and even leave scars or wounds on the skin. It is best to let the pimple heal naturally or consult with a dermatologist who can provide appropriate treatment to reduce acne and minimize the risk of skin damage.",
];

//--------------------------------------------------------------------
//String Edit Profile page
String editProfileHead_en = 'Edit Profile', labelNameEP_en = fullName_en, labelUserNameEP_en = userName_en, labelEmailEP_en = emailLogin_en, labelPassEP_en = 'New $passLogin_en';

//--------------------------------------------------------------------
//String Detail Scane page
String detailScanHead_en = 'Detail', subHeadDetailScan_en = 'Rekomendasi Produk', saveDetailScan_en = 'Simpan', dontSaveDetailScan_en = 'Batal', rekomendasiProdukHasilScan_en = 'Rekomendasi Produk';

//--------------------------------------------------------------------
//String Profile page
String dgLogOut_en = 'Log Out?',
    head1Profile_en = 'Account',
    subHead1Profile_en = 'Tutorial for use.',
    subHead2Profile_en = 'Personal policy',
    head2Profile_en = 'General',
    subHead3Profile_en = 'Language',
    subHead4Profile_en = 'Theme',
    subHead5Profile_en = 'About App',
    subHead6Profile_en = 'The value of this application.';
//--------------------------------------------------------------------
//Model untuk info kenali jerawat
List<String> nameAcneInfo_en = jenis_en;
List<String> descAcneInfo_en = [
  "Blackheads are a type of non-inflammatory acne that occurs when the skin's pores become clogged with sebum (natural skin oil), dead skin cells, and dirt. When the pores are clogged, the trapped sebum undergoes oxidation and produces a black color, resulting in the appearance of blackheads.\n\nBlackheads typically appear in areas of the skin that have excessive oil glands, such as the face, chest, and back. They have an open surface and appear as small black dots on the skin.\n\nBlackheads are often caused by a combination of factors, including excessive oil production, hormonal changes, accumulation of dead skin cells, the use of unsuitable skincare products, and an imbalance of bacteria on the skin. To treat blackhead acne, it is important to maintain regular skin hygiene by gently cleansing it with suitable facial cleansers. The use of exfoliants and masks containing ingredients such as salicylic acid or retinoids can also help cleanse the pores and prevent the formation of new blackheads. If your blackhead acne persists or is severe, consult a dermatologist for appropriate advice and treatment.",
  "Nodular acne is a more severe and serious type of acne compared to common acne. They appear as large, inflamed, and painful lumps located beneath the surface of the skin. Nodular acne is usually deeper and larger than regular acne or cystic acne. Nodular acne forms when the skin's pores become clogged with oil, dead skin cells, and bacteria. The primary causes of nodular acne are increased oil production by the sebaceous glands beneath the skin and inflammation occurring within the pores. Treating nodular acne is usually more challenging and requires medical intervention.\n\nRecommended treatments may include topical medications such as creams or gels containing retinoids or benzoyl peroxide to reduce inflammation and cleanse the pores. In more severe cases, doctors may prescribe oral antibiotics or isotretinoin to reduce inflammation and control the skin's oil production. Corticosteroid injections can be administered to reduce inflammation and the size of nodules in nodular acne. Medical procedures such as chemical peels, microdermabrasion, or light therapy can also help cleanse the pores and reduce inflammation. Always consult with a doctor or dermatologist to determine the appropriate treatment for your nodular acne. They can provide customized advice based on your skin condition and help effectively manage nodular acne.",
  "Papules are one of the common types of acne that appear on the skin. Papules are characterized by small, red, raised bumps on the surface of the skin. These bumps usually do not contain pus and do not have a white head like pustules.\n\nPapules occur when hair follicles or skin pores become clogged with sebum (natural skin oil) and dead skin cells. This blockage leads to inflammation of the skin, resulting in the appearance of red bumps in the affected area.\n\nIn some cases, papules can be slightly painful or itchy. Touching or squeezing these acne lesions can cause irritation, more severe inflammation, and an increased risk of infection.\n\nThe treatment for papules often involves proper skincare, such as regularly cleansing the skin with gentle cleansers, avoiding skincare products that can clog pores, and using skincare products containing ingredients like salicylic acid or benzoyl peroxide that can help unclog pores.\n\nIf papules are severe or do not respond to home treatments, it is recommended to consult a dermatologist or beauty specialist who can provide additional treatments, such as creams or medications containing retinoids, topical antibiotics, or laser therapy to reduce inflammation and control acne.",
  "Pustular acne is a type of acne that forms when the skin's pores become clogged with oil, dead skin cells, and the bacteria Propionibacterium acnes. This acne is characterized by red, painful bumps with a pus-filled center (pustule).\n\nPustules form when the clogged skin pores become inflamed and infected. This process occurs when natural oil (sebum) produced by the skin's oil glands becomes trapped inside the pores, along with accumulated dead skin cells. The bacteria Propionibacterium acnes present on the skin's surface can also cause infection in the clogged pores, leading to swelling and inflammation.\n\nCommon symptoms of pustular acne include red, painful bumps with visible pus or discharge at their center. They tend to be larger and more inflamed than other types of acne, such as blackheads or common pimples. Pustular acne can also cause a sensation of heat or itchiness in the affected area.\n\nTreatment for pustular acne generally involves the use of skincare products containing active ingredients such as benzoyl peroxide, salicylic acid, or topical retinoids. If pustular acne is severe or does not respond to topical treatment, a dermatologist may prescribe oral antibiotics or other anti-acne medications. It is important not to try squeezing or extracting the pus from pustular acne, as this can cause further inflammation or additional infection.\n\nIt is also important to maintain skin cleanliness by regularly washing the face, avoiding the use of oily skincare products, and refraining from using cosmetics that may clog the pores. If pustular acne persists or significantly impacts your daily life, it is recommended to consult a dermatologist for evaluation and further advice.",
  "Whiteheads are one type of acne that typically appears as small white comedones on the skin. Whiteheads, also known as closed comedones, occur when the skin's pores become clogged with sebum (natural skin oil), dead skin cells, and bacteria, forming a white-colored blister.\n\nThe difference between whiteheads and other types of acne, such as blackheads or open red pimples, lies in the pore blockage. In whiteheads, the pores are closed by a layer of skin, causing the comedones to appear white.\n\nWhiteheads usually appear in areas with more active oil glands, such as the face, chest, and back. Factors that can contribute to the development of whiteheads include excess oil production, hormonal changes, accumulation of dead skin cells, and bacterial infection within clogged pores.\n\nTo treat whiteheads, it is important to maintain skin hygiene by regularly washing the face, using appropriate skincare products, and avoiding oily cosmetics that can clog the pores. The use of active ingredients like salicylic acid or benzoyl peroxide can help cleanse the pores and reduce the formation of whiteheads. If whiteheads are severe or unresponsive to home treatments, it is advisable to consult a dermatologist for further treatment options.",
];
