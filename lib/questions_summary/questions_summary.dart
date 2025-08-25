import 'package:adv_basics/questions_summary/summary_item.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summarydata, {super.key});

  final List<Map<String, Object>> summarydata;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summarydata.map((data) {
            return SummaryItem(data);
          }).toList(),
        ),
      ),
    );
  }
}
