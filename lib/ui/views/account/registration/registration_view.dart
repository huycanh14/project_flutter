import 'package:app_quanlynhanvien/app/router/router.gr.dart';
import 'package:app_quanlynhanvien/constants/background_const.dart';
import 'package:app_quanlynhanvien/constants/text_const.dart';
import 'package:app_quanlynhanvien/ui/views/account/registration/registration_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RegistrationView extends StatefulWidget {
  @override
  _RegistrationViewState createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        builder: (context, RegistrationViewModel model, child) => Scaffold(
            appBar: AppBar(
              title: Text("Tạo tài khoản"),
            ),
            body: Container(
              decoration: BG_SIGN_IN,
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextFormField(
                              controller: model.username,
                              validator: (value) {
                                return model.checkValidateUsername(value);
                              },
                              decoration: InputDecoration(
                                labelText: "Nhập tài khoản của bạn",
                                border: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(),
                                ),
                                icon: const Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: const Icon(Icons.email)),
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextFormField(
                              controller: model.password,
                              validator: (value) {
                                return model.checkValidatePassword(value);
                              },
                              decoration: InputDecoration(
                                labelText: "Nhập mật khẩu của bạn",
                                border: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(),
                                ),
                                icon: const Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: const Icon(Icons.lock)),
                                suffixIcon: IconButton(
                                    icon: model.iconPassword,
                                    onPressed: () => setState(() {
                                          model.clickIconPassword();
                                        })),
                              ),
                              obscureText: model.check,
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(20)),
                          Container(
                              width: MediaQuery.of(context).size.width * 1,
                              height: MediaQuery.of(context).size.height * 0.08,
                              child: RaisedButton(
                                onPressed: () => {
                                  if (_formKey.currentState.validate())
                                    {model.signUp(context)}
                                },
                                textColor: Colors.white,
                                color: Colors.lightGreen,
                                child: Text(
                                  'Tạo tài khoản',
                                  style: TextStyle(fontSize: 20),
                                ),
                                padding: EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () => Navigator.pushReplacementNamed(
                                  context, Routes.loginView),
                              child: Text(
                                'Đã có tài khoản, đăng nhập tài khoản',
                                style: TEXT_HOME_ROUTE,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
        viewModelBuilder: () => RegistrationViewModel());
  }
}
