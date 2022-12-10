/* Developed by Eng Mouaz M AlShahmeh */
import 'package:admin_dashboard_template/core/constants/color_constants.dart';
import 'package:admin_dashboard_template/core/widgets/app_button_widget.dart';
import 'package:admin_dashboard_template/core/widgets/input_widget.dart';
import 'package:admin_dashboard_template/screens/home/home_screen.dart';
import 'package:admin_dashboard_template/screens/login/components/slider_widget.dart';
import 'package:flutter/material.dart';
import '../../responsive.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.title});
  final String title;
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> with SingleTickerProviderStateMixin {
  var tweenLeft = Tween<Offset>(begin: const Offset(-2, 0), end: const Offset(0, 0))
      .chain(CurveTween(curve: Curves.ease));
  var tweenRight = Tween<Offset>(begin: const Offset(0, 0), end: const Offset(-2, 0))
      .chain(CurveTween(curve: Curves.ease));

  AnimationController? _animationController;

  var _isMoved = false;

  bool isChecked = false;
  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 750),
    );
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          Row(
            children: <Widget>[
              if (!Responsive.isMobile(context))
                Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width / 2,
                color: Colors.black,
                child: const SliderWidget(),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: Responsive.isMobile(context) ?
                MediaQuery.of(context).size.width :
                MediaQuery.of(context).size.width / 2,
                color: bgColor,
                child: Center(
                  child: Card(
                    elevation: 5,
                    color: bgColor,
                    child: Container(
                      padding: const EdgeInsets.all(42),
                      width: Responsive.isMobile(context) ?
                      MediaQuery.of(context).size.width / 1.5 :
                      MediaQuery.of(context).size.width / 3.6,
                      height: MediaQuery.of(context).size.height / 1.2,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 60,
                          ),
                          Image.asset("assets/logo/logo_icon.png", scale: 3),
                          const SizedBox(height: 24.0),
                          Flexible(
                            child: Stack(
                              children: [
                                SlideTransition(
                                  position:
                                      _animationController!.drive(tweenRight),
                                  child: Stack(
                                      fit: StackFit.loose,
                                      clipBehavior: Clip.none,
                                      children: [
                                        _loginScreen(context),
                                      ]),
                                ),
                                SlideTransition(
                                  position:
                                      _animationController!.drive(tweenLeft),
                                  child: Stack(
                                      fit: StackFit.loose,
                                      clipBehavior: Clip.none,
                                      children: [
                                        _registerScreen(context),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container _registerScreen(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height - 0.0,
      ),
      child: Form(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InputWidget(
                keyboardType: TextInputType.emailAddress,
                onSaved: (String? value) {},
                onChanged: (String? value) {},
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'لا تستخدم رمز @ .'
                      : null;
                },
                topLabel: "الاسم",
                hintText: "ادخل اسم",
              ),
              const SizedBox(height: 8.0),
              InputWidget(
                keyboardType: TextInputType.emailAddress,
                onSaved: (String? value) {},
                onChanged: (String? value) {},
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'لا تستخدم رمز @ .'
                      : null;
                },
                topLabel: "الاميل",
                hintText: "ادخل اميل",
              ),
              const SizedBox(height: 8.0),
              InputWidget(
                topLabel: "كلمة المرور",
                obscureText: true,
                hintText: "ادخل كلمة مرور",
                onSaved: (String? uPassword) {},
                onChanged: (String? value) {},
                validator: (String? value) {
                  return null;
                },
              ),
              const SizedBox(height: 24.0),
              AppButton(
                type: ButtonType.primary,
                text: "تسجيل جديد",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
              ),
              const SizedBox(height: 24.0),
              SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        const Text("تذكرني")
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24.0),
              Center(
                child: Wrap(
                  runAlignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "لديك حساب؟",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    TextButton(
                      onPressed: () {
                        if (_isMoved) {
                          _animationController!.reverse();
                        } else {
                          _animationController!.forward();
                        }
                        _isMoved = !_isMoved;
                      },
                      child: Text("تسجيل دخول",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontWeight: FontWeight.w400, color: greenColor)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _loginScreen(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height - 0.0,
      ),
      child: Form(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InputWidget(
                keyboardType: TextInputType.emailAddress,
                onSaved: (String? value) {},
                onChanged: (String? value) {},
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'لا تستخدم رمز @ .'
                      : null;
                },
                topLabel: "الاميل",
                hintText: "ادخل اميل",
              ),
              const SizedBox(height: 8.0),
              InputWidget(
                topLabel: "كلمة المرور",
                obscureText: true,
                hintText: "ادخل كلمة مرور",
                onSaved: (String? uPassword) {},
                onChanged: (String? value) {},
                validator: (String? value) {
                  return null;
                },
              ),
              const SizedBox(height: 24.0),
              AppButton(
                type: ButtonType.primary,
                text: "تسجيل دخول",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
              ),
              const SizedBox(height: 24.0),
              SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        const Text("تذكرني")
                      ],
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "نسيت كلمة المرور؟",
                          textAlign: TextAlign.right,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: greenColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24.0),
              Center(
                child: Wrap(
                  runAlignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "ليس لديك حساب؟",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    TextButton(
                      onPressed: () {
                        if (_isMoved) {
                          _animationController!.reverse();
                        } else {
                          _animationController!.forward();
                        }
                        _isMoved = !_isMoved;
                      },
                      child: Text("تسجيل جديد",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontWeight: FontWeight.w400, color: greenColor)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
