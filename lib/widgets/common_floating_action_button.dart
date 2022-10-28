import 'package:flutter/material.dart';

class CommonFloatingActionButton extends StatelessWidget {
  final String title;
  final void Function() onTap;
  const CommonFloatingActionButton({Key? key, required this.title, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.6,
        height: 40,
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Text(title, style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
      ),
    );
  }
}
