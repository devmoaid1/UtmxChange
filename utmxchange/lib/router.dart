import 'package:flutter/material.dart';
import 'package:utm_x_change/constants.dart';
import 'package:utm_x_change/screens/checklist/checkDesc.dart';
import 'package:utm_x_change/screens/checklist/checkListHome.dart';
import 'package:utm_x_change/screens/dosDonts/description.dart';
import 'package:utm_x_change/screens/staff/manageStudents/updateStudent/editStudent.dart';
import 'package:utm_x_change/screens/staff/manageStudents/updateStudent/studentDetails.dart';
import 'package:utm_x_change/screens/staff/manageStudents/updateStudent/students.dart';
import 'package:utm_x_change/screens/staff/updateGUI/shopping/newShops.dart';
import 'package:utm_x_change/screens/staff/updateGUI/shopping/updateShops.dart';
import 'package:utm_x_change/screens/staff/updateGUI/updatedodont/editDo.dart';
import 'package:utm_x_change/screens/staff/updateGUI/updatedodont/newDo.dart';
import 'constants.dart';
import 'screens/dosDonts/dosdonts.dart';
import 'screens/home/home.dart';
import 'screens/login/login.dart';
import 'screens/profile/profile.dart';
import 'screens/settings/settings.dart';
import 'screens/splash/my_splash.dart';
import 'package:utm_x_change/screens/notices/notice.dart';
import 'package:utm_x_change/screens/notices/noticeDesc.dart';
import 'package:utm_x_change/screens/staff/dashboard/dashHome.dart';
import 'package:utm_x_change/screens/staff/manageStudents/manageStudent.dart';
import 'package:utm_x_change/screens/staff/manageStudents/noticeStaff/addNotice.dart';
import 'package:utm_x_change/screens/staff/manageStudents/noticeStaff/editNotice.dart';
import 'package:utm_x_change/screens/staff/manageStudents/noticeStaff/noticeStaff.dart';
import 'package:utm_x_change/screens/staff/manageStudents/registration/registerStudent.dart';
import 'package:utm_x_change/screens/staff/updateGUI/updateGUI.dart';
import 'package:utm_x_change/screens/staff/updateGUI/checkList/addNewCheck.dart';
import 'package:utm_x_change/screens/staff/updateGUI/checkList/descCheklist.dart';
import 'package:utm_x_change/screens/staff/updateGUI/checkList/editCheck.dart';
import 'package:utm_x_change/screens/staff/updateGUI/checkList/staffChecklist.dart';
import 'package:utm_x_change/screens/accommodation/accommodation.dart';
import 'package:utm_x_change/screens/living_cost/living_cost.dart';
import 'package:utm_x_change/screens/shopping/shopping.dart';
import 'package:utm_x_change/screens/recommended_places/place.dart';
import 'package:utm_x_change/screens/info_menu/about_Malaysia.dart';
import 'package:utm_x_change/screens/info_menu/about_UTM.dart';
import 'package:utm_x_change/screens/info_menu/info_menu.dart';
import 'package:utm_x_change/screens/dosDonts/dosDontsMenu.dart';
import 'package:utm_x_change/screens/dosDonts/dos.dart';
import 'package:utm_x_change/screens/dosDonts/donts.dart';

import 'package:utm_x_change/screens/friends/Friends.dart';
import 'package:utm_x_change/screens/travellingtoCampus/Travelling_Campus.dart';
import 'package:utm_x_change/screens/arrivingatCampus/Arriving_Campus.dart';

import 'screens/staff/updateGUI/shopping/staff_shops.dart';
import 'screens/staff/updateGUI/updatedodont/dosStaff.dart';

class Router {
  static Route<dynamic> createRoute(settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case home:
        return MaterialPageRoute(builder: (context) => Home());
      case profile:
        return MaterialPageRoute(builder: (context) => MyProfile());
      case setings:
        return MaterialPageRoute(builder: (context) => Settings());
      case login:
        return MaterialPageRoute(builder: (context) => LoginPage());
      case checkList:
        return MaterialPageRoute(builder: (context) => CheckList());
      case decsList:
        return MaterialPageRoute(
            builder: (context) => CheckListHelper(data: settings.arguments));
      case descStudent:
        return MaterialPageRoute(
            builder: (context) => ProfileHelper(profile: settings.arguments));
      case notices:
        return MaterialPageRoute(builder: (context) => Notice());
      case descNotice:
        return MaterialPageRoute(
            builder: (context) => NoticeHelper(
                  data: settings.arguments,
                ));
      case staffHome:
        return MaterialPageRoute(builder: (context) => Dashboard());
      case staff_Student_manage:
        return MaterialPageRoute(builder: (context) => ManageStudent());
      case staff_notice:
        return MaterialPageRoute(builder: (context) => NoticeStaff());
      case staff_notice_update:
        return MaterialPageRoute(
            builder: (context) => StaffUpdateNotice(
                  data: settings.arguments,
                ));
      case staff_notice_add:
        return MaterialPageRoute(builder: (context) => StaffAddNotice());
      case staff_Student_add:
        return MaterialPageRoute(builder: (context) => StudentAdd());
      case staff_Student:
        return MaterialPageRoute(builder: (context) => Students());
      case staff_Student_update:
        return MaterialPageRoute(
            builder: (context) => StudentUpdate(
                  data: settings.arguments,
                ));
      case staff_updateGUI:
        return MaterialPageRoute(builder: (context) => UpdateGUI());
      case staff_checkList:
        return MaterialPageRoute(builder: (context) => CheckListStaff());
      case staff_checkList_helper:
        return MaterialPageRoute(
            builder: (context) => CheckListHelperStaff(
                  data: settings.arguments,
                ));
      case staff_checkList_New:
        return MaterialPageRoute(
            builder: (context) => CheckListNew(
                  value: settings.arguments,
                ));
      case staff_checkList_Update:
        return MaterialPageRoute(
            builder: (context) => CheckListUpdate(
                  data: settings.arguments,
                ));
      case accommodation:
        return MaterialPageRoute(builder: (context) => Accommodation());
      case livingCost:
        return MaterialPageRoute(builder: (context) => LivingCost());
      case shopping:
        return MaterialPageRoute(builder: (context) => Shopping());
      case place:
        return MaterialPageRoute(builder: (context) => RecommendedPlaces());
      case info_menu:
        return MaterialPageRoute(builder: (context) => InfoMenu());
      case about_Malaysia:
        return MaterialPageRoute(builder: (context) => AboutMalaysia());
      case about_UTM:
        return MaterialPageRoute(builder: (context) => AboutUTM());
      case dosDontsMenu:
        return MaterialPageRoute(builder: (context) => DosAndDontsMenu());
      case dosdonts:
        return MaterialPageRoute(builder: (context) => DosDonts());
      case descOfDd:
        return MaterialPageRoute(
            builder: (context) => Description(data: settings.arguments));
      case staff_dosdont_update:
        return MaterialPageRoute(
            builder: (context) => DosDontUpdate(data: settings.arguments));
      case staff_dosdont_new:
        return MaterialPageRoute(builder: (context) => DosDontNew());
      case dos:
        return MaterialPageRoute(builder: (context) => DosInMalaysia());
      case donts:
        return MaterialPageRoute(builder: (context) => DontsInMalaysia());
      case friend:
        return MaterialPageRoute(builder: (context) => Friends());
      case arrive:
        return MaterialPageRoute(builder: (context) => ArrivingCampus());
      case travel:
        return MaterialPageRoute(builder: (context) => TravellingToCampus());
      case staff_shopUpdate:
        return MaterialPageRoute(
            builder: (context) => StaffUpdateShop(data: settings.arguments));
      case staff_shopNew:
        return MaterialPageRoute(builder: (context) => StaffNewShop());
      case staff_shop:
        return MaterialPageRoute(builder: (context) => StaffShopping());
      case staff_dosdont:
        return MaterialPageRoute(builder: (context) => DosDontsStaff());
    }
    return null;
  }
}
