import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String firebaseUrl = 'https://final-capstone-60dcd-default-rtdb.asia-southeast1.firebasedatabase.app';

const EdgeInsets globalMargin = EdgeInsets.all(15);

// Calendar
const TextStyle focusedDatesTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
  fontSize: 9,
  color: CupertinoColors.black,
);
const TextStyle todayTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
  fontSize: 9,
  color: CupertinoColors.white,
);
const TextStyle unfocusedDatesTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
  fontSize: 9,
  color: CupertinoColors.systemGrey,
);
const TextStyle chosenDatesTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
  fontSize: 9,
);
const TextStyle monthHeaderTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
  fontSize: 16,
  color: CupertinoColors.black,
);
const TextStyle timeOfDayTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
  fontSize: 10,
  color: CupertinoColors.black,
);

// Tabs
const Border selectedTabUnderline = Border(
  bottom: BorderSide(
    width: 3,
    color: Color(0xFF8465FF),
  ),
);
const DecorationImage tabBackgroundImage = DecorationImage(
  image: AssetImage('assets/segment_tab_bg.png'),
  fit: BoxFit.fill,
);

// Draw
Container greyHorizontalLine = Container(
  color: const Color(0xFFE0E0E0),
  height: 3,
);
Container purpleHorizontalLine = Container(
  color: Colors.purple,
  height: 3,
);

// Home Screen Padding
const EdgeInsets upperContainerPadding = EdgeInsets.symmetric(
  horizontal: 20,
  vertical: 30,
);
const EdgeInsets middleContainerPadding = EdgeInsets.only(
  left: 20,
  right: 20,
  top: 30,
  bottom: 15,
);
const EdgeInsets rightValuesPadding = EdgeInsets.only(right: 12);
const EdgeInsets lowerContainerPadding = EdgeInsets.only(
  left: 20,
  right: 20,
  top: 30,
  bottom: 50,
);

// Top Container Radius
const BoxDecoration topContainerRadius = BoxDecoration(
  color: CupertinoColors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(15),
    topRight: Radius.circular(15),
  ),
);

// Apply Leave
const MenuProps dropDownStyle = MenuProps(
  borderRadius: BorderRadius.all(Radius.circular(25)),
);
const DropDownDecoratorProps dropDownUnderline = DropDownDecoratorProps(
  dropdownSearchDecoration: InputDecoration(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        width: 3,
        color: Color(0xFFE0E0E0),
      ),
    ),
  ),
);
const TextStyle applyLeaveNotesStyle = TextStyle(
  fontFamily: 'Mulish',
  fontWeight: FontWeight.w400,
  fontSize: 16,
  color: CupertinoColors.systemGrey,
  fontStyle: FontStyle.italic,
);
BoxDecoration applyLeavesNotesBoxDecoration = BoxDecoration(
  border: Border.all(color: Colors.transparent),
  color: const Color(0xFFF5F5F5),
);

// Add Time Record
const BoxDecoration timeCupertinoPickerDecoration = BoxDecoration(
  border: Border(
    bottom: BorderSide(
      width: 3,
      color: Colors.blue,
    ),
  ),
);
const DropDownDecoratorProps multiSelectProfileDecoration = DropDownDecoratorProps(
  dropdownSearchDecoration: InputDecoration(
    contentPadding: EdgeInsets.zero,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
    ),
  ),
);

// Drawer Screen
const BoxDecoration selectedMenuUnderline = BoxDecoration(
  border: Border(
    bottom: BorderSide(
      width: 3,
      color: Colors.purple,
    ),
  ),
);