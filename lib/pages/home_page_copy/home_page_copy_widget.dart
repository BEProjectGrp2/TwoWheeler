import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_copy_model.dart';
export 'home_page_copy_model.dart';

class HomePageCopyWidget extends StatefulWidget {
  const HomePageCopyWidget({Key? key}) : super(key: key);

  @override
  _HomePageCopyWidgetState createState() => _HomePageCopyWidgetState();
}

class _HomePageCopyWidgetState extends State<HomePageCopyWidget> {
  late HomePageCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageCopyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<TodosRecord>>(
      future: queryTodosRecordOnce(
        queryBuilder: (todosRecord) => todosRecord.orderBy('Day'),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<TodosRecord> homePageCopyTodosRecordList = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).alternate,
              automaticallyImplyLeading: false,
              title: Text(
                'Page Title',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 22.0,
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 317.0,
                            height: 230.0,
                            child: Stack(
                              children: [
                                FlutterFlowLineChart(
                                  data: [
                                    FFLineChartData(
                                      xData: homePageCopyTodosRecordList
                                          .map((d) => d.day)
                                          .toList(),
                                      yData: homePageCopyTodosRecordList
                                          .map((d) => d.hours)
                                          .toList(),
                                      settings: LineChartBarData(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        barWidth: 2.0,
                                      ),
                                    )
                                  ],
                                  chartStylingInfo: ChartStylingInfo(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    showGrid: true,
                                    borderColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    borderWidth: 1.0,
                                  ),
                                  axisBounds: AxisBounds(
                                    minX: 0.0,
                                    maxX: 7.0,
                                  ),
                                  xAxisLabelInfo: AxisLabelInfo(
                                    title: 'Days',
                                    titleTextStyle: GoogleFonts.getFont(
                                      'Roboto',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 14.0,
                                    ),
                                    showLabels: true,
                                    labelTextStyle: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                    labelInterval: 1.0,
                                    labelFormatter: LabelFormatter(
                                      numberFormat: (val) => val.toString(),
                                    ),
                                  ),
                                  yAxisLabelInfo: AxisLabelInfo(
                                    title: 'Hours',
                                    titleTextStyle: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                    showLabels: true,
                                    labelTextStyle: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                    labelInterval: 10.0,
                                    labelFormatter: LabelFormatter(
                                      numberFormat: (val) => val.toString(),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1.00, -1.00),
                                  child: FlutterFlowChartLegendWidget(
                                    entries: [
                                      LegendEntry(
                                          FlutterFlowTheme.of(context).primary,
                                          'Driving Time'),
                                    ],
                                    width: 150.0,
                                    height: 100.0,
                                    textStyle:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    textPadding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 5.0, 0.0),
                                    borderWidth: 1.0,
                                    indicatorSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 317.0,
                            height: 230.0,
                            child: FlutterFlowLineChart(
                              data: [
                                FFLineChartData(
                                  xData: homePageCopyTodosRecordList
                                      .map((d) => d.day)
                                      .toList(),
                                  yData: homePageCopyTodosRecordList
                                      .map((d) => d.hours)
                                      .toList(),
                                  settings: LineChartBarData(
                                    color: FlutterFlowTheme.of(context).primary,
                                    barWidth: 2.0,
                                  ),
                                )
                              ],
                              chartStylingInfo: ChartStylingInfo(
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                showBorder: false,
                              ),
                              axisBounds: AxisBounds(),
                              xAxisLabelInfo: AxisLabelInfo(),
                              yAxisLabelInfo: AxisLabelInfo(),
                            ),
                          ),
                          Container(
                            width: 317.0,
                            height: 230.0,
                            child: FlutterFlowLineChart(
                              data: [
                                FFLineChartData(
                                  xData: homePageCopyTodosRecordList
                                      .map((d) => d.day)
                                      .toList(),
                                  yData: homePageCopyTodosRecordList
                                      .map((d) => d.hours)
                                      .toList(),
                                  settings: LineChartBarData(
                                    color: FlutterFlowTheme.of(context).primary,
                                    barWidth: 2.0,
                                  ),
                                )
                              ],
                              chartStylingInfo: ChartStylingInfo(
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                showBorder: false,
                              ),
                              axisBounds: AxisBounds(),
                              xAxisLabelInfo: AxisLabelInfo(),
                              yAxisLabelInfo: AxisLabelInfo(),
                            ),
                          ),
                          Container(
                            width: 317.0,
                            height: 230.0,
                            child: FlutterFlowLineChart(
                              data: [
                                FFLineChartData(
                                  xData: homePageCopyTodosRecordList
                                      .map((d) => d.day)
                                      .toList(),
                                  yData: homePageCopyTodosRecordList
                                      .map((d) => d.hours)
                                      .toList(),
                                  settings: LineChartBarData(
                                    color: FlutterFlowTheme.of(context).primary,
                                    barWidth: 2.0,
                                  ),
                                )
                              ],
                              chartStylingInfo: ChartStylingInfo(
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                showBorder: false,
                              ),
                              axisBounds: AxisBounds(),
                              xAxisLabelInfo: AxisLabelInfo(),
                              yAxisLabelInfo: AxisLabelInfo(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 370.0,
                        height: 230.0,
                        child: Stack(
                          children: [
                            FlutterFlowLineChart(
                              data: [
                                FFLineChartData(
                                  xData: homePageCopyTodosRecordList
                                      .map((d) => d.day)
                                      .toList(),
                                  yData: homePageCopyTodosRecordList
                                      .map((d) => d.hours)
                                      .toList(),
                                  settings: LineChartBarData(
                                    color: FlutterFlowTheme.of(context).primary,
                                    barWidth: 2.0,
                                  ),
                                )
                              ],
                              chartStylingInfo: ChartStylingInfo(
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                showBorder: false,
                              ),
                              axisBounds: AxisBounds(),
                              xAxisLabelInfo: AxisLabelInfo(),
                              yAxisLabelInfo: AxisLabelInfo(),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.00, -1.00),
                              child: FlutterFlowChartLegendWidget(
                                entries: [
                                  LegendEntry(
                                      FlutterFlowTheme.of(context).primary,
                                      'Legend 1'),
                                ],
                                width: 100.0,
                                height: 50.0,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                textPadding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 0.0),
                                borderWidth: 1.0,
                                borderColor: Colors.black,
                                indicatorSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 370.0,
                        height: 230.0,
                        child: FlutterFlowLineChart(
                          data: [
                            FFLineChartData(
                              xData: homePageCopyTodosRecordList
                                  .map((d) => d.day)
                                  .toList(),
                              yData: homePageCopyTodosRecordList
                                  .map((d) => d.hours)
                                  .toList(),
                              settings: LineChartBarData(
                                color: FlutterFlowTheme.of(context).primary,
                                barWidth: 2.0,
                              ),
                            )
                          ],
                          chartStylingInfo: ChartStylingInfo(
                            backgroundColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            showBorder: false,
                          ),
                          axisBounds: AxisBounds(),
                          xAxisLabelInfo: AxisLabelInfo(),
                          yAxisLabelInfo: AxisLabelInfo(),
                        ),
                      ),
                      FutureBuilder<List<TwoWheelerTestRecord>>(
                        future: queryTwoWheelerTestRecordOnce(
                          queryBuilder: (twoWheelerTestRecord) =>
                              twoWheelerTestRecord.orderBy('Day'),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<TwoWheelerTestRecord>
                              chartTwoWheelerTestRecordList = snapshot.data!;
                          return Container(
                            width: 370.0,
                            height: 230.0,
                            child: FlutterFlowBarChart(
                              barData: [
                                FFBarChartData(
                                  yData: chartTwoWheelerTestRecordList
                                      .map((d) => d.hours)
                                      .toList(),
                                  color: FlutterFlowTheme.of(context).primary,
                                )
                              ],
                              xLabels: chartTwoWheelerTestRecordList
                                  .map((d) => d.day)
                                  .toList(),
                              barWidth: 16.0,
                              barBorderRadius: BorderRadius.circular(8.0),
                              groupSpace: 8.0,
                              chartStylingInfo: ChartStylingInfo(
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                showBorder: false,
                              ),
                              axisBounds: AxisBounds(),
                              xAxisLabelInfo: AxisLabelInfo(),
                              yAxisLabelInfo: AxisLabelInfo(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primary,
                        borderRadius: 50.0,
                        borderWidth: 1.0,
                        buttonSize: 85.0,
                        fillColor: FlutterFlowTheme.of(context).accent1,
                        icon: Icon(
                          Icons.home_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primary,
                        borderRadius: 50.0,
                        borderWidth: 1.0,
                        buttonSize: 85.0,
                        fillColor: FlutterFlowTheme.of(context).accent1,
                        icon: Icon(
                          Icons.query_stats,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primary,
                        borderRadius: 50.0,
                        borderWidth: 1.0,
                        buttonSize: 85.0,
                        fillColor: FlutterFlowTheme.of(context).accent1,
                        icon: Icon(
                          Icons.location_pin,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primary,
                        borderRadius: 50.0,
                        borderWidth: 1.0,
                        buttonSize: 85.0,
                        fillColor: FlutterFlowTheme.of(context).accent1,
                        icon: Icon(
                          Icons.motorcycle,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primary,
                        borderRadius: 50.0,
                        borderWidth: 1.0,
                        buttonSize: 85.0,
                        fillColor: FlutterFlowTheme.of(context).accent1,
                        icon: Icon(
                          Icons.settings_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 50.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
