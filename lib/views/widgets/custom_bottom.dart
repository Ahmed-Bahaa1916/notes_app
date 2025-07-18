import 'package:flutter/material.dart';

import '../../constents.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 55,
          decoration: BoxDecoration(
            color: KPrimaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: (Text(
              'Add',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            )),
          )),
    );
  }
}
