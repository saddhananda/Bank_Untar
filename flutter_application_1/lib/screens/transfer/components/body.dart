import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/bank_lain/bank_lain_screen.dart';
import 'package:flutter_application_1/screens/luar_negeri/luar_negeri_screen.dart';
import 'package:flutter_application_1/screens/untar/untar_screen.dart';

// import 'Transfer_menu.dart';
// import 'Transfer_pic.dart';
import 'transfer_menu.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          //   TransferPic(),
          //   SizedBox(height: 15),
          //   Text(
          //     "Nama Lengkap",
          //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
          //   ),
          SizedBox(height: 30),
          TransferMenu(
            text: "Rekening Bank Untar",
            // icon: "assets/icons/Camera Icon.svg",
            press: () => {
              Navigator.pushNamed(context, BankUntarScreen.routeName)
            },
          ),
          TransferMenu(
            text: "Rekening Bank Lain",
            // icon: "assets/icons/Bell.svg",
            press: () {
              Navigator.pushNamed(context, BankLainScreen.routeName);
            },
          ),
          TransferMenu(
            text: "Rekening Bank Luar negeri",
            // icon: "assets/icons/Settings.svg",
            press: () {
              Navigator.pushNamed(context, LuarNegeriScreen.routeName);
            },
          ),
          // TransferMenu(
          //   text: "Help Center",
          //   icon: "assets/icons/Question mark.svg",
          //   press: () {},
          // ),
          // TransferMenu(
          //   text: "Log Out",
          //   icon: "assets/icons/Log out.svg",
          //   press: () {},
          // ),
        ],
      ),
    );
  }
}





// import 'package:flutter/material.dart';
// // import 'package:shop_app/components/no_account_text.dart';
// // import 'package:shop_app/components/socal_card.dart';
// import '../../../size_config.dart';
// // import 'bank_lain_form.dart';
// import 'transfer_form.dart';

// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SizedBox(
//         width: double.infinity,
//         child: Padding(
//           padding:
//               EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(height: SizeConfig.screenHeight * 0.04),
//                 Text(
//                   "Welcome Back",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: getProportionateScreenWidth(28),
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   "Sign in with your email and password  \nor continue with social media",
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: SizeConfig.screenHeight * 0.08),
//                 TransferForm(),
//                 SizedBox(height: SizeConfig.screenHeight * 0.08),
//                 // Row(
//                 //   mainAxisAlignment: MainAxisAlignment.center,
//                 //   children: [
//                 //     SocalCard(
//                 //       icon: "assets/icons/google-icon.svg",
//                 //       press: () {},
//                 //     ),
//                 //     SocalCard(
//                 //       icon: "assets/icons/facebook-2.svg",
//                 //       press: () {},
//                 //     ),
//                 //     SocalCard(
//                 //       icon: "assets/icons/twitter.svg",
//                 //       press: () {},
//                 //     ),
//                 //   ],
//                 // ),
//                 SizedBox(height: getProportionateScreenHeight(20)),
//                 // NoAccountText(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
