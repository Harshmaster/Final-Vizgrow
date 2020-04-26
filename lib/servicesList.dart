import 'package:vizgrow_consulting/models/overviewModel.dart';
import 'package:vizgrow_consulting/screens/Services/Consultancy/Introduction.dart';
import 'package:vizgrow_consulting/screens/Services/Covid-19-solutions/Introduction.dart';
import 'package:vizgrow_consulting/screens/Services/Hr-Development/Introduction.dart';
import 'package:vizgrow_consulting/screens/Services/IT-Services/Introduction.dart';
import 'package:vizgrow_consulting/screens/Services/Startup&BpoSolutions/Introduction.dart';

List<ServiceModel> servicesList = [
  ServiceModel(
    imgLink: "assets/images/nurturing.PNG",
    tagLine: "COVID-19 SOLUTIONS",
    navigator: CovidIntroduction(),
  ),
  ServiceModel(
    imgLink: "assets/images/business.jpg",
    tagLine: "STARTUP & BPO SERVICES",
    navigator: StartupIntroduction(),
  ),
  ServiceModel(
    imgLink: "assets/images/hr.jpg",
    tagLine: "HR SERVICES",
    navigator: HRIntroduction(),
  ),
  ServiceModel(
    imgLink: "assets/images/it.jpg",
    tagLine: "IT SERVICES",
    navigator: ITIntroduction(),
  ),
  ServiceModel(
    imgLink: "assets/images/consult.jpg",
    tagLine: "CONSULTACY SERVICES",
    navigator: ConsultancyIntroduction(),
  ),
];
