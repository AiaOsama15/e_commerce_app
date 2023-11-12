import 'package:e_commerce_app/cubit/get_catogery/cubit_get_catogery.dart';
import 'package:e_commerce_app/shared/constant.dart';
import 'package:e_commerce_app/shared/navigator.dart';
import 'package:e_commerce_app/views/one_product_view.dart';
import 'package:flutter/material.dart';

buildCirculaCatogory() {
  List<String> listOfImageCatogery = [
    'assets/images/man_bag.png',
    'assets/images/shirt.png',
    'assets/images/man pants.png',
    'assets/images/dress.png',
    'assets/images/woman shoes.png',
    'assets/images/skirt.png',
    'assets/images/bikini.png',
  ];
  List<String> listOfImageNamesCatogery = [
    'M_bag',
    'M_shirt',
    'M_pants',
    'W_dress',
    'W_shoes',
    'W_skirt',
    'W_bikini',
  ];
  return SizedBox(
    height: 140,
    child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              InkWell(
                onTap: () async {
                  GetCatogeryCubit.get(context).getCatogeryData(id: index);

                  navigate(context, const OneProductView());
                },
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 161, 189, 183),
                  radius: 38,
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 36,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(listOfImageCatogery[index]),
                          ),
                        ),
                      )),
                ),
              ),
              hSizedBox,
              Text(
                listOfImageNamesCatogery[index],
                style: thinTextStyle,
              )
            ],
          );
        },
        separatorBuilder: (BuildContext context, int item) => wSizedBox,
        itemCount: listOfImageCatogery.length),
  );
}
