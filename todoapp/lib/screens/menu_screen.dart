// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todoapp/common/common.dart';
import 'package:todoapp/common/menu_item.dart';
import 'package:flutter/cupertino.dart';
                class MenuScreen extends StatefulWidget {
                  final double screenWidth;
                  final VoidCallback onMenuClose;
                  const MenuScreen({Key? key, 
                  required this.screenWidth, 
                  required this.onMenuClose
                   }) : super(key: key);
                  @override
                  _MenuScreenState createState() => _MenuScreenState();
                }

                class _MenuScreenState extends State<MenuScreen> {
      

                  @override
                  Widget build(BuildContext context) {
                    double screenWidth= MediaQuery.of(context).size.width;
                    double screenHeight=MediaQuery.of(context).size.height;

                    return Scaffold(
                 
                      backgroundColor: primaryBackground,
                       body:Container(
                      width: screenWidth,
                      padding: EdgeInsets.symmetric(horizontal:40, vertical:80),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          
                          children:<Widget> [
                          
                            Padding(
                              padding: EdgeInsets.only(right: 0.3 * screenWidth),
                             child:  Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children:[
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  border:Border.all(color: Colors.white.withOpacity(0.4)),
                                  shape: BoxShape.circle
                                  ) ,
                                   child: IconButton(
                                    onPressed: widget.onMenuClose,
                                    icon: Icon(
                                      Icons.arrow_back_ios_new_rounded,
                                      color: Colors.white.withOpacity(.8),
                                      size: 16,
                                    ),
                                    ),
                              ),
                               ]
                            ),
                             
                          ),
                               Container(
                            child: Center(
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: CircleAvatar(
                                    foregroundImage: AssetImage("assets/images/avatar.jpg"),
                                    
                                  ),
                                ),
                                width: 90,
                                height: 90,
                                decoration: BoxDecoration(color: primaryBackground,shape: BoxShape.circle
                                ),
                              ),
                            ),
                            
                            width:95,
                            height: 95,
                            decoration: BoxDecoration(
                              color: Color(0xffd103fc) ,
                            shape: BoxShape.circle
                                ),
                               ),
                                 Padding(
                                padding: EdgeInsets.only(bottom: .04 * screenHeight),
                                child:  Text(
                                  "Olivia \n Mitchell",
                                  style: TextStyle(
                                    fontFamily: boldFont,
                                    fontSize: 28,
                                    color: Colors.white.withOpacity(.8)
                                  ),
                                ),
                          
                            ),
                              SizedBox(height: 40),
                              MenuItem(menuItemText: "templates", menuItemIcon: Icons.bookmark_border_outlined),
                              MenuItem(menuItemText: "Categories", menuItemIcon: Icons.grid_view_outlined),
                              MenuItem(menuItemText: "Analytics", menuItemIcon: Icons.pie_chart_outline_outlined),
                          Expanded(
                          child: Column(


                         mainAxisAlignment: MainAxisAlignment.end,

                             children: [
                                RichText(
                                  text: TextSpan(
                                    children:<TextSpan>[
                                      TextSpan(
                                    text:  "Deaigned by\n" ,
                                    style: TextStyle(
                                      fontFamily: regularFont,
                                      fontSize: 14,
                                      color: thirdFondColor
                                    ),
                                      ),
                                  
                                    TextSpan(
                                      text:"Alex Arutuynov\n",
                                      style: TextStyle(
                                        fontFamily: boldFont,
                                        fontSize: 18,
                                        color: thirdFondColor
                                      ),
                                    )
                                  ]
                                )
                              )
                          ]
                          )
                          ),
                          ],
                        ),
                      ),
                    );
                    
                  }
                }