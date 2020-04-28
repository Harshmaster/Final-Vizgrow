import 'package:vizgrow_consulting/models/overviewModel.dart';
import 'package:vizgrow_consulting/screens/Services/Consultancy/Introduction.dart';
import 'package:vizgrow_consulting/screens/Services/Covid-19-solutions/Introduction.dart';
import 'package:vizgrow_consulting/screens/Services/Hr-Development/Introduction.dart';
import 'package:vizgrow_consulting/screens/Services/IT-Services/Introduction.dart';
import 'package:vizgrow_consulting/screens/Services/Startup&BpoSolutions/Introduction.dart';

List<ServiceModel> servicesList = [
  ServiceModel(
    imgLink: "assets/images/covid.PNG",
    tagLine: "COVID-19 SOLUTIONS",
    navigator: CovidIntroduction(),
    index: 0,

  ),
  ServiceModel(
    imgLink: "assets/images/business.jpg",
    tagLine: "STARTUP & BPO SERVICES",
    navigator: StartupIntroduction(),
    index: 1,
  ),
  ServiceModel(
    imgLink: "assets/images/hr.jpg",
    tagLine: "HR SERVICES",
    navigator: HRIntroduction(),
    index: 2,
  ),
  ServiceModel(
    imgLink: "assets/images/it.jpg",
    tagLine: "IT SERVICES",
    navigator: ITIntroduction(),
    index: 3,
  ),
  ServiceModel(
    imgLink: "assets/images/consult.jpg",
    tagLine: "CONSULTACY SERVICES",
    navigator: ConsultancyIntroduction(),
    index: 4,
  ),
];
