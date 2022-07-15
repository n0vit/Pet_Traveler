
import 'package:flutter/material.dart';
import 'package:pet_traveler/UI/consts.dart';
import 'package:pet_traveler/UI/features/auth_styles.dart';

class AuthSocialsButtonsComponent extends StatelessWidget {

  final VoidCallback? onPressedApple;
  final VoidCallback? onPressedGoogle;
  AuthSocialsButtonsComponent({Key? key, this.onPressedApple,this.onPressedGoogle}) : super(key: key);

  final _styles = AuthStyles();

  _createSocialButton (BuildContext context, VoidCallback? onPress, String name, IconData? icon){
    return   SizedBox(height: 50,width: 160,
      child: ElevatedButton(
        onPressed: onPress,
        style: _styles.tonalButtonStyle(context),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
                name,
                style: Theme.of(context).textTheme.titleLarge
            ),
             Icon(icon)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
     _createSocialButton(context, onPressedGoogle, SocialNetworks.google, SocialIcons.google),
        _createSocialButton(context, onPressedApple, SocialNetworks.apple, SocialIcons.apple),
      ],
    );
  }
}


