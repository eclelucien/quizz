import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizz/api/api_service.dart';
import 'package:quizz/models/createRequest.dart';
import 'package:quizz/models/loginModel.dart';
import 'package:quizz/models/users.dart';
import 'package:quizz/progressHud.dart';
import 'package:quizz/screens/gameplay.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> globalFormKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  bool hidePassword = true;
  LoginRequestModel requestModel = LoginRequestModel();
  CreateRequest createModel = CreateRequest();
  Users user;
  bool isAPICallProcess = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: scaffoldKey,
      body: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            gradient: RadialGradient(
          colors: [Colors.yellow, Colors.orangeAccent],
        )),
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Connecter',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Form(
                  key: globalFormKey,
                  child: Column(
                    children: [
                      TextFormField(
                        onSaved: (input) => requestModel.email = input,
                        validator: (input) =>
                            input.length < 3 ? "Entrez un email valid" : null,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Email',
                          suffixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        validator: (input) => input.length < 3
                            ? 'Entrez un password valide'
                            : null,
                        onSaved: (input) => requestModel.password = input,
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            icon: Icon(hidePassword
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                hidePassword = !hidePassword;
                              });
                            },
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RaisedButton(
                          child: Text('Connect'),
                          color: Colors.green,
                          textColor: Colors.white,
                          onPressed: () {
                            print("okokok");
                            _pressLog();
                          },
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Créer un compte',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    onSaved: (input) => createModel.name = input,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Nom',
                      suffixIcon: Icon(Icons.manage_accounts),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    onSaved: (input) => createModel.email = input,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Email',
                      suffixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    onSaved: (input) => createModel.password = input,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.visibility_off),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                  ),
                  RaisedButton(
                      child: Text('Créer'),
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        _pressCreate();
                      }),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  _pressLog() {
    if (validadeAndSave()) {
      print('entrou na validação');
      setState(() {
        print('chamou o estado da API');

        isAPICallProcess = true;
      });
      APIService apiService = new APIService();

      apiService.login(requestModel).then((value) {
        print(value);
        print('voltou da validacao');

        setState(() {
          isAPICallProcess = false;
        });
        if (value == null) {
          final snackBar = SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                'Incorrect username or password',
                style: TextStyle(fontFamily: 'Nexa-Bold'),
                textAlign: TextAlign.center,
              ));

          print('errrouuuuu');

          scaffoldKey.currentState;

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }

        if (value.accessToken != '') {
          print("Estamos indo");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Playing()));
        }
      });
    }
  }

  _pressCreate() {
    if (validadeAndSave()) {
      print('entrou na validação');
      setState(() {
        print('chamou o estado da API');

        isAPICallProcess = true;
      });
      APIService apiService = new APIService();

      apiService.create(createModel).then((value) {
        print(value);
        print('voltou da validacao');

        setState(() {
          isAPICallProcess = false;
        });
        if (value == null) {
          final snackBar = SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                'Incorrect username or password',
                style: TextStyle(fontFamily: 'Nexa-Bold'),
                textAlign: TextAlign.center,
              ));

          print('errrouuuuu');

          scaffoldKey.currentState;

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }

        if (value.accessToken != '') {
          print("Estamos indo");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Playing()));
        }
      });
    }
  }

  bool validadeAndSave() {
    ///função booleana para a validação do botão
    final form = globalFormKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
