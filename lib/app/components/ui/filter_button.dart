import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final int index;
  final String label;
  final bool isSelected;

  const FilterButton(
      {super.key,
      required this.index,
      required this.label,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 10),
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : const Color(0xFFFF794F),
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
