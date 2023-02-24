import 'package:flutter/material.dart';
import 'package:rto_mcq_test/variable.dart';

class LicensePageDropdown {
  Variable ProjectVariable = Variable();
  Widget DropdownMaker(List<Map<String,dynamic>> detailList,String mainHeading) {
    return Card(
      elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child:ExpansionTile(
          textColor: ProjectVariable.headercolor,
          iconColor: ProjectVariable.headercolor,
          title: Text("${mainHeading}",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17),),
          children: [
           ListView.builder(
             physics: NeverScrollableScrollPhysics(),
             shrinkWrap: true,
               itemBuilder: (context,index1){
             return ListTile(
               title: Text("${detailList[index1]["heading"]}",style: TextStyle(fontWeight: FontWeight.w500),),
               subtitle: Column(
                 children: [
                   ListView.builder(
                     physics: NeverScrollableScrollPhysics(),
                     shrinkWrap: true,
                      itemBuilder: (context,index2){
                        return Container(
                          margin: EdgeInsets.only(top: 3),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(margin:EdgeInsets.fromLTRB(0, 4,3,0),child: Icon(Icons.circle,color:ProjectVariable.headercolor,size: 10,)),
                              Expanded(child: Text("${detailList[index1]["subtitle"][index2]}",)),
                            ],
                          ),
                        );
                      },
                     itemCount: detailList[index1]["subtitle"].length,
                   ),
                 ],
               ),
             );
           },
             itemCount: detailList.length,
           ),
          ],
        )
    );
  }
}