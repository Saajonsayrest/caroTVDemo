import 'package:carotv/core/resources/app_colors.dart';
import 'package:carotv/feature/dashboard/presentation/components/bottom_nav_bar.dart';
import 'package:carotv/feature/dashboard/presentation/components/search_button.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [
    Text('Home', style: TextStyle(color: AppColors.primary)),
    Text('Live TV', style: TextStyle(color: AppColors.primary)),
    Text('Movies', style: TextStyle(color: AppColors.primary)),
    Text('Shows', style: TextStyle(color: AppColors.primary)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Caro TV',
          style: TextStyle(color: AppColors.classicYellow),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavBar(_selectedIndex, _onItemTapped),
      floatingActionButton: const SearchButton(),
    );
  }
}
