import 'package:flutter/material.dart';

class SliederView extends StatelessWidget {
  const SliederView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 27.6, bottom: 16.39),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Today',
                style: TextStyle(fontSize: 13.8, fontWeight: FontWeight.w700),
              ),
              Text(
                'Tumorrow',
                style: TextStyle(fontSize: 13.8, fontWeight: FontWeight.w400),
              ),
              Text(
                'Next 7 Days',
                style: TextStyle(fontSize: 13.8, fontWeight: FontWeight.w400),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 12,
                color: Color(0xff9A938C),
              )
            ],
          ),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
              trackHeight: 0.88,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 14)),
          child: Slider(
            activeColor: Colors.black,
            inactiveColor: Colors.black26,
            value: 100,
            max: 100,
            divisions: 5,
            label: "hello",
            onChanged: (double value) {},
          ),
        )
      ],
    );
  }
}
