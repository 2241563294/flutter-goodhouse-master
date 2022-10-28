import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("登录"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const TextField(
              decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "请输入用户名",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all( Radius.circular(20))
                  )
              ),
            ),
            const SizedBox(height: 20,),
            TextField(
              obscureText: showPassword,
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "请输入密码",
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all( Radius.circular(20))
                  ),
                suffixIcon: IconButton(
                  icon: Icon(showPassword ? Icons.visibility_off : Icons.visibility),
                  onPressed: () => setState(() => showPassword = !showPassword),
                )
              ),
            ),
            const SizedBox(height: 15,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    textStyle: const TextStyle(
                        fontSize: 18
                    )
                ),
                child: const Text("登录"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("还没有注册账号，"),
                TextButton(onPressed: () => Navigator.pushReplacementNamed(context, 'register'), child: const Text("去注册~"))
              ],
            )
          ],
        ),
      ),
    );
  }
}



