import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:pet_traveler/UI/components/auth_components.dart';
import 'package:pet_traveler/UI/features/auth_styles.dart';
import 'package:pet_traveler/generated/l10n.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {  
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            toolbarHeight: 75,
            title: Text(
              S.of(context).logIn,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            elevation: 0),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              AuthSocialsButtonsComponent(onPressedApple: (){}, onPressedGoogle: (){},),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  S.of(context).or,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.grey),
                ),
              ),
              const LogInBloc()
            ],
          ),
        ),
      ),
    );
  }
}

class LogInBloc extends StatefulWidget {
  const LogInBloc({Key? key}) : super(key: key);

  @override
  State<LogInBloc> createState() => _LogInBlocState();
}

class _LogInBlocState extends State<LogInBloc> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  bool _obscureText = true;
  bool _isEnableButton = false;

  void changeVisible() => setState(() => _obscureText = !_obscureText);

  final _styles = AuthStyles();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 344,
      height: 400,
      child: Form(
        onChanged: () {
          if (_passwordController.text.isNotEmpty &
              _emailController.text.isNotEmpty) {
            setState(() => _isEnableButton = !_isEnableButton);
          }
        },
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
                style: _styles.styleText(context),
                decoration:
                _styles.decoration(context, hintText: S.of(context).inputEmail),
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.length < 4) {
                    return S.of(context).inputEmptyError(4);
                  } else if (!EmailValidator.validate(value, true)) {
                    return S.of(context).inputEmailError;
                  }
                  return null;
                }),
            Column(
              children: [
                TextFormField(
                    style: _styles.styleText(context),
                    obscureText: _obscureText,
                    decoration: _styles.decoration(
                      context,
                      hintText: S.of(context).inputPassword,
                      icon: true,
                        changeVisible: changeVisible

                    ),
                    controller: _passwordController,
                    onFieldSubmitted: (value) {
                      _formKey.currentState?.validate();
                    },
                    validator: (value) {
                      if (value == null || value.length < 8) {
                        return S.of(context).inputEmptyError(8);
                      }
                      return null;
                    }),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        S.of(context).forgotPassword,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: Theme.of(context).primaryColor),
                      )),
                ),
              ],
            ),
            SizedBox(
                width: 330,
                height: 50,
                child: ElevatedButton(
                    style: _styles.filledButtonStyle(context),

                    onPressed: _isEnableButton
                        ? () {
                            _formKey.currentState!.validate();
                          }
                        : null,
                    child: Text(
                      S.of(context).login,
                    ))),
            Text(
              S.of(context).haveNotAcc,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  S.of(context).register,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall,
                ))
          ],
        ),
      ),
    );
  }
}
