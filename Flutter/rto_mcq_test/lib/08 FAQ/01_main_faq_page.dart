import 'package:flutter/material.dart';
import 'package:rto_mcq_test/04%20License%20Procedure/02_license_page_dropdown.dart';
import 'package:rto_mcq_test/variable.dart';

class MainFAQPage extends StatefulWidget {
  const MainFAQPage({Key? key}) : super(key: key);

  @override
  State<MainFAQPage> createState() => _MainFAQPageState();
}

class _MainFAQPageState extends State<MainFAQPage> {
  Variable ProjectVariable = Variable();
  LicensePageDropdown LPD = LicensePageDropdown();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("FAQ"),
          backgroundColor: ProjectVariable.headercolor,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                LPD.DropdownMaker(LearningLicence,"Learning Licence"),
                LPD.DropdownMaker(DrivingLicence,"Driving Licence"),
                LPD.DropdownMaker(RegistrationOfVehicle,"Registration Of Vehicle"),
                LPD.DropdownMaker(FitnessOfVehicle,"Fitness Of Vehicle"),
                LPD.DropdownMaker(Permit,"Permit"),
                LPD.DropdownMaker(PUC,"PUC"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<Map<String,dynamic>> LearningLicence=[
  {"heading":"1.	Is it compulsory to have a medical certificate for obtaining a learner's licence ?","subtitle":["An applicant for the grant of a non transport vehicle driving licence under the age of 50 years do not require a medical certificate. However, those applicants who are over 50 yrs. of age must produce a medical certificate in Form - 1A.","All applicants for the grant of driving licence to drive transport vehicle are required to produce a medical certificate."]},
  {"heading":"2.	Is there any age restrictions for obtaining learner's licence ?","subtitle":["The applicant shall have attaining the age of 16 years in case of motor cycle with engine capacity not exceeding 50 cc (motor cycle without gear).","The consent/declaration of the parents/guardian is necessary and shall be signed before the Licencing authority.","The applicant shall have completed the age of 18 years in case of motor cycle with gear or light motor vehicle.","In case of transport vehicles one year driving experience of light motor vehicle.","Medical certificate in Form CMV 1 and 1A is necessary in case of transport vehicle."]},
  {"heading":"3.	What is the period of validity of Learner's licence ?","subtitle":["Learner's licence is valid for the period of 6 Months."]},
  {"heading":"4.	What is Preliminary test?   Whether any exemption is provided ?","subtitle":["Written test will be conducted for the persons who have passed SSLC or equivalent examination or higher . This test will be of Multiple choice objective type.","In case of others, Oral test will be conducted.","These tests will be conducted by the Inspector of Motor Vehicles.","Applicants who are already having driving licence from any state government licensing authority or defence licensing authority or any abroad licensing authority."]},
  {"heading":"5.	What is the Subject in the Preliminary Test ?","subtitle":["Traffic signs, traffic signals and rules of the road regulations made under section 118 of Motor Vehicles Act.","Duties of driver when his vehicle is involved in an accident resulting in death or bodily injury of a person or damage to property of a third party.","Precautions to be taken while passing un-manned railway crossing and The Documents he should carry with him while driving a vehicle."]},
  {"heading":"6.	What if FAILED in the preliminary test ?","subtitle":["Application along with documents will be returned to the failed applicant and he can reappear for test on the next day onwards."]},
  {"heading":"7.	Is it compulsory to obtain Driving Training from a Motor Driving School ?","subtitle":["No, in case of private or non-commercial vehicles, it is not compulsory.","However,in case of commercial vehicles, it is compulsory because the Motor Driving School has to issue Form No.5 for commercial driving licence."]},
  {"heading":"8.	What are the precautions to be taken by a learner licence ?","subtitle":["The following points need to be kept in mind by a Learner's licence holder :","The learner's licence holder should get training under the supervision of a Permanent driving licence holder.","The learner licence holder has to display symbol -L in a Red color that should be visible from a distance.","In case of commercial vehicle, the learner licensee has to under go training either from Government Motor Driving School or Motor Driving Schools authorized by the State Government.","In addition to practical training, the learner's license holder should also learn about the vehicles' mechanism, road symbols or signs etc.","If you are learning how to drive a two-wheeler, you cannot carry any other person on the pillion except your instructor."]},
];

List<Map<String,dynamic>> DrivingLicence=[
  {"heading":"1. What is the amount of Fees payable for Issuing Fresh Driving Licence ?","subtitle":["Rs. 200/- Smart Card Type Driving Licence","Rs. 50/- Towards Driving Test."]},
  {"heading":"2. What is Driving Test (Test of competence to drive) ?","subtitle":["The Inspector of motor vehicles will conduct the test of competence to drive vehicle as per the procedures laid down under the rule 15 of Central Motor Vehicle Rules, 1989.","After satisfaction about the driving skills he will pass his recommendations about the issue of driving licence. The Asst. R.T.O. after satisfying himself will pass an order to issue driving licence."]},
  {"heading":"3. What is period of validity of Driving Licence ?","subtitle":["A licence to drive a non transport vehicle shall be effective for a period of 20 yrs. from the date of issue or renewal or the holder attains the age of 50 yrs., whichever is earlier, after that the licence is renewable for 5 years.","Licence to drive a transport vehicle be effective for a period of three years from the date of its issue.","An authorization of licence to drive a transport vehicle carrying goods of dangerous or Hazardous nature be effective for one year."]},
  {"heading":"4. What about International Driving Licence? Which Document require for applying for a International driving license ?","subtitle":["International driving licenses are issued from various zonal offices. The validity of this permit is for one year. You are required to get your licence from the country your visiting within one year period. Following documents are to be produced at the time of applying for a International driving license :- ","a.  Copy of Valid driving licence.\nb.  copy of valid Air Ticket .\nc.  copy of valid Passport.\nd.  copy of valid Visa.\ne.  Fee of Rs. 500/-.\nf.  Five passport size photograph."]},
];

List<Map<String,dynamic>> RegistrationOfVehicle=[
  {"heading":"1.	What I have to do when I bring an other state vehicle to Gujarat State?","subtitle":["If the vehicle is purchased from outside state bearing other state registration mark then Transfer of ownership has to be intimated within 30 days.","Before using the vehicle in the state of Gujarat you should pay Motor vehicle Tax.","To know about this, The first thing to do is to approach is, visit RTOs along with the Original Registration Certificate, Insurance and Emission Testing Certificate.","You approach the Help Desk or the Public relation officer, who will guide to the concerned officer/counter","At the counter you will be guided about the procedure, forms to be filed, tax and fees to be paid.","The tax to be paid will be assessed on the basis of the age and cubic capacity of the vehicle as on the date of migration in respect of cars and motorcycles."]},
  {"heading":"2. Whether NOC (NO objection Certificate) is required for payment of Tax?","subtitle":["NOC is not a requirement for payment of tax ."]},
  {"heading":"3.	When an NOC (NO objection Certificate) and an NDC (No Due Certificate) are required?","subtitle":["NOC is required When you want to obtain Gujarat Registration Mark in respect of an other state vehicle.","NDC is required When transfer of ownership is to be recorded in the certificate of Registration in respect of an other Region/District vehicle."]},
  {"heading":"4.	Should the vehicle be produced for inspection for recording change of address/ transfer of ownership?","subtitle":["Yes it is mandatory for the vehicle to be produced for inspection."]},
];

List<Map<String,dynamic>> FitnessOfVehicle=[
  {"heading":"1.	Can my vehicle fitness certificate be canceled if my fitness certificate is valid but the vehicle is not safe & sound?","subtitle":["Yes, It can. You have to maintain your vehicle fit through out the year in safe and sound condition"]},
  {"heading":"2.	What happens if my vehicle met with an accident after expiry of fitness?","subtitle":["You will be held responsible for plying vehicle without registration and Insurance Company will not provide compensation to the victim."]},
  {"heading":"3.	What is the procedure for obtaining Fitness Certificate or Renewal of Fitness Certificate for Transport Vehicle?","subtitle":["All transport vehicles shall carry valid fitness certificate to ply on road. The owner shall apply for issue of fitness certificate in form CFRA along with prescribed fee, Registration Certificate, Insurance Certificate, Tax Card, Pollution Under Control Certificate, Permit and produce the vehicle for inspection in a good condition. The Inspector of motor vehicle will inspect the vehicle particularly on following aspects: ","1.  Front axle and steering,\n2.  Front spring,\n3.  Fuel system,\n4.  Electric system\n5.  Engine Performance,\n6.  Silencer, Transmission,\n7.  Rear springs\n8.  Tyres,\n9.  Chasiss frame,\n10.  Body,\n11.  Brake,\n12.  Compulsory Equipments,\n13.  Requisite Equipments,\n14.  Cleanliness,\n15.  Weighment of vehicle,\n16. Other observations or defects worth mentioning.","The validity of Fitness Certificate is one year."]},
];

List<Map<String,dynamic>> Permit=[
  {"heading":"1.	Who is eligible for permit?","subtitle":["Registered owner of a transport vehicle can apply for the permit. However there are restrictions or permits are made available only after notification of Government."]},
  {"heading":"2.	Who enforces the permit condition?","subtitle":["The Enforcement Wing of Transport Department ensure the compliance of permit conditions. The Gujarat Traffic Police has also given responsibility of Enforcement as per the direction of Court and Transport Department under the Motor Vehicle Act and Rules framed thereunder."]},
  {"heading":"3.	What is the action taken against violation of permit conditions especially by stage carriages buses?","subtitle":["Action is taken by STA against these offenders u/s 86 of MV Act fro suspension/cancellation of permits. Action is taken by the STA Branch under section 86/192A of the Motor Vehicle Act, 1988"]},
];

List<Map<String,dynamic>> PUC=[
  {"heading":"1.	What is the penalty for not having the pollution certificate?","subtitle":["A vehicle, not carrying a valid PUC Certificate is liable to be prosecuted under Section 190(2) of the Motor Vehicles Act. A penalty of Rs. ___ - for first offence and Rs. __- for every subsequent offence of violation has been provided."]},
  {"heading":"2.	Where should I get my vehicle pollution level checked?","subtitle":["Computerised facilities for checking of pollution levels and issue of PUC Certificates (to vehicles meeting emission standards) are available at many petrol pumps/workshops. These authorised Pollution Checking Centres are spread all over Gujarat. At present, 410 Centres for petrol / CNG driven vehicles and 231 Centres for the diesel driven vehicles are functioning. Theses centres issue Pollution Under Control Certificates (PUC) if the vehicle is found meeting prescribed emission norms. In case the vehicle is found polluting beyond prescribed norms, necessary repairs/ tuning in the vehicle would be required."]},
  {"heading":"3.	What are the fees for pollution checking?","subtitle":["Following fees for pollution checking including minor rectifications, if required have been fixed by the Government: -"," Petrol / CNG / LPG vehicle\n- Two &Three Wheeler Rs. 25/-\n- Four Wheeler Rs.50/-\n- Diesel vehicle Rs. 100/-"]},
  {"heading":"4.	What happens if my vehicle is found visibly polluting although I am carrying a valid PUC certificate?","subtitle":["The PUC Certificate of your vehicle shall be cancelled and you will be directed (under Rule 116 of CMV Rules) to produce a fresh PUC Certificate within seven days. The failure to comply with this direction would result in prosecution under section 190(2) of the Motor Vehicles Act."]},
  {"heading":"5.	When does a vehicle require a PUC Certificate?","subtitle":["After the expiry of period of one year from the date of first registration, every motor vehicle is required to carry a valid PUC Certificate & subsequently after every six months."]},
  {"heading":"6.	Vehicle is Euro-I/ Euro-II/Euro-III. Whether I need to obtain a PUC Certificate?","subtitle":["As per Central Motor Rules, 1989, every motor vehicle (including those conforming to Euro-I/ Euro-II/ Euro-III as well as vehicles plying on CNG/LPG) is required to carry a valid PUC Certificate after the expiry of period of one year from the date of its first registration"]},
  {"heading":"7.	What should I do if I see any vehicle polluting?","subtitle":["Ans: You should report to Complaint Cell/Control Room at Tel No._____ standard"]},
];