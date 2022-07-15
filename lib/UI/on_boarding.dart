import 'package:flutter/material.dart';
import 'package:pet_traveler/UI/consts.dart';
import 'package:pet_traveler/UI/features/custom_page_indicator.dart';
import 'package:pet_traveler/generated/l10n.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void listen() {
    _tabController.addListener(() {
      setState(() {
        _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    listen();
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 600,
            child: TabBarView(
              physics: const BouncingScrollPhysics(),
              controller: _tabController,
              children: [
                TabItem(
                  image: OnBoardingConstants.onBoardImage1,
                  title: S.of(context).onBoardTitle1,
                  text: S.of(context).onBoardText1,
                ),
                TabItem(
                  image: OnBoardingConstants.onBoardImage2,
                  title: S.of(context).onBoardTitle2,
                  text: S.of(context).onBoardText2,
                ),
                TabItem(
                  image: OnBoardingConstants.onBoardImage3,
                  title: S.of(context).onBoardTitle3,
                  text: S.of(context).onBoardText3,
                )
              ],
            ),
          ),
          CustomTabPageSelector(
            controller: _tabController,
            width: 30,
            selectedWidth: 60,
          )
        ],
      )),
      floatingActionButton: _tabController.index == 2
          ? FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.navigate_next),
            )
          : null,
    );
  }
}





class TabItem extends StatelessWidget {
  final String image;
  final String title;
  final String text;

  const TabItem(
      {Key? key, required this.image, required this.title, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          const SizedBox(
            height: 50,
          ),
          Text(title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
