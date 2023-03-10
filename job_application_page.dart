import 'package:flutter/material.dart';
import 'package:ruralclap_app/widgets/search_bar.dart';
import 'package:ruralclap_app/widgets/job_card.dart';
import 'package:ruralclap_app/widgets/bottom_navbar.dart';
import 'package:ruralclap_app/constant/theme_color.dart';

class JobApplication extends StatefulWidget {
  @override
  _JobApplicationState createState() => _JobApplicationState();
}

class _JobApplicationState extends State<JobApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Apply for job",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'Roboto',
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CompanyCard(),
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "Job Details",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          SizedBox(height: 15.0),
          CompanyCardDetailed(),
        ],
      ),
    );
  }
}

class CompanyCard extends StatelessWidget {
  const CompanyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [],
        ),
        child: Column(
          children: [
            const Icon(
              Icons.business,
              size: 45,
              color: Colors.grey,
            ),
            Text(
              "Job title",
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Text(
              "Company",
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            Text(
              "Rating",
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Applications",
              style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ],
        ));
  }
}

class CompanyCardDetailed extends StatelessWidget {
  const CompanyCardDetailed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [],
        ),
        child: Column(
          children: [
            Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 18,
                ),
                children: [
                  WidgetSpan(
                    child: Icon(
                      Icons.add_location,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ),
                  TextSpan(
                    text: 'Location',
                  )
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 18,
                ),
                children: [
                  WidgetSpan(
                    child: Icon(
                      Icons.arrow_right,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ),
                  TextSpan(
                    text: 'Job-type',
                  )
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 18,
                ),
                children: [
                  WidgetSpan(
                    child: Icon(
                      Icons.business,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ),
                  TextSpan(
                    text: 'Salary',
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
