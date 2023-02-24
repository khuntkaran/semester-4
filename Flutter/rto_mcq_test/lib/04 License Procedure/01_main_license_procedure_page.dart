import 'package:flutter/material.dart';
import 'package:rto_mcq_test/04%20License%20Procedure/02_license_page_dropdown.dart';
import 'package:rto_mcq_test/variable.dart';

class MainLicenseProcedurePage extends StatefulWidget {
  const MainLicenseProcedurePage({Key? key}) : super(key: key);

  @override
  State<MainLicenseProcedurePage> createState() => _MainLicenseProcedurePageState();
}

class _MainLicenseProcedurePageState extends State<MainLicenseProcedurePage> {

  Variable ProjectVariable = Variable();
  LicensePageDropdown LPD = LicensePageDropdown();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: ProjectVariable.headercolor,
        title: Text("Driving Licence Process",style: TextStyle(color:ProjectVariable.fontcolor ),),
      ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                LPD.DropdownMaker(NewDrivingLicence,"New Driving Licence"),
                LPD.DropdownMaker(DrivingLicence,"Addition of another category in the existing driving license"),
                LPD.DropdownMaker(RenewalofDrivingLicense,"Renewal of Driving License"),
                LPD.DropdownMaker(ChangeDrivingLicence,"For change in details of driving license or obtaining a duplicate"),
                LPD.DropdownMaker(InternationalDrivingLicence,"International Driving License or Permit"),
                LPD.DropdownMaker(DeliveredDrivingLicence,"Driving Licenses delivered"),
              ],
            ),
          ),
        )
    ));
  }
}

List<Map<String,dynamic>> NewDrivingLicence=[
  {"heading":"Application Form","subtitle":["An applicant is required to obtain a learning license in order to get new driving license.","An applicant is required to apply in Form No.2/4 for the purpose of both learning as well as driving license, Medical Certificate in Form No.1 (A) is also required to be attached. In case a person wants to obtain driving license for transport goods vehicle, & to get online appointment or for further details, please visit :www.sarathi.nic.in",]},
  {"heading":"Eligibility","subtitle":["A person should have completed 16 years to obtain license for 2 wheelers without gear.","A person should have completed 18 years age to obtain license for 2 wheelers with gear, Motor-car, Tractor and other non-transport vehicles.","For transport vehicles, a person should have completed 20 years of age. In addition he should be passed standard 8th pass and should have experience of 1 year driving a light motor vehicle."]},
  {"heading":"Necessary Documents Documents","subtitle":["Proof of Age ::: School Leaving Certificate, Birth Certificate, Passport, Pan Card, L.I.C. Policy or a Certificate from Civil Surgeon or a Doctor equivalent to that can be submitted as a proof of age.","Proof of Address ::: School Leaving Certificate, Passport, L.I.C. Policy, Electoral Voter I-Card, Light Bill, Telephone Bill, receipt of House Tax with address, Pay Slip of Central/State/Local self Government or an Affidavit from the applicant to that effect can be submitted asthe proof for address."]},
  {"heading":"Fee","subtitle":["The fee for Learning License and Driving License has to be paid together.Rs.25/-as test fee plus Rs.30/- per category of vehicle is required to be paid for Learning License.","Rs.200/- for a Smart Card Driving License and Rs.50/- per category of vehicle is required to be paid for Driving License."]},
  {"heading":"Procedure Of Examination","subtitle":["To obtain Learning License, Knowledge Test through computer is required to be passed.","Subject like Rules and Regulations of traffic, and traffic signage�s are included the test.","15 questions are asked in the test at random, out of which 11 questions are required to be answered correctly to pass the test.","48 seconds are allowed to answer each question.","A person failing in the test can appear for the re-test after a gap of 24 hours.","A person who has learning license or driving license and seeks to apply for an additional category of driving license in the existing driving license, is exempted from the knowledge test on computer.","Click here for LLR Practices and Mock Test"]},
  {"heading":"Driving test is compulsory to obtain permanent driving license","subtitle":["One can appear for driving test after a gap of 30 days of obtaining learning license.","Driving test is conducted on same kind of vehicle for which application is made for obtaining driving license has been made.","Learning license is valid for a period of 6 months only, therefore, an applicant is required to appear for driving test within the validity period.","Click here for, Appointment Booking for Driving Test"]}
];

List<Map<String,dynamic>> DrivingLicence=[
  {"heading":"To add another category in the existing license for two wheelers","subtitle":["Application should be made in form-8 attaching original driving license with a fee of Rs.50/- for driving license, Rs.200/- for a smart card driving license and Rs.50/- for driving test is required to be paid with application.","Learning license is required to be obtained by applicant, but he is exempted from the computer knowledge test.","Applicant can appear for driving test after a gap of 30 days of obtaining learning license."]},
  {"heading":"Addition of transport vehicle category in the L.M.V. license","subtitle":["Application is made in Form No.8 attaching original driving license is required to be attached.","Applicant should have completed 20 years of age.","Minimum standard 8th pass, and Have minimum of 1 year of experience of driving L.M.V.","Applicant should also produce certificate of training from a recognized Motor Driving School in Form No.5","A fee of Rs.50/-for driving license with Rs.200/- for a smart card and driving test fee of Rs.50/- per category of vehicle is required to paid with application.","Please note that, an applicant is required to take learning license, but he is exempted from the computer knowledge test."]},
  {"heading":"To obtain badge or authorization for transport vehicle","subtitle":["Application should be made in Form T.V.A.","Applicant should have completed 20 years of age and he should be minimum standard-8th pass, and Have minimum of 1 year of experience of driving L.M.V.","Applicant should also produce training certificate in From No.5 from an authorized Motor Driving School.","He should also produce a Certificate of good conduct from concerned Police Station.","A fee of Rs.50/- for every category of vehicle is required to be paid for this purpose"]},
  {"heading":"Inclusion of hazardous goods category in transport driving license","subtitle":["Application can be made on a plain paper specifying particulars of applicant.","The application should be accompanied with a certificate of 3 days training from a Central or State Government approved centre.","A fee of Rs.50/- for endorsement is required to be paid.","The endorsement is made for a period of one year."]}
];

List<Map<String,dynamic>> RenewalofDrivingLicense=[
  {"heading":"","subtitle":["Driving license is valid till the date as shown in the driving license.","A grace period of 30 days is granted for renewal of driving license.","If, a driving license holder comes for renewal within a period of 5 years from the date of expiry, he is exempted from test, but license is valid from date of renewed license.","Application in Form-9 attached with original Driving License should be made for renewal of driving license.","Medical Certificate in Form-1-A is required to be produced, if, applicant has completed 50 years of age or is applying for renewal of driving license for a transport vehicle.","A fee of Rs.50/- with a smart card fee of Rs.200/- is required to be paid, if, application is made within the period.","For delay, an additional fee of Rs.50/- for every year of such delay is required to be paid.","In case of original driving license is from other R.T.O. or State, then N.O.C. of concerned R.T.O. should be attached."]}
];

List<Map<String,dynamic>> ChangeDrivingLicence=[
  {"heading":"","subtitle":["Application should be made in Form L.L.D. with details of original driving license and a fee of Rs.200/- should be paid.","In case applicant has forgotten number of original smart card, then, he can apply for information regarding it by making an application indicating his name, address, date of birth and is required to be pay a fee of Rs.25/-.","To change details of driving license like name, address, etc., then, an application on plain paper with a smart card fee of Rs.200/- is required to be made.","N.O.C. from the original licensing authority should be obtained and attached with the application."]}
];

List<Map<String,dynamic>> InternationalDrivingLicence=[
  {"heading":"","subtitle":["To obtain international driving license, application in Form 4 (A) should be made along with the Medical Certificate in Form � 1 (A).","Copy of Existing driving license. Copy of passport, visa and three passport size photographs should be attached with the application.","A fee of Rs.500/- is required to be paid for this purpose.","A permit is issued for a period of one year or till the validity of existing driving license, whichever is earlier.","Duplicate International Driving Permit is not issued or renewed after expiry.","After expiry of International Driving Permit it is not renewed.","It may be noted that, such license is issued only for Indian citizen and they are required to be presented in R.T.O. in person."]}
];

List<Map<String,dynamic>> DeliveredDrivingLicence=[
  {"heading":"Learning license is delivered to the applicant in person on the same day when he comes for knowledge test.","subtitle":["Driving license is sent by speed post at the address mentioned by the applicant in his application.","International driving permit is delivered to the applicant in person."]}
];