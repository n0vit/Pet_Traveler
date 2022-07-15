
import "package:flutter/material.dart";
import 'package:pet_traveler/UI/consts.dart';
import 'package:pet_traveler/features/book_screen/presentation/widgets/bottom_overview_widget.dart';


class BookNowScreen extends StatelessWidget {
  const BookNowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
            height: size.height,
            width: size.width,
            child: Stack(
              alignment: Alignment.topCenter,
              children: const [
                BookNowCarousel(),
                // Positioned(
                //   top: 400,
                //   child: BottomScreenOverView(
                //       title: 'Paris, France ',
                //       cost: '\$1000',
                //       textOverview:
                //           'Paris possesses a rich and attractive cultural scene with shows, activities and festivals.',
                //       duration: '5 Days',
                //       distance: '625 KM',
                //       weather: '21 °C'),
                // )
              ],
            )),
        bottomSheet: BottomSheet(enableDrag: false,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
          backgroundColor: Colors.amber,
          builder: (BuildContext context) {
          // TODO: remove text
            return BottomScreenOverView(
                title: 'Paris, France ',
                cost: '\$1000',
                textOverview:
                    'Paris possesses a rich and attractive cultural scene with shows, activities and festivals.',
                duration: '5 Days',
                distance: '625 KM',
                weather: '21 °C');
          },
          onClosing: () {},
        ),
      ),
    );
  }
}

class BookNowCarousel extends StatefulWidget {
  const BookNowCarousel({Key? key}) : super(key: key);

  @override
  State<BookNowCarousel> createState() => _BookNowCarouselState();
}

class _BookNowCarouselState extends State<BookNowCarousel>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: BookNowOverView.photos.length, vsync: this);
  }

  void listen() {
    _tabController.addListener(() {
      setState(() {
        _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  bool isFavorite = false;

  _changeButtonState() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Stack(alignment: Alignment.center, children: [
        TabBarView(
          physics: const BouncingScrollPhysics(),
          controller: _tabController,
          children: BookNowOverView.photos
              .map((image) => Image.network(
                    image,
                    fit: BoxFit.cover,
                    height: 500,
                  ))
              .toList(),
        ),
        Positioned(
            bottom: 118,
            child: TabPageSelector(
              controller: _tabController,
              selectedColor: Colors.white,
              color: Colors.white38,
            )),
        Positioned(
            top: 25,
            left: 28,
            child: ElevatedButton(
                onPressed: () {}, child: const Icon(Icons.arrow_back))),
        Positioned(
            top: 25,
            right: 28,
            child: ElevatedButton(
                onPressed: _changeButtonState,
                child: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_outline))),
      ]),
    );
  }
}
