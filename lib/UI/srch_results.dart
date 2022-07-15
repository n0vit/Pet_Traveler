import 'dart:io';

import 'package:flutter/material.dart';

class SearchResultsScreen extends StatelessWidget {
  const SearchResultsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('text'),
      ),
      body: Column(
        children: const [
          SearchComponent(),
          SizedBox(height: 10,),
          Chips(),
          SizedBox(height: 500, width:380,child: ResultListView())
        ],
      ),
    );
  }
}

class SearchComponent extends StatefulWidget {
  const SearchComponent({Key? key}) : super(key: key);

  @override
  State<SearchComponent> createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  InputDecoration _inputDecoration(context) {
    return InputDecoration(
      prefixIcon: Icon(
        Icons.search,
        color: Theme.of(context).colorScheme.inverseSurface,
      ),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: _inputDecoration(context),
    );
  }
}

class Chips extends StatelessWidget {
  const Chips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FilterChip(
            label: SizedBox(
                width: 80,
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Filters',
                      textAlign: TextAlign.center,
                    ),
                    Icon(Icons.tune)
                  ],
                )),
            onSelected: (bool isSelected) {}),
        FilterChip(
            label: SizedBox(
                width: 80,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Sorts', textAlign: TextAlign.center),
                    Icon(Icons.sort)
                  ],
                )),
            onSelected: (bool isSelected) {}),
      ],
    );
  }
}

class ResultListView extends StatelessWidget {
  const ResultListView({Key? key}) : super(key: key);

  _likes(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Text(
                '34',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(color: Theme.of(context).colorScheme.onPrimaryContainer),
              ),
              Icon(Icons.favorite_rounded,
                  color: Theme.of(context).colorScheme.onPrimaryContainer)
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context)  {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index)  {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Container(
                height: 140,
                width: 360,
                decoration: BoxDecoration(

            color: const Color(0xff7c94b6),
            image:  DecorationImage(
              image: FileImage(File("X://NovIT//kolzaza//downloads//wallpapers//1028306.png")),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8)
            ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Place Name',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text('\$  234 /per night ',
                        style: Theme.of(context).textTheme.titleSmall)
                  ]),
              _likes(context)
            ]),
          );
        });
  }
}
