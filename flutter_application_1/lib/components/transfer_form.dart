import 'package:flutter/material.dart';
// import 'package:flutter_application_1/components/custom_surfix_icon.dart';
import 'package:flutter_application_1/components/default_button.dart';
import 'package:flutter_application_1/components/form_error.dart';
import 'package:flutter_application_1/screens/transfer/transfer_screen.dart';
// import 'package:shop_app/components/custom_surfix_icon.dart';
// import 'package:shop_app/components/default_button.dart';
// import 'package:shop_app/components/form_error.dart';
// import 'package:shop_app/screens/otp/otp_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class TransferForm extends StatefulWidget {
  @override
  _TransferFormState createState() => _TransferFormState();
}

class _TransferFormState extends State<TransferForm> {
  final _formKey = GlobalKey<FormState>();

  final List<String> errors = [];

  // String firstName;
  // String lastName;
  String rekening;
  // String address;

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // buildFirstNameFormField(),
          // SizedBox(height: getProportionateScreenHeight(30)),
          // buildLastNameFormField(),
          // SizedBox(height: getProportionateScreenHeight(30)),
          buildRekeningFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),

          buildNominalFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),

          // buildAddressFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Kirim",
            press: () {
              if (_formKey.currentState.validate()) {
                Navigator.pushNamed(context, TransferScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  // TextFormField buildAddressFormField() {
  //   return TextFormField(
  //     onSaved: (newValue) => address = newValue,
  //     onChanged: (value) {
  //       if (value.isNotEmpty) {
  //         removeError(error: kAddressNullError);
  //       }
  //       return null;
  //     },
  //     validator: (value) {
  //       if (value.isEmpty) {
  //         addError(error: kAddressNullError);
  //         return "";
  //       }
  //       return null;
  //     },
  //     decoration: InputDecoration(
  //       labelText: "Address",
  //       hintText: "Enter your phone address",
  //       // If  you are using latest version of flutter then lable text and hint text shown like this
  //       // if you r using flutter less then 1.20.* then maybe this is not working properly
  //       floatingLabelBehavior: FloatingLabelBehavior.always,
  //       suffixIcon:
  //           CustomSurffixIcon(svgIcon: "assets/icons/Location point.svg"),
  //     ),
  //   );
  // }

  TextFormField buildRekeningFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => rekening = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "No. Rekening Tujuan",
        hintText: "Masukkan Nomor Rekening",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }

  TextFormField buildNominalFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => rekening = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Nominal",
        hintText: "Masukkan Jumlah Uang",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }

  // TextFormField buildLastNameFormField() {
  //   return TextFormField(
  //     onSaved: (newValue) => lastName = newValue,
  //     decoration: InputDecoration(
  //       labelText: "Last Name",
  //       hintText: "Enter your last name",
  //       // If  you are using latest version of flutter then lable text and hint text shown like this
  //       // if you r using flutter less then 1.20.* then maybe this is not working properly
  //       floatingLabelBehavior: FloatingLabelBehavior.always,
  //       suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
  //     ),
  //   );
  // }

  // TextFormField buildFirstNameFormField() {
  //   return TextFormField(
  //     onSaved: (newValue) => firstName = newValue,
  //     onChanged: (value) {
  //       if (value.isNotEmpty) {
  //         removeError(error: kNamelNullError);
  //       }
  //       return null;
  //     },
  //     validator: (value) {
  //       if (value.isEmpty) {
  //         addError(error: kNamelNullError);
  //         return "";
  //       }
  //       return null;
  //     },
  //     decoration: InputDecoration(
  //       labelText: "First Name",
  //       hintText: "Enter your first name",
  //       // If  you are using latest version of flutter then lable text and hint text shown like this
  //       // if you r using flutter less then 1.20.* then maybe this is not working properly
  //       floatingLabelBehavior: FloatingLabelBehavior.always,
  //       suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
  //     ),
  //   );
  // }
}





















// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_application_1/components/custom_surfix_icon.dart';
// // import 'package:flutter_application_1/components/form_error.dart';
// // import 'package:shop_app/components/form_error.dart';
// // import 'package:shop_app/helper/keyboard.dart';
// // import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
// // import 'package:shop_app/screens/login_success/login_success_screen.dart';

// import '../../../components/default_button.dart';
// import '../../../constants.dart';
// import '../../../size_config.dart';

// class TransferForm extends StatefulWidget {
//   @override
//   _TransferFormState createState() => _TransferFormState();
// }

// class _TransferFormState extends State<TransferForm> {
//   final _formKey = GlobalKey<FormState>();
//   String email;
//   String password;
//   bool remember = false;
//   // final List<String> errors = [];

//   // void addError({String error}) {
//   //   if (!errors.contains(error))
//   //     setState(() {
//   //       errors.add(error);
//   //     });
//   // }

//   // void removeError({String error}) {
//   //   if (errors.contains(error))
//   //     setState(() {
//   //       errors.remove(error);
//   //     });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: [
//           buildEmailFormField(),
//           SizedBox(height: getProportionateScreenHeight(30)),
//           buildPasswordFormField(),
//           SizedBox(height: getProportionateScreenHeight(30)),
//           // Row(
//           //   children: [
//           //     Checkbox(
//           //       value: remember,
//           //       activeColor: kPrimaryColor,
//           //       onChanged: (value) {
//           //         setState(() {
//           //           remember = value;
//           //         });
//           //       },
//           //     ),
//               // Text("Remember me"),
//               // Spacer(),
//               // GestureDetector(
//               //   onTap: () => Navigator.pushNamed(
//               //       context, ForgotPasswordScreen.routeName),
//               //   child: Text(
//               //     "Forgot Password",
//               //     style: TextStyle(decoration: TextDecoration.underline),
//               //   ),
//               // )
//             ],
//           ),


//           // FormError(errors: errors),
//           // SizedBox(height: getProportionateScreenHeight(20)),
//           // DefaultButton(
//           //   text: "Continue",
//           //   press: () {
//           //     if (_formKey.currentState.validate()) {
//           //       _formKey.currentState.save();
//           //       // if all are valid then go to success screen
//           //       // KeyboardUtil.hideKeyboard(context);
//           //       // Navigator.pushNamed(context, LoginSuccessScreen.routeName);
//           //     }
//           //   },
//           // ),
//         ],
//       ),
//     );
//   }

  

// //   TextFormField buildPasswordFormField() {
// //     return TextFormField(
// //       // obscureText: true,
// //       keyboardType: TextInputType.number,
// //       onSaved: (newValue) => password = newValue,
// //       onChanged: (value) {
// //         if (value.isNotEmpty) {
// //           removeError(error: kPassNullError);
// //         } else if (value.length >= 8) {
// //           removeError(error: kShortPassError);
// //         }
// //         return null;
// //       },
// //       validator: (value) {
// //         if (value.isEmpty) {
// //           addError(error: kPassNullError);
// //           return "";
// //         } else if (value.length < 8) {
// //           addError(error: kShortPassError);
// //           return "";
// //         }
// //         return null;
// //       },
// //       decoration: InputDecoration(
// //         labelText: "Nominal",
// //         hintText: "Masukkan Nominal Transfer",
// //         // If  you are using latest version of flutter then lable text and hint text shown like this
// //         // if you r using flutter less then 1.20.* then maybe this is not working properly
// //         floatingLabelBehavior: FloatingLabelBehavior.always,
// //         suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
// //       ),
// //     );
// //   }

// //   TextFormField buildEmailFormField() {
// //     return TextFormField(
// //       keyboardType: TextInputType.emailAddress,
// //       onSaved: (newValue) => email = newValue,
// //       onChanged: (value) {
// //         if (value.isNotEmpty) {
// //           removeError(error: kEmailNullError);
// //         } else if (emailValidatorRegExp.hasMatch(value)) {
// //           removeError(error: kInvalidEmailError);
// //         }
// //         return null;
// //       },
// //       validator: (value) {
// //         if (value.isEmpty) {
// //           addError(error: kEmailNullError);
// //           return "";
// //         } else if (!emailValidatorRegExp.hasMatch(value)) {
// //           addError(error: kInvalidEmailError);
// //           return "";
// //         }
// //         return null;
// //       },
// //       decoration: InputDecoration(
// //         labelText: "No. Rekening Tujuan",
// //         hintText: "Masukkan Nomor Rekening Tujuan",
// //         // If  you are using latest version of flutter then lable text and hint text shown like this
// //         // if you r using flutter less then 1.20.* then maybe this is not working properly
// //         floatingLabelBehavior: FloatingLabelBehavior.always,
// //         suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
// //       ),
// //     );
// //   }
// // }


// // class TransferForm extends StatelessWidget {
// //   const TransferMenu({
// //     Key key,
// //     @required this.text,
// //     // @required this.icon,
// //     this.press,
// //   }) : super(key: key);

// //   final String text;
// //   // , icon;
// //   final VoidCallback press;



// TextField buildformNumber() {
//     return TextField(
//       keyboardType: TextInputType.number,
//       inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//       // controller: number,
//       autocorrect: true,
//     );
//   }