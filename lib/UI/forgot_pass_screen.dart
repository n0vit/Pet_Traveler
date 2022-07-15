import 'package:flutter/material.dart';
import 'package:pet_traveler/UI/features/auth_styles.dart';
import 'package:pet_traveler/generated/l10n.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 66),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(S.of(context).forgotPassword,
                    style: Theme.of(context).textTheme.headlineMedium),
              ),
              Text(
                S.of(context).forgotPassText,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 80,
              ),
              const InputWidgets()
            ],
          ),
        ),
      ),
    );
  }
}

class InputWidgets extends StatefulWidget {
  const InputWidgets({Key? key}) : super(key: key);

  @override
  State<InputWidgets> createState() => _InputWidgetsState();
}

class _InputWidgetsState extends State<InputWidgets> {
  late TextEditingController _emailTextController;

  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
  }

  final _style = AuthStyles();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _emailTextController,
          decoration:
              _style.decoration(context, hintText: S.of(context).inputEmail,
              ),style: _style.styleText(context),
        ),
        const SizedBox(height: 40,),
        SizedBox(
          width: 330,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: _style.filledButtonStyle(context),
            child: Text(S.of(context).forgotPassButtonSend,),
          ),
        )
      ],
    );
  }
}
