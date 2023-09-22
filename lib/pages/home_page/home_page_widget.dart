import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final chartPieChartColorsList5 = [
      Color(0xFF8F46E9),
      Color(0xFF6F28CB),
      Color(0xFF2536A4),
      Color(0xFF4A57C1)
    ];
    return StreamBuilder<List<TwoWheelerTestRecord>>(
      stream: queryTwoWheelerTestRecord(
        queryBuilder: (twoWheelerTestRecord) =>
            twoWheelerTestRecord.orderBy('Day'),
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
        List<TwoWheelerTestRecord> homePageTwoWheelerTestRecordList =
            snapshot.data!;
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
              child: Visibility(
                visible: responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                ),
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
                                        xData: homePageTwoWheelerTestRecordList
                                            .map((d) => d.day)
                                            .toList(),
                                        yData: homePageTwoWheelerTestRecordList
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
                                          FlutterFlowTheme.of(context)
                                              .alternate,
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
                                    alignment:
                                        AlignmentDirectional(1.00, -1.00),
                                    child: FlutterFlowChartLegendWidget(
                                      entries: [
                                        LegendEntry(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                            'Driving Time'),
                                      ],
                                      width: 150.0,
                                      height: 100.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      textPadding:
                                          EdgeInsetsDirectional.fromSTEB(
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
                                    xData: homePageTwoWheelerTestRecordList
                                        .map((d) => d.day)
                                        .toList(),
                                    yData: homePageTwoWheelerTestRecordList
                                        .map((d) => d.hours)
                                        .toList(),
                                    settings: LineChartBarData(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      barWidth: 2.0,
                                    ),
                                  )
                                ],
                                chartStylingInfo: ChartStylingInfo(
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  showGrid: true,
                                  borderColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  borderWidth: 1.0,
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
                                    xData: homePageTwoWheelerTestRecordList
                                        .map((d) => d.day)
                                        .toList(),
                                    yData: homePageTwoWheelerTestRecordList
                                        .map((d) => d.hours)
                                        .toList(),
                                    settings: LineChartBarData(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                    xData: homePageTwoWheelerTestRecordList
                                        .map((d) => d.day)
                                        .toList(),
                                    yData: homePageTwoWheelerTestRecordList
                                        .map((d) => d.hours)
                                        .toList(),
                                    settings: LineChartBarData(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        StreamBuilder<List<TwoWheelerTestRecord>>(
                          stream: queryTwoWheelerTestRecord(),
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
                              child: Stack(
                                children: [
                                  FlutterFlowPieChart(
                                    data: FFPieChartData(
                                      values: chartTwoWheelerTestRecordList
                                          .map((d) => d.hours)
                                          .toList(),
                                      colors: chartPieChartColorsList5,
                                      radius: [100.0],
                                      borderColor: [
                                        FlutterFlowTheme.of(context).info
                                      ],
                                    ),
                                    donutHoleRadius: 0.0,
                                    donutHoleColor: Colors.transparent,
                                    sectionLabelType:
                                        PieChartSectionLabelType.percent,
                                    sectionLabelStyle:
                                        FlutterFlowTheme.of(context)
                                            .headlineSmall,
                                  ),
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-1.00, -1.00),
                                    child: FlutterFlowChartLegendWidget(
                                      entries: chartTwoWheelerTestRecordList
                                          .map((d) => d.day)
                                          .toList()
                                          .asMap()
                                          .entries
                                          .map(
                                            (label) => LegendEntry(
                                              chartPieChartColorsList5[
                                                  label.key %
                                                      chartPieChartColorsList5
                                                          .length],
                                              label.value,
                                            ),
                                          )
                                          .toList(),
                                      width: 150.0,
                                      height: 100.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      textPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              5.0, 0.0, 0.0, 0.0),
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 5.0, 0.0),
                                      borderWidth: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      indicatorSize: 10.0,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        Container(
                          width: 370.0,
                          height: 230.0,
                          child: FlutterFlowLineChart(
                            data: [
                              FFLineChartData(
                                xData: homePageTwoWheelerTestRecordList
                                    .map((d) => d.day)
                                    .toList(),
                                yData: homePageTwoWheelerTestRecordList
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
                        StreamBuilder<List<TwoWheelerTestRecord>>(
                          stream: queryTwoWheelerTestRecord(),
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
                                groupSpace: 50.0,
                                chartStylingInfo: ChartStylingInfo(
                                  backgroundColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  showGrid: true,
                                  borderColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  borderWidth: 1.0,
                                ),
                                axisBounds: AxisBounds(),
                                xAxisLabelInfo: AxisLabelInfo(
                                  title: 'Days',
                                  titleTextStyle: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                  showLabels: true,
                                  labelTextStyle: TextStyle(
                                    fontWeight: FontWeight.normal,
                                  ),
                                  labelInterval: 10.0,
                                ),
                                yAxisLabelInfo: AxisLabelInfo(
                                  title: 'Hours',
                                  titleTextStyle: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                  showLabels: true,
                                  labelInterval: 10.0,
                                ),
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
          ),
        );
      },
    );
  }
}
