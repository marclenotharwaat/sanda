import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sanda/core/helper/spacer.dart';
import 'package:sanda/core/theming/styles.dart';
import 'package:sanda/core/widgets/app_text_button.dart';
import 'package:sanda/core/widgets/terms_and_condtions.dart';
import 'package:sanda/features/login/ui/widgets/email_and_password.dart';
import 'package:sanda/features/login/ui/widgets/remember_me_and_forget_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyles.font24mainBlueBold.copyWith(height: 1.9),
                ),
                Text(
                  'Log in to enjoy an experience designed with accessibility in mind. Good to see you!”',
                  style: TextStyles.font14darkGrayRegular.copyWith(height: 1.6),
                ),
                verticalSpace(33),
                const EmailAndPassword(),
                verticalSpace(10),
                const RememberMeAndForgetPassword(),
                verticalSpace(250),
                AppTextButton(
                  bottonText: 'Login',
                  onPressed: () {},
                ),
                verticalSpace(25),
                const TermsAndCondtions()
              ],
            ),
          ),
        ),
      ),
    );
  }
}