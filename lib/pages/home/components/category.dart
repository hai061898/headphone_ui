import 'package:flutter/material.dart';

import '../../../constants.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  static const _filters = <String>[
    'All Products',
    'Recommended',
    'New Product',
    'Popular'
  ];

  String _selectedFilter = 'All Products';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24),
      height: 20,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ..._filters.map(
            (e) => Padding(
              padding: const EdgeInsets.only(right: 16),
              child: TextButton(
                onPressed: () => setState(() => _selectedFilter = e),
                child: Text(
                  e,
                  style: TextStyle(
                      color:
                          _selectedFilter == e ? backgroundWhite : Colors.grey,
                      fontSize: 12),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: _selectedFilter == e
                        ? Colors.redAccent
                        : Colors.transparent,
                    side: _selectedFilter != e
                        ? BorderSide(color: Colors.grey.shade300)
                        : null,
                    padding: EdgeInsets.all(4),
                    primary: Colors.red,
                    minimumSize: Size(100, 2)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
