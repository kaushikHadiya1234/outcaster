import 'package:flutter/material.dart';
import 'package:outcaster/Android/Steper/Provider/Stepper_provider.dart';
import 'package:provider/provider.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({Key? key}) : super(key: key);

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {

  SteperProvider? pt;
  SteperProvider? pf;
  @override
  Widget build(BuildContext context) {
    pt = Provider.of<SteperProvider>(context, listen: true);
    pf = Provider.of<SteperProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Stepper App",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
        body: Theme(
          data: ThemeData(
              primarySwatch: Colors.red,
              accentColor: Colors.red
              // colorScheme: ColorScheme.light(
              //     primary: Colors.red
              // )
          ),
          child: Stepper(
            steps: [
              Step(
                title: Text("Sing Up"),
                content: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            prefixIcon: Icon(
                              Icons.person_outline,
                              color: Colors.grey,
                            ),
                            hintText: "Full Name"),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            prefixIcon: Icon(
                              Icons.mail_outline,
                              color: Colors.grey,
                            ),
                            hintText: "Email Id"),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.grey,
                            ),
                            hintText: "Password"),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.grey,
                            ),
                            hintText: "Conform Password"),
                      ),
                    ],
                  ),
                ),
              ),
              Step(
                title: Text("Login"),
                content: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            prefixIcon: Icon(
                              Icons.person_outline,
                              color: Colors.grey,
                            ),
                            hintText: "Full Name"),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.grey,
                            ),
                            hintText: "Password"),
                      ),
                    ],
                  ),
                ),
              ),
              Step(title: Text("Home"), content: Column())
            ],
            currentStep: pt!.i,
            onStepContinue: () {
              pf!.Nextstep1();
            },
            onStepCancel: () {
              pf!.Prestep1();
            },
          ),
        ),
      ),
    );
  }
}
