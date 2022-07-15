
import 'package:flutter/material.dart';
import 'package:pet_traveler/UI/consts.dart';
import 'package:pet_traveler/generated/l10n.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  _category(BuildContext context, String nameCategory, String image) {
    return Column(
      children: [
        CircleAvatar(
          foregroundImage: AssetImage(image),
          radius: 38,
        ),
        Text(
          nameCategory,
          style: Theme
              .of(context)
              .textTheme
              .titleMedium,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S
            .of(context)
            .homePopularCategories,
            style: Theme
                .of(context)
                .textTheme
                .headlineSmall),
        const SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          _category(context, S
              .of(context)
              .homeCategoryTrips,
              CategoriesImage.tripCategory),
          _category(context, S
              .of(context)
              .homeCategoryHotel,
              CategoriesImage.hotelCategory),
          _category(context, S
              .of(context)
              .homeCategoryTransport,
              CategoriesImage.transportCategory),
        ]),
      ],
    );
  }
}
