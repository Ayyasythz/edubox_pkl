import 'package:edubox_pkl/components/search_box.dart';
import 'package:edubox_pkl/entity/users.dart';
import 'package:edubox_pkl/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:edubox_pkl/utils/constant.dart';


import '../../v_detailProfile.dart';
import 'category_list.dart';
import 'profile_card.dart';

class Body extends StatefulWidget{
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  List<Datum> _users;
  bool _loading;

  @override
  void initState() {
    super.initState();
    _loading = true;
    ApiService.getUsers().then((users) {
      setState(() {
        _users = users;
        _loading = false;
      });
    });
  }


  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(onChanged: (value) {}),
          CategoryList(),
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: <Widget>[
                // Our background
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  // here we use our demo procuts list
                  itemCount: _users == null ? 0 : _users.length,
                  itemBuilder: (context, index) => ProfileCard(
                    itemIndex: index,
                    profile: _users[index],
                     press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailProfile(
                            profil: _users[index]
                          ),
                        ),
                      );
                    },
                    
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
