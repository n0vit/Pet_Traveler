import 'package:flutter/material.dart';
import 'package:pet_traveler/features/home_screen/presentation/widgets/category_widget.dart';
import 'package:pet_traveler/features/home_screen/presentation/widgets/search_widget.dart';
import 'package:pet_traveler/generated/l10n.dart';


enum EnumCategories {trip, hotel, transport}

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33),
        child: CustomScrollView(
            controller: _customScrollController,
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                flexibleSpace: Text(
                  S.of(context).homeHeadline,
                  style: Theme.of(context).textTheme.displaySmall,
                  maxLines: 2,
                ),
                toolbarHeight: 20,
                collapsedHeight: 30,
                expandedHeight: 120,
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                const SearchField(),
                const SizedBox(
                  height: 60,
                ),
                const Categories()
              ]))
            ]),
      ),
    );
  }
}
