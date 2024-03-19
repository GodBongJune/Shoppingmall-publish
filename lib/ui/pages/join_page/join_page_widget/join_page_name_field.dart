import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/constant/color.dart';

class JoinPageNameField extends StatelessWidget {
  final TextEditingController joinName;

  JoinPageNameField({super.key, required this.joinName});

  bool focusName = false;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Container(
          child: Column(
            children: [
              Focus(
                onFocusChange: (value) {
                  setState(() {
                    focusName = value;
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.09,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border:
                        Border.all(color: focusName ? kMainColor : kFontColor2),
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "이름",
                                  style: TextStyle(
                                    fontWeight: focusName
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                    color: focusName ? kMainColor : kFontColor2,
                                  ),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: joinName,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(5),
                                    ],
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    style: TextStyle(
                                        color: focusName
                                            ? kMainColor
                                            : kFontColor2,
                                        decorationThickness: 0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }
}
