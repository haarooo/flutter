import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/home_screen.dart';
import 'screens/create_room_screen.dart';
import 'screens/join_room_screen.dart';
import 'screens/room_dashboard_screen.dart';
import 'screens/member_status_screen.dart';
import 'screens/submit_proof_screen.dart';
import 'screens/proof_feed_screen.dart';
import 'screens/my_page_screen.dart';

void main() {
  runApp(const CheckmateApp());
}

class CheckmateApp extends StatelessWidget {
  const CheckmateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkmate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF3B82F6),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3B82F6),
          primary: const Color(0xFF3B82F6),
        ),
        scaffoldBackgroundColor: const Color(0xFFF8FAFC),
        useMaterial3: true,
      ),
      home: const AppContainer(),
    );
  }
}

class AppContainer extends StatefulWidget {
  const AppContainer({super.key});

  @override
  State<AppContainer> createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainer> {
  String currentScreen = 'login';

  void navigate(String screen) {
    setState(() {
      currentScreen = screen;
    });
  }

  Widget getCurrentScreen() {
    switch (currentScreen) {
      case 'login':
        return LoginScreen(onNavigate: navigate);
      case 'signup':
        return SignupScreen(onNavigate: navigate);
      case 'home':
        return HomeScreen(onNavigate: navigate);
      case 'createRoom':
        return CreateRoomScreen(onNavigate: navigate);
      case 'joinRoom':
        return JoinRoomScreen(onNavigate: navigate);
      case 'roomDashboard':
        return RoomDashboardScreen(onNavigate: navigate);
      case 'memberStatus':
        return MemberStatusScreen(onNavigate: navigate);
      case 'submitProof':
        return SubmitProofScreen(onNavigate: navigate);
      case 'proofFeed':
        return ProofFeedScreen(onNavigate: navigate);
      case 'myPage':
        return MyPageScreen(onNavigate: navigate);
      default:
        return LoginScreen(onNavigate: navigate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E7EB),
      body: Center(
        child: Container(
          width: 390,
          height: 844,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 30,
                spreadRadius: 5,
              ),
            ],
          ),
          clipBehavior: Clip.antiAlias,
          child: getCurrentScreen(),
        ),
      ),
    );
  }
}
