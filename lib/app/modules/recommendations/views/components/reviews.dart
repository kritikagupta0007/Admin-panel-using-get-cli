import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ionicons/ionicons.dart';
//import 'package:rating_bar/rating_bar.dart';

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 02.0,
      borderRadius: BorderRadius.circular(03.0),
      child: Container(
        child: Column(children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 05.0),
              child: Text(
                'Reviews',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Divider(),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.0, top: 10.0),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(03.0),
                      child: Image.network(
                        'https://images-na.ssl-images-amazon.com/images/I/71H0XjpOZPL._SL1500_.jpg',
                        fit: BoxFit.cover,
                        height: 40.0,
                        width: 40.0,
                      ),
                    ),
                    Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 05.0, top: 0.0),
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Text(
                            'Samsung Galaxy M42 5G (Prism Dot Gray, 6GB RAM0)',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 05.0, top: 20.0),
                          child: RatingBar.builder(
                            initialRating: 4.5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                            // isHalfAllowed: true,
                            // halfFilledIcon: Icons.star_half,
                            // filledIcon: Icons.star,
                            // filledColor: Colors.orange,
                            // emptyIcon: Icons.star_border,
                            // size: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 0.3,
                color: Colors.black12.withOpacity(0.2),
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(left: 60.0),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.0, top: 10.0),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(03.0),
                      child: Image.network(
                        'https://images-na.ssl-images-amazon.com/images/I/71WuDXpTAlL._SL1500_.jpg',
                        fit: BoxFit.cover,
                        height: 40.0,
                        width: 40.0,
                      ),
                    ),
                    Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 05.0, top: 0.0),
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Text(
                            'HP 15 Entry Level 15.6-inch (39.62 cms) HD Laptop',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 05.0, top: 20.0),
                          child: RatingBar.builder(
                            initialRating: 3.5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                            // isHalfAllowed: true,
                            // halfFilledIcon: Icons.star_half,
                            // filledIcon: Icons.star,
                            // emptyIcon: Icons.star_border,
                            // filledColor: Colors.orange,
                            // size: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 0.3,
                color: Colors.black12.withOpacity(0.2),
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(left: 60.0),
              ),
            ],
          ),
          Column(children: [
            Container(
              margin: EdgeInsets.only(left: 10.0, top: 10.0),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(03.0),
                    child: Image.network(
                      'https://images-na.ssl-images-amazon.com/images/I/71bmFRQaYCL._SL1500_.jpg',
                      fit: BoxFit.cover,
                      height: 40.0,
                      width: 40.0,
                    ),
                  ),
                  Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 05.0, top: 0.0),
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: Text(
                          'ASUS VivoBook 14 (2020) Intel Core',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 05.0, top: 20.0),
                        child: RatingBar.builder(
                          initialRating: 5.0,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                          // isHalfAllowed: true,
                          // halfFilledIcon: Icons.star_half,
                          // filledIcon: Icons.star,
                          // emptyIcon: Icons.star_border,
                          // filledColor: Colors.orange,
                          // size: 14.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
