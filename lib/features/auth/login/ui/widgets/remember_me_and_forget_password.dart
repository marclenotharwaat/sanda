import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sanda/core/routing/routes.dart';
import 'package:sanda/core/theming/colors.dart';
import 'package:sanda/core/theming/styles.dart';

class RememberMeAndForgetPassword extends StatefulWidget {
  const RememberMeAndForgetPassword({super.key});

  @override
  State<RememberMeAndForgetPassword> createState() =>
      _RememberMeAndForgetPasswordState();
}

class _RememberMeAndForgetPasswordState
    extends State<RememberMeAndForgetPassword> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: checkboxValue,
          activeColor: ColorsManager.green,
          onChanged: (newValue) {
            setState(() {
              checkboxValue = newValue!;
            });
          },
        ),
        Text(
          "Remember me",
          style: TextStyles.font12darkGrayRegular,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(Routes.forgetPasswordScreen);
          },
          child: Text(
            "Forgot Password ?",
            style: TextStyles.font12mainBlueRegular,
          ),
        )
      ],
    );
  }
}
