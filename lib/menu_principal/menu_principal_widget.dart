import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_principal_model.dart';
export 'menu_principal_model.dart';

class MenuPrincipalWidget extends StatefulWidget {
  const MenuPrincipalWidget({Key? key}) : super(key: key);

  @override
  _MenuPrincipalWidgetState createState() => _MenuPrincipalWidgetState();
}

class _MenuPrincipalWidgetState extends State<MenuPrincipalWidget> {
  late MenuPrincipalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuPrincipalModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFECC5A4),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF99161E),
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'N uestra Carta',
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: 'Outfit',
                  color: Color(0xFF99161E),
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('listabebidascalientes');
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Color(0x411D2429),
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 1.0, 1.0, 1.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(6.0),
                                    child: Image.network(
                                      'data:image/jpeg;base64,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',
                                      width: 70.0,
                                      height: 70.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 4.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bebidas Calientes',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('listametodos');
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Color(0x411D2429),
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 1.0, 1.0, 1.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(6.0),
                                    child: Image.network(
                                      'https://media.scoolinary.app/blog/images/2022/04/metodos-preparacion-cafe-2-683x1024.jpg',
                                      width: 70.0,
                                      height: 70.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 4.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Métodos',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('listabebidasfrias');
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Color(0x411D2429),
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 1.0, 1.0, 1.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(6.0),
                                    child: Image.network(
                                      'https://exigibuencafe.com/wp-content/uploads/2020/02/El-caf%C3%A9-fr%C3%ADo-con-leche-1000x600.jpg',
                                      width: 70.0,
                                      height: 70.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 4.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bebidas Frías',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('listatortaspostres');
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Color(0x411D2429),
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 1.0, 1.0, 1.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(6.0),
                                    child: Image.network(
                                      'https://i.pinimg.com/236x/c1/a8/eb/c1a8eb7d1d81ad1f3459219fd66a9c90--cherry-cake-trifle.jpg',
                                      width: 70.0,
                                      height: 70.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 4.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tortas/Postres',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('listahorneados');
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Color(0x411D2429),
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 1.0, 1.0, 1.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(6.0),
                                    child: Image.network(
                                      'https://media.istockphoto.com/id/1418644931/es/foto/mont%C3%B3n-de-cruasanes-reci%C3%A9n-horneados-en-una-panader%C3%ADa.jpg?s=170667a&w=0&k=20&c=5jETyVUAwDrzc3kAalyG3g-7DCljqP9E9dJuqFdlnmQ=',
                                      width: 70.0,
                                      height: 70.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 4.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Horneados',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('listabatidos');
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Color(0x411D2429),
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 1.0, 1.0, 1.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(6.0),
                                    child: Image.network(
                                      'https://s1.abcstatics.com/media/bienestar/2020/07/04/batidos-saludables-krqF--620x349@abc.jpeg',
                                      width: 70.0,
                                      height: 70.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 4.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Batidos',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('listaotrasbebidas');
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Color(0x411D2429),
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 1.0, 1.0, 1.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(6.0),
                                    child: Image.network(
                                      'https://previews.123rf.com/images/foodandmore/foodandmore1306/foodandmore130600033/20281136-coloridas-bebidas-gaseosas-fr%C3%ADas-en-botellas-de-vidrio-sin-etiqueta-que-se-colocan-en-un-recipiente.jpg',
                                      width: 70.0,
                                      height: 70.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 4.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Otras bebidas',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 24.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('listacervezas');
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: Color(0x411D2429),
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 1.0, 1.0, 1.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(6.0),
                                    child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-aEeh0wQ1n2mojDJ7kXzY9A_1Qfn7XbAAUA&usqp=CAU',
                                      width: 70.0,
                                      height: 70.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 4.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Cervezas',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
