import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:produck_quantity/quentity_count.dart';

class Coundown extends StatefulWidget {
  const Coundown({super.key});

  @override
  State<Coundown> createState() => _CoundownState();
}

class _CoundownState extends State<Coundown> {
  final _counter = Get.put(Quentity_Count());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('My Bag',style: TextStyle(fontSize: 25.sp),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                elevation: 10,
                shadowColor: Colors.black,
                child: Stack(
                    children:[ Container(
                      height: 150.h,
                      width: double.infinity.w,
                      color: Colors.white,
                    ),
                      Row(
                        children: [
                          Container(
                            height: 150.h,
                            width: 120.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage('https://static-01.daraz.com.bd/p/38a8e822da9fe774e7381188a8db832a.jpg')
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('PullOver',style: TextStyle(fontSize: 25.sp),),
                              Row(
                                children: [
                                  Text('Color: Black',style: TextStyle(fontSize: 15.sp),),
                                  SizedBox(width: 20.w,),
                                  Text('Size: L',style: TextStyle(fontSize: 15.sp),),
                                ],
                              ),
                              SizedBox(width: 50,),
                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: _counter.decrement,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    child: const Icon(Icons.minimize,color: Colors.black,),
                                  ),
                                  SizedBox(width: 10.w,),
                                  Obx(() => Text('${_counter.conter}',style:
                                  TextStyle(fontSize: 20.sp),),),
                                  SizedBox(width: 10.w,),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                    ),
                                    onPressed: _counter.increment,
                                    child: const Icon(Icons.add,color: Colors.black),
                                  ),
                                  SizedBox(width: 10.w,),
                                  Obx(() => Text('\$${_counter.conter * 20 }',style:
                                  TextStyle(fontSize: 20.sp,color: Colors.blue),),),
                                  //Text('${_counter.conter }',style: TextStyle(fontSize: 25),)
                                ],
                              ),

                            ],
                          ),
                        ],
                      ),
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}