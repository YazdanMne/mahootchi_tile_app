import 'package:flutter/material.dart';
import 'package:mahootchi_shop/models/customer.dart';
import 'package:mahootchi_shop/service/api_service.dart';
import 'package:mahootchi_shop/utils/ProgressHUD.dart';
import 'package:mahootchi_shop/utils/form_helper.dart';
import 'package:mahootchi_shop/utils/validator_service.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late APIService apiService;
  late CustomerModel model;
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  bool hidePassword = true;
  bool isApiCallProcess = false;

  @override
  void initState() {
    super.initState();
    apiService = APIService();
    model = CustomerModel(
      email: '',
      firstName: '',
      lastName: '',
      password: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProgressHUD(
        inAsyncCall: isApiCallProcess,
        opacity: 0.3,
        color: Colors.black,
        child: Form(
          key: globalKey,
          child: _formUI(),
        ),
      ),
    );
  }

  Widget _formUI() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FormHelper.fieldLabel("First name"),
          FormHelper.textInput(
              context,
              model.firstName,
              (value) => {
                    this.model.firstName = value,
                  }, onValidate: (value) {
            if (value.toString().isEmpty) {
              return 'please enter first name';
            }
            return null;
          }),
          FormHelper.fieldLabel('last name'),
          FormHelper.textInput(
              context,
              model.lastName,
              (value) => {
                    this.model.lastName = value,
                  }, onValidate: (value) {
            if (value.toString().isEmpty) {
              return 'please enter first name';
            }
            return null;
          }),
          FormHelper.fieldLabel('Email id'),
          FormHelper.textInput(
              context,
              model.email,
              (value) => {
                    this.model.email = value,
                  }, onValidate: (value) {
            if (value.toString().isEmpty) {
              return 'please enter email id';
            }
            if (value!.isNotEmpty && !value.toString().isValidEmail()) {
              return 'please enter valid email id';
            }
            return null;
          }),
          FormHelper.fieldLabel('password'),
          FormHelper.textInput(
            context,
            model.password,
            (value) => {
              this.model.password = value,
            },
            onValidate: (value) {
              if (value.toString().isEmpty) {
                return 'please enter password';
              }
              return null;
            },
            obscureText: hidePassword,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  hidePassword = !hidePassword;
                });
              },
              color: Colors.blue.withOpacity(0.5),
              icon: Icon(hidePassword
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined),
            ),
          ),
          const SizedBox(height: 20),
          FormHelper.saveButton(
            "Register",
            () {
              if (validateAndSave()) {
                print(model.toJson());
                setState(() {
                  isApiCallProcess = true;
                });

                apiService.createCustomer(model).then((ret) {
                  setState(() {
                    isApiCallProcess = false;
                  });
                  if (ret) {
                    FormHelper.showMessage(context, 'mahootchi tile',
                        'Registeration Successfull', 'Ok', () {
                      Navigator.of(context).pop();
                    });
                  } else {
                    FormHelper.showMessage(context, 'Mahootchi tile',
                        'Email Id already registered', 'Ok', () {
                      Navigator.of(context).pop();
                    });
                  }
                });
              }
            },
            color: Colors.blue,
            textColor: Colors.white,
            fullWidth: false,
          ),
          /*
          TextFormField(
            decoration: const InputDecoration(labelText: "Email"),
            onSaved: (value) => model.email = value ?? '',
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: "First Name"),
            onSaved: (value) => model.firstName = value ?? '',
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: "Last Name"),
            onSaved: (value) => model.lastName = value ?? '',
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: "Password"),
            obscureText: hidePassword,
            onSaved: (value) => model.password = value ?? '',
          ),
          */

          /*
          ElevatedButton(
            onPressed: () {
              if (globalKey.currentState?.validate() ?? false) {
                globalKey.currentState?.save();
                setState(() {
                  isApiCallProcess = true;
                });

                // فراخوانی API
                apiService.createCustomer(model).then((response) {
                  setState(() {
                    isApiCallProcess = false;
                  });
                  if (response != null) {
                    // موفقیت‌آمیز
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Sign Up Successful')),
                    );
                  } else {
                    // خطا
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Sign Up Failed')),
                    );
                  }
                });
              }
            },
            child: const Text("Sign Up"),
          ),
          */
        ],
      ),
    );
  }

  bool validateAndSave() {
    final form = globalKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
