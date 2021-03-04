import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/framework/colors.dart';
import 'package:flutter_web_practice/core/framework/decorations.dart';
import 'package:flutter_web_practice/widgets/primary_button.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  // Key del formualrio para validarlo.
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  // Valores de los textField.
  String _email = '';
  String _password = '';

  // FocusNode de los textField.
  final FocusNode _emailNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();

  // Loading indicator
  bool _isLoading = false;
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: kIsWeb ? loginImageDecoration : loginMobileDecoration,
          child: Center(
            child: SingleChildScrollView(
              child: _isLoading
                  ? _buildLoading()
                  : kIsWeb
                      ? _buildWebContent()
                      : _buildContent(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWebContent() {
    return Column(
      children: [
        _buildContent(),
        SizedBox(height: 80),
        Text(
          '©Green Goblin Technology, Todos los derechos reservados',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }

  Widget _buildLoading() {
    final size = MediaQuery.of(context).size;

    return Center(
      child: Container(
        alignment: Alignment.center,
        width: size.width * 0.8,
        height: size.height * 0.1,
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: boxSahdow),
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildContent() {
    return Center(
      child: Container(
        width: kIsWeb ? 335 : double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 30.0),
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: boxSahdow),
        child: _buildForm(),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          Image(
            image: AssetImage('assets/img/logo.png'),
            fit: BoxFit.cover,
            height: 80,
          ),
          SizedBox(height: 20),
          Text('Iniciar sesión', style: Theme.of(context).textTheme.headline3),
          SizedBox(height: 20),
          _emailField(),
          SizedBox(height: 20),
          _passwordField(),
          SizedBox(height: 20),
          Container(
              width: MediaQuery.of(context).size.width,
              child:
                  PrimaryButton(onPressed: _submit, title: 'Iniciar sesión')),
          SizedBox(height: 20),
          FlatButton(
              onPressed: () => Navigator.of(context)
                  .pushNamedAndRemoveUntil('/signin', (route) => false),
              child: Text(
                'Crear una cuenta',
                style: Theme.of(context).textTheme.bodyText1,
              ))
        ],
      ),
    );
  }

  Widget _emailField() {
    return TextFormField(
      controller: _emailController,
      style: Theme.of(context).textTheme.bodyText1,
      cursorColor: primary,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      focusNode: _emailNode,
      onFieldSubmitted: (term) {
        _emailNode.unfocus();
        FocusScope.of(context).requestFocus(_passwordNode);
      },
      decoration: InputDecoration(
        hintText: 'Email',
        suffixIcon: IconButton(
          icon: Icon(Icons.cancel, color: Colors.black.withOpacity(0.3)),
          onPressed: () => _emailController.clear(),
        ),
      ),
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _passwordField() {
    return TextFormField(
      style: Theme.of(context).textTheme.bodyText1,
      textInputAction: TextInputAction.done,
      obscureText: _obscure,
      focusNode: _passwordNode,
      onFieldSubmitted: (term) {
        // El boton de enter nos permite hacer submit de login.
        _submit();
      },
      decoration: InputDecoration(
        hintText: 'Contraseña',
        suffixIcon: IconButton(
          icon: Icon(_obscure ? Icons.visibility : Icons.visibility_off,
              color: Colors.black.withOpacity(0.3)),
          onPressed: () {
            setState(() {
              _obscure = !_obscure;
            });
          },
        ),
      ),
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  _submit() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      setState(() => _isLoading = true);

      print('Haciendo login');
    }
  }

  showAlertDialog(BuildContext context, String message) {
    Widget okButton = FlatButton(
      child: Text('Aceptar'),
      onPressed: () => Navigator.of(context).pop(),
    );

    AlertDialog alert = AlertDialog(
      title: Text('Error'),
      content: Text(message),
      actions: [
        okButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
