import 'package:flutter/material.dart';
import 'package:klob_kb_apps/presentation/pages/kondisi_medis_penyerta/model/question_model.dart';
import 'package:klob_kb_apps/presentation/pages/kondisi_medis_penyerta/widget/question_widget.dart';
import 'package:klob_kb_apps/util/extensions/build_context_extensions.dart';
import 'package:klob_kb_apps/util/extensions/text_style_extensions.dart';

class KondisiMedisPenyertaPage extends StatefulWidget {
  const KondisiMedisPenyertaPage({super.key});

  @override
  State<KondisiMedisPenyertaPage> createState() =>
      _KondisiMedisPenyertaPageState();
}

class _KondisiMedisPenyertaPageState extends State<KondisiMedisPenyertaPage> {
  late List<Question> data;

  @override
  void initState() {
    super.initState();
    data = Question.getListQuestion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: ExpansionPanelList(
            animationDuration: const Duration(milliseconds: 600),
            elevation: 1,
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                data[index].isExpanded = isExpanded;
              });
            },
            children: data.map<ExpansionPanel>((question) {
              return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text(question.type,
                        style: context.titleMedium?.extraBold.greyDark),
                  );
                },
                body: QuestionWidget(
                  question: question,
                  onOptionSelected: (value) {
                    setState(() {
                      question.selectedOption = value;
                    });
                  },
                ),
                isExpanded: question.isExpanded,
              );
            }).toList(),
          ),
        ));
  }
}
