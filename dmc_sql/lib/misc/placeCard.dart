import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceCard extends StatefulWidget {
  final String name;
  final String assetPath;

  PlaceCard({required this.name, required this.assetPath});

  @override
  _PlaceCardState createState() => _PlaceCardState();
}

class _PlaceCardState extends State<PlaceCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 100.0,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              widget.assetPath,
              height: double.maxFinite,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          // Add a semi-transparent gray container to cover the entire image
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black.withOpacity(0.4),
            ),
            width: double.infinity,
            height: double.maxFinite,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                widget.name,
                style: GoogleFonts.mPlusRounded1c(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),const SizedBox(height: 30.0),
        ],
      ),
    );
  }
}
