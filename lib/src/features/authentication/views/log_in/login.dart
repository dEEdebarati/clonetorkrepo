import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import './widgets/login_forms&button.dart';
import '../widgets/other_login_option.dart';
import '../../../../common/styles/spacing_style.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';



class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
            padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage(AppImages.darkAppLogo),
                width: AppSizes.imageThumbSize,
              ),
              const Gap(AppSizes.spaceBtwSections),
              const LogInFormsAndButton(),
              const Gap(AppSizes.spaceBtwSections),
              OtherLogInOrSignUpOption(
                title: AppLocalizations.of(context)!.orLogInWith,
              )
            ],
          ),
        ),
      ),
    );
  }
}

