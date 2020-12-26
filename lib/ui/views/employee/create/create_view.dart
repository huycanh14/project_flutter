import 'package:app_quanlynhanvien/enums/EGender.dart';
import 'package:app_quanlynhanvien/enums/EPosition.dart';
import 'package:app_quanlynhanvien/ui/views/employee/create/create_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EmployeeCreateView extends StatefulWidget {
  @override
  _EmployeeCreateViewState createState() => _EmployeeCreateViewState();
}

class _EmployeeCreateViewState extends State<EmployeeCreateView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EmployeeCreateViewModel>.reactive(
      viewModelBuilder: () => EmployeeCreateViewModel(),
      builder: (
        BuildContext context,
        EmployeeCreateViewModel model,
        Widget child,
      ) {
        return Scaffold(
            appBar: AppBar(
              title: Text("Thêm nhân viên mới"),
            ),
            body: Container(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: TextFormField(
                              controller: model.name,
                              validator: (value) {
                                return model.checkValidate(value);
                              },
                              decoration: InputDecoration(
                                labelText: "Nhập tên của nhân viên",
                                border: new OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(),
                                ),
                                icon: const Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Giới tính",
                                      style: TextStyle(fontSize: 18.0),
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ButtonBar(
                                      // alignment: MainAxisAlignment.center,
                                      children: [
                                        Radio(
                                          value: EGender.male,
                                          groupValue: model.gender,
                                          onChanged: (value) {
                                            setState(() {
                                              model.gender = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          "Nam",
                                          style: TextStyle(fontSize: 18.0),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ButtonBar(
                                      // alignment: MainAxisAlignment.center,
                                      children: [
                                        Radio(
                                          value: EGender.female,
                                          groupValue: model.gender,
                                          onChanged: (value) {
                                            setState(() {
                                              model.gender = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          "Nữ",
                                          style: TextStyle(fontSize: 18.0),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Chức vụ",
                                      style: TextStyle(fontSize: 18.0),
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ButtonBar(
                                      children: [
                                        Radio(
                                          value: EPosition.deputy,
                                          groupValue: model.po,
                                          onChanged: (value) {
                                            setState(() {
                                              model.po = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          "Phó giám đốc",
                                          style: TextStyle(fontSize: 18.0),
                                        )
                                      ],
                                    ),
                                    ButtonBar(
                                      children: [
                                        Radio(
                                          value: EPosition.manager,
                                          groupValue: model.po,
                                          onChanged: (value) {
                                            setState(() {
                                              model.po = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          "Trưởng phòng",
                                          style: TextStyle(fontSize: 18.0),
                                        )
                                      ],
                                    ),
                                    ButtonBar(
                                      children: [
                                        Radio(
                                          value: EPosition.employee,
                                          groupValue: model.po,
                                          onChanged: (value) {
                                            setState(() {
                                              model.po = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          "Nhân viên",
                                          style: TextStyle(fontSize: 18.0),
                                        )
                                      ],
                                    ),
                                    ButtonBar(
                                      children: [
                                        Radio(
                                          value: EPosition.trainee,
                                          groupValue: model.po,
                                          onChanged: (value) {
                                            setState(() {
                                              model.po = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          "Thực tập sinh",
                                          style: TextStyle(fontSize: 18.0),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),

                          Padding(padding: EdgeInsets.all(20)),
                          Container(
                              width: MediaQuery.of(context).size.width * 1,
                              height: MediaQuery.of(context).size.height * 0.08,
                              child: RaisedButton(
                                onPressed: () => {
                                  if (_formKey.currentState.validate())
                                    {model.createEmployee(context)}
                                },
                                textColor: Colors.white,
                                color: Colors.lightGreen,
                                child: Text(
                                  'Tạo nhân viên',
                                  style: TextStyle(fontSize: 20),
                                ),
                                padding: EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              )),
                        ],
                      ),
                    )
                  ],
                ))));
      },
    );
  }
}
