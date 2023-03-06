import 'package:flutter/material.dart';
import '../widgets/widgets_exports.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Logo(),
              _Form(),
              Labels(
                  ruta: 'login',
                  title: '¿Ya tienes una cuenta?',
                  subtitle: 'Ingresa con tu cuenta'),
              Text(
                'Términos y condiciones de uso',
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form();

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.15),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.person,
            placeholder: 'Nombre',
            keyboardType: TextInputType.text,
            textController: nameCtrl,
          ),
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Email',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icons.key_sharp,
            placeholder: 'Password',
            isPassword: true,
            textController: passCtrl,
          ),
          const SizedBox(height: 10),
          BlueCustomButton(
            label: 'Login',
            onPressed: () {
              print(nameCtrl.text);
            },
          )
        ],
      ),
    );
  }
}
