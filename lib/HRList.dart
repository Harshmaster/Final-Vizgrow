import 'package:vizgrow_consulting/forms/screens/jobApplication.dart';
import 'package:vizgrow_consulting/models/overviewModel.dart';

List<StartupModel> hRList = [
  StartupModel(
    imgLink: "assets/images/jobseekers.PNG",
    tagLine: "SERVICES TO JOB SEEKERS",
    description:
        'During these testing times of employment, we have made it an integral part of our activities to help people find suitable job for them and to fulfil their aspirations. ',
    isLeft: true,
    navigator: JobApplication(),
  ), 
  StartupModel(
    imgLink: "assets/images/recruit.PNG",
    tagLine: "RECRUITMENT SERVICES",
    description:
        'Only an effective team can ensure success of any organisation. We at Vizgrow help organisations to recruit right person for the right job, who can be an asset to it and work towards meeting its goals.',
    isLeft: false,
    navigator: null,
  ),
  StartupModel(
    imgLink: "assets/images/hrmanage.PNG",
    tagLine: "HR MANAGEMENT SERVICES",
    description:
        'HR manages most important resource of an organisation. HR activities precedes anything and we help organisations to adopt and practice healthy, most acceptable and cost effective HR management policies and practices. ',
    isLeft: true,
    navigator: null,
  ),
  
];
