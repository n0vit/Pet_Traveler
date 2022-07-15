import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _customScrollController;

  @override
  void initState() {
    super.initState();
    _customScrollController = ScrollController(debugLabel: 'Custom!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        actions: [
          IconButton(
              splashRadius: 10,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              onPressed: () {},
              icon: const Icon(Icons.notifications))
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 33),
        child: CardView(),
      ),
    );
  }
}


class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  _card(BuildContext context, String namePlace, String startPrice) {
    return SizedBox(
      width: 205,
      height: 250,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        clipBehavior: Clip.hardEdge,
        child: Stack(
          children: [
            Image.network(
                'https://images.unsplash.com/photo-1559128010-7c1ad6e1b6a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aXNsYW5kfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
                height: 200,
                width: 205,
                fit: BoxFit.fitHeight),
            Positioned(
                bottom: 18,
                left: 10,
                child: Text(
                  'Smth place',
                  style: Theme.of(context).textTheme.titleMedium,
                  overflow: TextOverflow.clip,
                )),
            Positioned(
                bottom: 0,
                left: 10,
                child: Text(
                  'Start price \$1500',
                  style: Theme.of(context).textTheme.bodyLarge,
                  overflow: TextOverflow.clip,
                )),
            const Positioned(bottom: 0, right: 10, child: LikeButton())
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 250,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          _card(context, 'dwed', 'over 3000 \$'),
          _card(context, 'dwed', 'over 3000 \$'),
          _card(context, 'dwed', 'over 3000 \$'),
          _card(context, 'dwed', 'over 3000 \$'),
          _card(context, 'dwed', 'over 3000 \$'),
          _card(context, 'dwed', 'over 3000 \$'),
          _card(context, 'dwed', 'over 3000 \$'),
          _card(context, 'dwed', 'over 3000 \$'),
          _card(context, 'dwed', 'over 3000 \$'),
          _card(context, 'dwed', 'over 3000 \$'),
        ],
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({Key? key}) : super(key: key);

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

bool isLiked = false;

class _LikeButtonState extends State<LikeButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        splashRadius: 10,
        onPressed: () {
          setState(() {
            isLiked = !isLiked;
          });
        },
        icon: Icon(
          isLiked ? Icons.favorite_rounded : Icons.favorite_outline_rounded,
          size: 24,
        ));
  }
}
