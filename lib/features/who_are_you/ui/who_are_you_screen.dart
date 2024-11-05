import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sanda/core/helper/spacer.dart';
import 'package:sanda/core/theming/styles.dart';
import 'package:sanda/core/widgets/terms_and_condtions.dart';
import 'package:sanda/features/who_are_you/ui/widgets/alredy_have_account.dart';
import 'package:sanda/features/who_are_you/ui/widgets/options.dart';

class WhoAreYouScreen extends StatelessWidget {
  const WhoAreYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Column(
          children: [
            Text(
              'Welcome, How can we help you ?',
              style: TextStyles.font24mainBlueBold,
            ),
            Text(
              'Select your role and create a positive impact on someone’s life today .',
              style: TextStyles.font14darkGrayRegular,
            ),
            verticalSpace(78),
            const Options(),
            const Spacer(),
            Text(
              'Or',
              style: TextStyles.font14darkGrayRegular,
            ),
            const Spacer(),
            const TermsAndCondtions(),
            verticalSpace(24),
            const AlredyHaveAccount()
          ],
        ),
      )),
    );
  }
}