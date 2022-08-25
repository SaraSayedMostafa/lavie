import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../Constants/Colors.dart';

class HomeScreen extends GetWidget  {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors().white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60),
            child:Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/icons/logo.svg',
                width: 102,
              ),
            ),
          ),
          const SizedBox(height: 40,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                SizedBox(
                  height:46,
                  width:329,
                  child: TextField(
                    controller:searchController,
                    obscureText: false,
                    decoration: InputDecoration(
                      focusColor: colors().primary,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width:1, color: colors().primary),
                      ),
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      filled: true,
                      fillColor: colors().backgroundOfSearch,
                      hintText: 'Search',
                      hintStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: colors().border,
                    ),
                      prefixIcon: IconButton(
                        onPressed:(){},
                        icon: SvgPicture.asset(
                          'assets/icons/searchicon.svg',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                MaterialButton(
                  onPressed: (){},
                  shape: RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(10)
                  ),
                  height: 46,
                  minWidth: 51,
                  color:colors().primary,
                  child: SvgPicture.asset(
                    'assets/icons/carticon.svg',
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }

}
