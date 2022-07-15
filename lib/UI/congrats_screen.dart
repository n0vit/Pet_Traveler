import 'package:flutter/material.dart';
import 'package:pet_traveler/UI/consts.dart';
import 'package:pet_traveler/UI/features/auth_styles.dart';
import 'package:pet_traveler/generated/l10n.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 82.0, vertical: 140),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Image.asset(CongratsConstants.doneImage),
        Text(S
            .of(context)
            .congrats, style: Theme
            .of(context)
            .textTheme
            .displaySmall,),
        const SizedBox(height: 60,),
        SizedBox(height: 50, width: 200,
          child: ElevatedButton(onPressed: () {}, style: AuthStyles().tonalButtonStyle(context),
              child: Text(S
                  .of(context)
                  .next, style: Theme
                  .of(context)
                  .textTheme
                  .titleMedium,)),
          )
          ],
        ),
      ),
    );
  }
}
