import 'package:flutter/material.dart';
import 'package:blood_app/constants.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  String _value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redBackground,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(20.0),
                color: Colors.white,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Theme(
                        data: ThemeData(
                          primaryColor: redLightBlood,
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                          onChanged: (String value) {},
                          keyboardType: TextInputType.text,
                          cursorColor: redLightBlood,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            counterText: '',
                            focusColor: redLightBlood,
                            border: OutlineInputBorder(
                              gapPadding: 4.0,
                            ),
                            labelText: 'Name',
                            hintText: 'Full Name',
                          ),
                          autofocus: false,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Theme(
                              data: ThemeData(
                                primaryColor: redLightBlood,
                              ),
                              child: TextField(
                                textAlign: TextAlign.center,
                                onChanged: (String value) {},
                                keyboardType: TextInputType.text,
                                cursorColor: redLightBlood,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.location_on),
                                  counterText: '',
                                  focusColor: redLightBlood,
                                  border: OutlineInputBorder(
                                    gapPadding: 4.0,
                                  ),
                                  labelText: 'Hospital',
                                  hintText: 'Hospital',
                                ),
                                autofocus: false,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: IconButton(
                              icon: Icon(
                                Icons.add_location,
                                color: redLightBlood,
                                size: 30.0,
                              ),
                              tooltip: 'Increase volume by 10',
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Theme(
                        data: ThemeData(primaryColor: Colors.white),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          runSpacing: 10.0,
                          spacing: 10.0,
                          children: List<Widget>.generate(
                            8,
                            (int index) {
                              return ChoiceChip(
                                padding: EdgeInsets.all(5),
                                selectedColor: redLightBlood,
                                tooltip: 'Select The Type',
                                avatar: Icon(
                                  Icons.whatshot,
                                  color: redIconColor,
                                ),
                                label: Text(bloodTypes[index]),
                                selected: _value == bloodTypes[index],
                                onSelected: (bool selected) {
                                  setState(() {
                                    _value = bloodTypes[index];
                                  });
                                },
                              );
                            },
                          ).toList(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 10.0,
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                color: redLightBlood,
                onPressed: () {},
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}