import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shopsmart_users_en/widgets/subtitle_text.dart';

class QuantityBottomSheetWidget extends StatelessWidget {
  const QuantityBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Single child scroll view was used
    return Column(
      children: [
        SizedBox(height: 20),
        Container(
          height: 6,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            // physics: NeverScrollableScrollPhysics(),
            // shrinkWrap: true,
            itemCount: 25,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  log("index $index tapped");
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SubtitleTextWidget(label: "${index + 1}"),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
