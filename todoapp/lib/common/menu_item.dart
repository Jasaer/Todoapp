import 'package:flutter/material.dart';
import 'package:todoapp/common/common.dart';
class MenuItem extends StatelessWidget {
   final String menuItemText;
   final IconData menuItemIcon;
  const MenuItem({Key? key,
   required this.menuItemText, 
   required this.menuItemIcon
   }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
    // padding: EdgeInsets.symmetric(vertical:6),
      child:  Row(
        children: [
          Icon(menuItemIcon,
         color: globalWhite
          ),
            
            Text(
              menuItemText,
             style:TextStyle(
              fontFamily:regularFont,
               color:globalWhite
              ),
          ),
        ],
      ),
    );
  }
}