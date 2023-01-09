import 'package:flutter/material.dart';
import 'package:party_today/app/components/styles/button_styles.dart';
import 'package:party_today/app/components/styles/color_styles.dart';

import '../components/ui/button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Form(
        key: formKey,
        child: Container(
          padding: const EdgeInsets.all(14),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.person,
                        size: 60,
                        color: context.colors.primary //Color(0xff21579C),
                        ),
                    const Text(
                      'Olá, Informe os seus dados',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: 'Nome Completo',
                          labelText: 'Nome Completo'),
                    ),
                    const SizedBox(height: 20),
                    const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: 'E-mail', labelText: 'E-mail'),
                    ),
                    const SizedBox(height: 20),
                    const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: 'Senha', labelText: 'Senha'),
                    ),
                    const SizedBox(height: 20),
                    const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: 'Confirmar Senha',
                          labelText: 'Confirmar Senha'),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Button(
                  label: 'Finalizar Cadastro',
                  width: MediaQuery.of(context).size.width * .9,
                  style: context.buttonStyles.orangeButton,
                  onPressed: () {},
                ),
                const SizedBox(height: 15),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 1.0,
                          width: 60.0,
                          color: Colors.black87,
                        ),
                      ),
                      const Text(
                        'Ou',
                        style: TextStyle(fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 1.0,
                          width: 60.0,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Image.asset('assets/images/google.png'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                            width: 50,
                            height: 50,
                            child: Image.asset('assets/images/facebook.png')),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text('Já possui conta? Faça o login'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
