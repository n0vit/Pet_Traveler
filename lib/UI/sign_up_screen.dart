import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:pet_traveler/UI/components/auth_components.dart';
import 'package:pet_traveler/UI/features/auth_styles.dart';
import 'package:pet_traveler/generated/l10n.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);


  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            toolbarHeight: 50,
            title: Text(
              S.of(context).register,
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
               const RegisterBloc()
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterBloc extends StatefulWidget {
  const RegisterBloc({Key? key}) : super(key: key);

  @override
  State<RegisterBloc> createState() => _RegisterBlocState();
}

class _RegisterBlocState extends State<RegisterBloc> {
  late TextEditingController _fullNameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _passConfirmController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _fullNameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _passConfirmController = TextEditingController();
  }

  bool _obscureText = true;
  bool _isEnableRegButton= false;

  void changeVisible() => setState(() => _obscureText = !_obscureText);

  final _styles = AuthStyles();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 344,
      height: 480,
      child: Form(
        onChanged: () {
          if (_passwordController.text.isNotEmpty &
              _fullNameController.text.isNotEmpty &
              _emailController.text.isNotEmpty &
              _passConfirmController.text.isNotEmpty) {
            setState(() => _isEnableRegButton = !_isEnableRegButton);
          }
        },
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextFormField(
                style: _styles.styleText(context),
                decoration:
                _styles.decoration(context, hintText: S.of(context).inputFullName),
                controller: _fullNameController,
                validator: (value) {
                  if (value == null || value.length < 4) {
                    //in plural  ICU one{...4....}
                    return S.of(context).inputEmptyError(4);
                  }
                  return null;
                }),
            TextFormField(
                style: _styles.styleText(context),
                decoration:
                _styles.decoration(context, hintText: S.of(context).inputEmail),
                controller: _emailController,
                validator: (value) {
                  if (value == null || value.length < 4) {
                    //in plural  ICU one{...4....}
                    return S.of(context).inputEmptyError(4);
                  } else if (!EmailValidator.validate(value, true)) {
                    return S.of(context).inputEmailError;
                  }
                  return null;
                }),
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
                validator: (value) {
                  if (value == null || value.length < 8) {
                    return S.of(context).inputEmptyError(8);
                  }
                  return null;
                }),
            TextFormField(
              style: _styles.styleText(context),
              obscureText: _obscureText,
              decoration: _styles.decoration(context,
                  hintText: S.of(context).inputConfirmPassword, icon: true,    changeVisible: changeVisible),
              controller: _passConfirmController,
              validator: (value) {
                if (value == null || value.length < 8) {
                  return S.of(context).inputEmptyError(8);
                } else if (value.toString() != _passwordController.value.text) {
                  return S.of(context).inputPassConfirmError;
                }
                return null;
              },
              onFieldSubmitted: (value) {
                _formKey.currentState?.validate();
              },
            ),
            Container(

                width: 330,
                height: 50,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                    style: _styles.filledButtonStyle(context),
                    onPressed: _isEnableRegButton? () {
                    } : null,
                    child: Text(
                      S.of(context).register,
                    ))),
            Text(
              S.of(context).haveAcc,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  S.of(context).login,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall),
                )
          ],
        ),
      ),
    );
  }
}
