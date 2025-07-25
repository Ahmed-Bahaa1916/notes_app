import 'package:flutter/material.dart';

import '../../constents.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTap, this.isLoading = false});

  final void Function()? onTap;
  final bool isLoading;

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
          child: Center(
            child: (isLoading
                ? const CircularProgressIndicator(
                    color: Colors.black,
                  )
                : const Text(
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
