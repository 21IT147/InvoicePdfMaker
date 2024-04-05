import 'package:flutter/material.dart';
import 'package:flutter_pdf_gen/pages/detail.dart';
import 'package:remixicon/remixicon.dart';

import '../models/bill_model.dart';

class FinalView extends StatelessWidget {
  FinalView({Key? key}) : super(key: key);

  final bills = <BillModel>[
  BillModel(
    customer: 'Keval Sheth',
    address: 'Valsad Pardi',
    items: [
      LineItem('Consultation Services', 150),
      LineItem('Custom Software Development', 2500.75),
      LineItem('Training Session', 180),
    ],
    name: 'Software Consultation and Development',
  ),
  BillModel(
    customer: 'Pratik Rajput',
    address: 'Isanpur',
    items: [
      LineItem('Graphic Design', 90),
      LineItem('Hosting Services', 120),
      LineItem('Mobile App Development', 3500.25),
    ],
    name: 'Design and Development Services',
  ),
  BillModel(
    customer: 'Jay Shah',
    address: 'Gadapura',
    items: [
      LineItem('System Integration', 200),
      LineItem('Database Management', 300),
      LineItem('Content Creation', 180.50),
    ],
    name: 'Integrated Solutions Package',
  ),
  BillModel(
    customer: 'Jagdishsinh Rathod',
    address: 'Nadiad',
    items: [
      LineItem(
        'Technical Engagement',
        120,
      ),
      LineItem('Deployment Assistance', 200),
      LineItem('Develop Software Solution', 3020.45),
      LineItem('Produce Documentation', 840.50),
    ],
    name: 'Create and deploy software package'),
  BillModel(
    customer: 'Rushi Shah',
    address: 'Petlad',
    items: [
      LineItem('Animation Services', 180),
      LineItem('Storyboarding', 120),
      LineItem('Character Design', 250.75),
    ],
    name: 'Animation and Design Package',
  ),
  BillModel(
    customer: 'Dhruv Patel',
    address: 'Vidhyanagar',
    items: [
      LineItem('Robotics Consultation', 300),
      LineItem('AI Programming', 500),
      LineItem('Virtual Reality Development', 1200.50),
    ],
    name: 'Future Tech Solutions',
  ),
  BillModel(
    customer: 'Raj Patel',
    address: 'Mehlav',
    items: [
      LineItem('Investigation Services', 150),
      LineItem('Surveillance Equipment', 200),
      LineItem('Evidence Analysis', 300.25),
    ],
    name: 'Private Investigation Package',
  ),
  BillModel(
    customer: 'Ronak Patel',
    address: 'Malbar Hill',
    items: [
      LineItem('Spell Casting Consultation', 100),
      LineItem('Enchantment Services', 180),
      LineItem('Magical Artifact Creation', 450.75),
    ],
    name: 'Magical Services Bundle',
  ),
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  /// AppBar
  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Bills'),
      centerTitle: true,
      leading:
          IconButton(onPressed: () {}, icon: const Icon(Remix.menu_2_line)),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Remix.filter_2_line)),
        IconButton(onPressed: () {}, icon: const Icon(Remix.search_2_line)),
      ],
    );
  }

  /// Body
  Widget _buildBody(BuildContext context) {
    return ListView(
      children: [
        ...bills.map(
          (e) => ListTile(
            title: Text(e.name),
            subtitle: Text(e.customer),
            trailing: Text('\$${e.totalCost().toStringAsFixed(2)}'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (builder) => DetailPage(singleBillItem: e),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
