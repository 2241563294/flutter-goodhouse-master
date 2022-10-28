import 'dart:io';

import 'package:flutter/material.dart';
import 'package:good_house/widgets/common_image.dart';
import 'package:image_picker/image_picker.dart';

const List<String> defaultImages = [
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tdgve1j30ku0bsn75.jpg',
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2whp87sj30ku0bstec.jpg',
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tl1v3bj30ku0bs77z.jpg',
];
// 设置图片宽高
var imageWidth = 750.0;
var imageHeight = 424.0;
var imageWidgetHeightRatio = imageWidth / imageHeight; //宽高比
class CommonImagePicker extends StatefulWidget {
  final ValueChanged<List<File>> onChanged;
  const CommonImagePicker({Key? key, required this.onChanged}) : super(key: key);

  @override
  State<CommonImagePicker> createState() => _CommonImagePickerState();
}

class _CommonImagePickerState extends State<CommonImagePicker> {
  List<File> files = [];
  _pickImage() async {
    XFile? xFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    print("点击了");
    if (xFile == null) return;
    setState(() {
      files.add(File(xFile.path));
    });
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / imageWidgetHeightRatio / 2;
    double height = width / imageWidgetHeightRatio;
    Widget addButton = GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: _pickImage,
      child: Container(
        width: width,
        height: height,
        color: Colors.teal,
        child: const Center(
          child: Text('+', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600,color: Colors.white),),
        ),
      ),
    );
    Widget wrapper(String imgUri) {
      return CommonImage(src: imgUri, width: width, height: height, fit: BoxFit.fill);
    }
    List<Widget> list = defaultImages.map((item) => wrapper(item)).toList()..add(addButton);
    Widget wrapperFile(File file) {
      return Stack(
        children: [
          Image.file(file, width: width, height: height, fit: BoxFit.fill),
          Positioned(
              right: -20,
              top: -20,
              child: IconButton(onPressed: (){},icon: Icon(Icons.delete_forever),)
          )
        ]
      );
    }
    List<Widget> fileList = files.map((file) => wrapperFile(file)).toList()..add(addButton);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: fileList,
      ),
    );
  }
}
