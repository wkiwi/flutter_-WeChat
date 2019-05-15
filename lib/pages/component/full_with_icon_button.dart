import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../common/style/style.dart' show ICons,AppColors;
class FullWithIconButton extends StatelessWidget {
  const FullWithIconButton({
    this.title,
    this.iconPath,
    this.onPressed,
    this.showDivider
  }): assert (title != null),
      assert (iconPath != null),
      assert (onPressed != null);

  final bool showDivider;
  final String iconPath;
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){onPressed();},
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            iconPath,
            width: ScreenUtil().setWidth(50),
            height: ScreenUtil().setWidth(50),
          ),
          SizedBox(width: ScreenUtil().setWidth(50),),
          Expanded(
            child: Container(
              child: Text(title,style: TextStyle(fontSize: ScreenUtil().setSp(30.0),color: Color(AppColors.FullWithIconButton)),),
              height: ScreenUtil().setHeight(80),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0.5,color: showDivider ? Colors.black12 : Colors.white)
                )
              ),
            )
          ),
          Icon(Icons.keyboard_arrow_right,color: Color(AppColors.KeyboardArrowRight),)
        ],
      ),
    );
  }
}