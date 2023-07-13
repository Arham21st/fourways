import 'package:flutter/material.dart';
import 'package:fourways/routes/routes_helper.dart';
import 'package:fourways/screens/home_header.dart';
import 'package:fourways/utils/dimensions.dart';
import 'package:fourways/utils/widgets/image_input.dart';
import 'package:fourways/utils/widgets/widgets.dart';

class SignPOD extends StatefulWidget {
  const SignPOD({super.key});

  @override
  State<SignPOD> createState() => _SignPODState();
}

class _SignPODState extends State<SignPOD> {
  var signController = TextEditingController();
  var printNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          
          children: [
            HomeHeader(isText: true,text: "Sign POD",backwaardRoute: RoutesHelper.getMainPage(),),
            SizedBox(height: Dimensions.height20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Dimensions.height20),
                  child: HeadingText(text: "Please Sign",size: Dimensions.font26,fontWeight: FontWeight.bold,),
                ),
                SizedBox(height: Dimensions.height10,),
                Padding(padding: EdgeInsets.only(left: Dimensions.height25,right: Dimensions.height25),
                
                
                child:
                 ListTile(
                  onTap: () {
                  //final image = await getImageFromGallery();
                      ImageInput(); 
                },
                  title: HeadingText(text: "Upload Pictures",size: Dimensions.font20,color: Colors.grey.shade500,),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimensions.height10)),
                  trailing: Icon(Icons.file_upload_outlined,size: Dimensions.height30,),
                  tileColor: Colors.white,
                ),
                ),
                SizedBox(height: Dimensions.height20,),
                Padding(padding: EdgeInsets.only(left: Dimensions.height25,right: Dimensions.height25),
                
                
                child: 
                 SizedBox(
                  height: Dimensions.height20*2.9,
                   child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      keyboardType: TextInputType.name,
                      controller: printNameController,
                      decoration: InputDecoration(
                        
                        contentPadding: EdgeInsets.all(Dimensions.height20),
                        hintText: "Print Name",
                        hintStyle: TextStyle(fontFamily: "Heading",fontSize: Dimensions.font20,color: Colors.grey.shade500,),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Dimensions.height10),
                          borderSide: BorderSide.none,
                          gapPadding: 1.0,
                          
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Dimensions.height15),
                          borderSide: BorderSide.none,
                          
                        )
                      ),
                    ),
                 )
                ),

                SizedBox(height: Dimensions.height20*2,),
                Padding(padding: EdgeInsets.only(left: Dimensions.height25,right: Dimensions.height25),
                child: TextField(
                    showCursor: false,
                    enabled: false,
                    controller: signController,
                    keyboardType: TextInputType.none,
                    
                    maxLines: 10,
                    
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(Dimensions.height20),
                        borderSide: BorderSide.none
                      ),
                      
                      label: InkWell(
                        onTap: () {
                          
                        },
                        child: HeadingText(text: "CLEAR",size: Dimensions.font26,color: Colors.grey.shade700,)),
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Signature Pad",
                      hintStyle: TextStyle(fontFamily: "Heading",fontSize: Dimensions.font20,color: Colors.grey.shade500,),
                      
                    ),
                  ),
                    )

                
              ],
            )
          ],
        )
        ),
    );
  }
}