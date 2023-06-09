import 'package:flutter/material.dart';

import 'color.dart';

class SettingItem extends StatelessWidget {
  final IconData? leadingIcon;
  final Color? leadingIconColor;
  final String title;
  final GestureTapCallback? onTap;
  const SettingItem(
      {Key? key,
      required this.title,
      this.onTap,
      this.leadingIcon,
      this.leadingIconColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: cardColor,
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: leadingIcon != null
                ? [
                    Container(
                      padding: const EdgeInsets.all(0),
                      decoration: const BoxDecoration(
                        color: cardColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        leadingIcon,
                        size: 33,
                        color: leadingIconColor,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: labelColor,
                      size: 14,
                    )
                  ]
                : [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
          ),
        ),
      ),
    );
  }
}
