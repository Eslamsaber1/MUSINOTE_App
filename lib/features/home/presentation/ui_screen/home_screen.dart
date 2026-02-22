import 'package:flutter/material.dart';
import 'package:musinote/features/home/presentation/components/home_screen_body.dart';
import 'package:musinote/features/library/presentation/views/library_view.dart';
import 'package:musinote/features/logout/presentation/views/logout_view.dart';
import 'package:musinote/features/search/presentation/views/search_view.dart';
import '../components/custom_bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = '/home_screen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [HomeScreenBody(), SearchView(), LibraryView(), LogoutView()];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _pages[_selectedIndex],
    );
  }
}