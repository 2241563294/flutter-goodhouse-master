import 'package:flutter/material.dart';
import 'package:good_house/widgets/common_image.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.teal
      ),
      height: 95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 65,
            height: 65,
            margin: const EdgeInsets.only(left: 20,right: 15),
            child: const CircleAvatar(
                backgroundImage: AssetImage("static/images/home_profile_user.png")
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("登录/注册", style: TextStyle(color: Colors.white,fontSize: 20),),
              Text("登陆后可以体验更多", style: TextStyle(color: Colors.white),)
            ],
          )
        ],
      ),
    );
  }
}
