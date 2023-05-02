import 'package:cms/config/image.dart';
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(DEFAULT_AVATAR);
  }
}
