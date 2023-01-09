import 'package:flutter/material.dart';
import 'package:party_today/app/components/styles/button_styles.dart';
import 'package:party_today/app/components/styles/color_styles.dart';
import 'package:party_today/app/components/ui/button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                const SizedBox(height: 60),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.person,
                        size: 60,
                        color: context.colors.primary //Color(0xff21579C),
                        ),
                    const Text(
                      'Bem-vindo(a)',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Faça o login para continuar',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),
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
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Esqueceu a senha?'),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Button(
                  label: 'Login',
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
                      Navigator.pushNamed(context, '/register');
                    },
                    child: const Text('Não possui conta? Cadastre-se'),
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
