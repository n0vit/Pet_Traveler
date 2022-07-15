import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pet_traveler/UI/features/topics.dart';
import 'package:pet_traveler/generated/l10n.dart';

class BottomScreenOverView extends StatelessWidget {
  const BottomScreenOverView(
      {Key? key,
        required this.title,
        required this.cost,
        required this.textOverview,
        required this.duration,
        required this.distance,
        required this.weather})
      : super(key: key);
  final String title;
  final String cost;
  final String textOverview;
  final String duration;
  final String distance;
  final String weather;

  _iconsWithText(
      BuildContext context, IconData icon, String text, Color? iconColor) {
    return RichText(
      text: TextSpan(
        children: [
          WidgetSpan(
            child: Icon(
              icon,
              size: 18,
              color: iconColor,
            ),
          ),
          TextSpan(
              text: text,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onBackground)),
        ],
      ),
    );
  }

  _description(BuildContext context, String text) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(text: text, style: Theme.of(context).textTheme.bodyMedium),
        TextSpan(
            text: S.of(context).more,
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Theme.of(context).primaryColor),
            mouseCursor: MaterialStateMouseCursor.textable,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print('More has tapped');
              })
      ]),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height - 460,
        // decoration: BoxDecoration(
        //   color: Theme.of(context).scaffoldBackgroundColor,
        //   borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
        // ),
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      cost,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.green),
                    ),
                  ],
                ),
              ),
              Topics(
                topicNames: [
                  S.of(context).bookTabOverview,
                  S.of(context).bookTabDetails,
                  S.of(context).bookTabCosts
                ],
                spacing: 20,
              ),
              _description(context, textOverview),
              Wrap(
                alignment: WrapAlignment.spaceAround,
                spacing: 30,
                children: [
                  _iconsWithText(
                      context, Icons.watch_later, duration, Colors.blueAccent),
                  _iconsWithText(context, Icons.location_on, distance, Colors.green.shade200),
                  _iconsWithText(context, Icons.sunny, weather, Colors.amber),
                  Text(S.of(context).duration),
                  Text(S.of(context).distance),
                  Text(S.of(context).weatherSunny)
                ],
              ),
              SizedBox(
                  width: 200,
                  height: 45,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text(S.of(context).bookNow))),
              const SizedBox(height: 10,)
            ]));
  }
}
