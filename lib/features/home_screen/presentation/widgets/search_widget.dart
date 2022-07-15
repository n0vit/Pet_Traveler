import 'package:flutter/material.dart';
import 'package:pet_traveler/features/home_screen/presentation/cubit/search_cubit.dart';
import 'package:pet_traveler/generated/l10n.dart';

class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = SearchCubit();
    return TextField(
      controller: _controller,
      enabled: true,
      maxLines: 1,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          suffixIcon: const Icon(Icons.search),
          hintText: S.of(context).homeSearch),
      onTap: () {
        cubit.changeState();
      },
      onEditingComplete: (){},

    );
  }
}
