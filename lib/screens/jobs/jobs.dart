import 'package:flutter/material.dart';
import 'package:fourways/routes/routes_helper.dart';
import 'package:fourways/screens/home_header.dart';
import 'package:fourways/screens/jobs/Pending_jobs.dart';
import 'package:fourways/screens/jobs/completed_jobs.dart';
import 'package:fourways/screens/jobs/in_progress_jobs.dart';
import 'package:fourways/screens/jobs/to_do_jobs.dart';
import 'package:fourways/utils/app_colors.dart';
import 'package:fourways/utils/dimensions.dart';
import 'package:fourways/utils/widgets/widgets.dart';
import 'package:get/get.dart';

class JobsDetails extends StatefulWidget {
  const JobsDetails({super.key});

  @override
  State<JobsDetails> createState() => _JobsDetailsState();
}

class _JobsDetailsState extends State<JobsDetails> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
        children: [
          SizedBox(height: Dimensions.height10,),
          HomeHeader(backwaardRoute: RoutesHelper.getMainPage(),isText: true,refreshIcon: true,),
          SizedBox(height: Dimensions.height10,),
          Container(
              height: Dimensions.height20*2,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,   
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Padding(
                    padding: EdgeInsets.only(  left: Dimensions.height10,right: Dimensions.height5),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedItem=index;

                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(Dimensions.height10),
                        decoration: BoxDecoration(
                          border: index!=selectedItem? Border.all(color: Colors.black,width: 0.5): Border(),
                          color: index==selectedItem? Color.fromARGB(255, 168, 210, 159): Colors.white,
                          borderRadius: BorderRadius.circular(Dimensions.height10)
                        ),
                        child: index==0?FittedBox(
                              
                              fit: BoxFit.scaleDown,
                              child: HeadingText(text: "Pending",size: Dimensions.font16,fontWeight: FontWeight.bold,)):
                            index==1?FittedBox(
                              fit:BoxFit.scaleDown, child: HeadingText(text: "To Do",size: Dimensions.font16,fontWeight: FontWeight.bold,)):
                            index==2?FittedBox(
                              fit: BoxFit.scaleDown,
                              child: HeadingText(text: "In Progress",size: Dimensions.font16,fontWeight: FontWeight.bold,)):
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: HeadingText(text: "Completed",size: Dimensions.font16,fontWeight: FontWeight.bold,))
                        )
                    ),
                  );
              }
              ),

            ),
            SizedBox(height: Dimensions.height10,),
            Expanded(
              child: 
              selectedItem==0?
              PendingJobs():
              selectedItem==1?
              ToDoJobs():
              selectedItem==2?
              InProgessJobs():
              CompletedJobs()
              )
        ],
      )
      ),
    );
  }
}