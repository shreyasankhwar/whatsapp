import 'package:flutter/material.dart';
import './ChatHelper.dart';

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: Center(
        child: ListView.builder(
            itemBuilder: ( context, position)
            {   ChatItemModel chatItem = ChatHelper.getChatItem(position);
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
                        Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        chatItem.name,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20.0
                                        ),
                                      ),
                                      Text(
                                        chatItem.messageDate,
                                        style: TextStyle(
                                          color: Colors.black54
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                    child: Text(
                                      chatItem.mostRecentMessage,
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 16.0
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                ],
              );
            },
            itemCount: ChatHelper.itemCount,
               ) ,
              ),
           );
  }

  }
