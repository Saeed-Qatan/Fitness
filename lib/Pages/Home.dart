import 'package:fitness/Models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> category = [];

  void _getcategories() {
    category = CategoryModel.getcategories();
  }

  @override
  void initState() {
    // TODO: implement initState
    _getcategories();
  }

  @override
  Widget build(BuildContext context) {
    _getcategories();
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchfield(),
          SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Category",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                color: Colors.yellow,
                child: ListView.builder(
                  itemCount: category.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container();
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container _searchfield() {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xff1D1617).withOpacity(0.11),
          spreadRadius: 0.0,
          blurRadius: 40,
        ),
      ]),
      child: TextField(
        decoration: InputDecoration(
            fillColor: Color(0xffFAF8FB),
            filled: true,
            hintText: "Search pancake",
            hintStyle: TextStyle(
                color: Color(0xffDDDADA), fontSize: 14, inherit: true),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(
                "asset/icons/Search.svg",
              ),
            ),
            suffixIcon: Container(
              width: 100,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      thickness: 0.1,
                      color: Colors.black,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset("asset/icons/Filter.svg"),
                    ),
                  ],
                ),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
        title: Text(
          "breakfast",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "asset/icons/Arrow - Left 2.svg",
              width: 20,
              height: 20,
            ),
            decoration: BoxDecoration(
              color: Color(0xffFAF8FB),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 37,
              child: SvgPicture.asset(
                "asset/icons/dots.svg",
                width: 5,
                height: 5,
              ),
              decoration: BoxDecoration(
                color: Color(0xffFAF8FB),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ]);
  }
}
