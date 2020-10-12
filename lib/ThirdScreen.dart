import 'package:flutter/material.dart';
import './StatusHelper.dart';

class ThirdScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: ListView.builder(
          itemBuilder: (context,position) {
            StatusItemModel statusItem = StatusHelper.getStatusItem(position);
            return Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.account_circle,
                        size: 64.0,
                      ),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  statusItem.name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.0),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: Text(
                                statusItem.dateTime,
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 16.0
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      )
                    ],
                  ),
                ),
                Divider(),
              ],
            );
          },
        itemCount: StatusHelper.itemCount,
      ),

    );

  }


}
