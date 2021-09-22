import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {


  final String labelItem;
  final IconData iconItem;
  final Function onClickItem;
  /// => Displays options from a container-based menu
  const ItemMenu({Key? key,
    required this.onClickItem,
    required this.labelItem,
    required this.iconItem,
  }): super (key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        child: InkWell(
          onTap: () => onClickItem(),
          child: Container(
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.center,
            width: 120,
            height: 100,
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  iconItem,
                  color: Colors.white,
                  size: 24,
                ),
                Text(
                  labelItem,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
