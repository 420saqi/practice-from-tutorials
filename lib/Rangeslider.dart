import 'package:flutter/material.dart';

main()=> runApp(MyApp());
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
return MaterialApp(
  home: rangeSlider(),
);
  }

}
class rangeSlider extends StatefulWidget
{
  @override
  State<rangeSlider> createState() => _rangeSliderState();
}

class _rangeSliderState extends State<rangeSlider> {
  RangeValues valuestobeput = RangeValues(0, 1);

  @override
  Widget build(BuildContext context)
  {
    RangeLabels labelstobementioned= RangeLabels(valuestobeput.start.toString(), valuestobeput.end.toString());
    return Scaffold(
      body: RangeSlider(
        activeColor: Colors.red,
        inactiveColor: Colors.red.shade200,
        values: valuestobeput,
        divisions: 10,
        labels: labelstobementioned,
        min: 0,
        max: 100,
        onChanged: (RangeValues value) {
          valuestobeput =value ;
          print('${valuestobeput}');
          print('${valuestobeput.start}');
          print('${valuestobeput.end}');

          setState(() {

          });
        },
      ),
    );
  }
}