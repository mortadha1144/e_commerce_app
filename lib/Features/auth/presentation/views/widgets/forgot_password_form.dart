import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../size_config.dart';
import 'custom_form_error.dart';
import 'custom_suffix_icon.dart';
import 'no_account_text.dart';

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({super.key});

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (value.isNotEmpty &&
                  !emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: const InputDecoration(
              hintText: 'Enter your email',
              label: Text('Email'),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: 'assets/icons/Mail.svg'),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          CustomFormError(errors: errors),
          SizedBox(
            height: SizeConfig.screenHeight * .1,
          ),
          CustomButton(
            text: 'Continue',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // do what you want to do
              }
            },
          ),
          SizedBox(
            height: SizeConfig.screenHeight * .1,
          ),
          const NoAccountText(),
        ],
      ),
    );
  }
}
