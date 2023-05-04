import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:katai/features/leaderboard/presentation/pages/leaderboard_page.dart';
import 'package:katai/features/profile/domain/entities/user.dart';
import 'package:katai/features/profile/presentation/bloc/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:katai/core/router/router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:katai/features/profile/presentation/bloc/user_state.dart';
import 'package:katai/features/profile/presentation/pages/profile_page.dart';
import 'package:katai/features/ride/presentation/pages/ride_create_page.dart';
import 'package:lumberdash/lumberdash.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  late User user;

  int _selectedIndex = 0;


  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().getMe();
  }

  @override
  Widget build(BuildContext context) {
    const bool debug = false;

    final routes = [
      {"text": "Create", "location": const RideCreatePageRoute()},
      {"text": "Leaderboard", "location": const LeaderBoardPageRoute()},
      {"text": "Profile", "location": const ProfilePageRoute()},
    ];


    final pages = [
      RideCreatePage(),
      LeaderBoardPage(),
      ProfilePage(),
    ];

    void _onItemTap(int index) {
      setState(() {
        _selectedIndex = index;
          AutoRouter.of(context)
              .push(routes[_selectedIndex]['location']! as PageRouteInfo);
      });
    }

    final List<Widget> widgets = [];
    for (final route in routes) {
      widgets.add(Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: MaterialButton(
          padding: const EdgeInsets.all(10),
          onPressed: () {
            AutoRouter.of(context).push(route['location']! as PageRouteInfo);
          },
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(route["text"]! as String).tr(),
        ),
      ));
    }

    final List<Widget> debugWidgets = [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: MaterialButton(
              padding: const EdgeInsets.all(10),
              onPressed: () {
                context.setLocale(Locale('en'));
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text('en'),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: MaterialButton(
              padding: const EdgeInsets.all(10),
              onPressed: () {
                context.setLocale(Locale('ru'));
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text('ru'),
            ),
          )
        ],
      ),
    ];

    if (debug) {
      return Scaffold(
        body: BlocConsumer<UserCubit, UserState>(listener: (context, state) {
          if (state is UserGot) {
            user = state.user;
          }

          if (state is UserError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.redAccent,
            ));
          }
        }, builder: (context, state) {
          if (state is UserGot) {
            return Center(
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(50),
                children:
                    state.user.isSuperuser ? widgets + debugWidgets : widgets,
              ),
            );
          }
          return Center(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(50),
              children: widgets,
            ),
          );
        }),
      );
    } else {
      return Scaffold(
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 36,
          items: [
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.bicycle), label: 'Race'),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.globeEurope), label: 'Leaderboard'),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.userAlt), label: 'Profile'),
          ],
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      );
    }
  }
}
