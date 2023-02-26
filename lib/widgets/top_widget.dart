import 'package:flutter/material.dart';
import 'package:samosa_app/themes/colors.dart';
import 'package:samosa_app/widgets/custom_app_bar.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(onTap: () {}),
        const Padding(
          padding: EdgeInsets.only(left: 32.0, top: 32),
          child: Text(
            'Types Of Samosa',
            style: TextStyle(
                color: lightWhite, fontSize: 36.0, fontWeight: FontWeight.w600),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 32.0),
          child: Text(
            'Select your favorite samosa dish',
            softWrap: true,
            style: TextStyle(
              color: lightWhite,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 32),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: ClipRRect(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  borderRadius: BorderRadius.circular(32.0),
                  child: const Divider(
                    color: veryLightOrange,
                    thickness: 8.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 32),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.15,
                child: ClipRRect(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  borderRadius: BorderRadius.circular(32.0),
                  child: const Divider(
                    color: lightGrey,
                    thickness: 8.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 32),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.15,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(32.0),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: const Divider(
                    color: lightGrey,
                    thickness: 8.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
