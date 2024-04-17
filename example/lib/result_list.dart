import 'package:anyline_plugin_example/result.dart';
import 'package:anyline_plugin_example/routes.dart';
import 'package:anyline_plugin_example/scan_modes.dart';
import 'package:anyline_plugin_example/styles.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'date_helpers.dart';

class ResultList extends StatelessWidget {
  final List<Result> results;

  ResultList(this.results);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: results.length > 0
          ? ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: results.length,
              itemBuilder: (BuildContext ctx, int index) {
                DateTime timestamp = results[index].timestamp;
                String timestampString = timestamp.isToday()
                    ? 'Today, ${timestamp.formatHHmm()}'
                    : timestamp.isYesterday()
                        ? 'Yesterday, ${timestamp.formatHHmm()}'
                        : timestamp.formatDMYHHmm();

                return results[index].scanMode.isCompositeScan()
                    ? CompositeResultListItem(
                        result: results[index], timestamp: timestampString)
                    : ResultListItem(
                        result: results[index], timestamp: timestampString);
              })
          : Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 35),
              child: Text(
                'Empty history',
                style: TextStyle(color: Colors.grey),
              ),
            ),
    );
  }
}

class CompositeResultListItem extends StatelessWidget {
  final Result result;
  final String timestamp;

  CompositeResultListItem({required this.result, required this.timestamp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextButton(
          style: Styles.flatButtonStyle,
          onPressed: () {
            Navigator.pushNamed(context, Routes.compositeResultDisplay,
                arguments: result);
          },
          child: Stack(
            children: [
              Positioned(
                bottom: -15,
                right: -5,
                child: Opacity(
                  opacity: 0.25,
                  child: Text('Result',
                      style: TextStyles.resultsBackgroundTextStyle),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  ListTile(
                      dense: true,
                      title: Text(
                        result.scanMode.label,
                        style: TextStyles.labelTextStyle,
                      ),
                      subtitle: Text(
                        timestamp,
                        style: TextStyles.timeStampTextStyle,
                      )),
                ],
              ),
            ],
          )),
    );
  }
}

class ResultListItem extends StatelessWidget {
  final Result result;
  final String timestamp;

  ResultListItem({required this.result, required this.timestamp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextButton(
          style: Styles.resultsButtonStyle,
          onPressed: () {
            Navigator.pushNamed(context, Routes.resultDisplay,
                arguments: result);
          },
          child: Stack(
            children: [
              Positioned(
                bottom: -15,
                right: -5,
                child: Opacity(
                  opacity: 0.2,
                  child: Text('Result',
                      style: TextStyles.resultsBackgroundTextStyle),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  if (result.jsonMap['imagePath'] != null)
                    Image.file(File(result.jsonMap['imagePath'])),
                  ListTile(
                      dense: true,
                      title: Text(
                        result.scanMode.label,
                        style: TextStyles.labelTextStyle,
                      ),
                      subtitle: Text(
                        timestamp,
                        style: TextStyles.timeStampTextStyle,
                      )),
                ],
              ),
            ],
          )),
    );
  }
}
