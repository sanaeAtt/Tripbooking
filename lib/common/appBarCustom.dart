import 'package:flutter/material.dart';
import 'package:trip_booking2/utils/constants/Colors.dart';

class AppbarCustoms extends StatelessWidget implements PreferredSizeWidget {
  const AppbarCustoms({
    super.key,
    this.title,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  });
  final Widget? title;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: leadingOnPressed,
          icon: Icon(
            leadingIcon,
            color: MyColor.black,
          )),
      title: title,
      actions: actions,
      backgroundColor: MyColor.primaru,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
