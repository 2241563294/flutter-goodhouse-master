import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("注册"),
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
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "密码",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all( Radius.circular(20))
                  ),
              ),
            ),
            const SizedBox(height: 20,),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "确认密码",
                  hintText: "确认密码",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all( Radius.circular(20))
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
                child: const Text("注册"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("已有账号，"),
                TextButton(onPressed: () => Navigator.pushReplacementNamed(context, '/login'), child: const Text("去登录~"))
              ],
            )
          ],
        ),
      ),
    );
  }
}



