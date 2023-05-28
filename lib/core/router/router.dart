import 'package:mshi/features/admin_activity/admin_activity.dart';
import 'package:mshi/features/main_activity/chats/chats_list_screen.dart';
import 'package:mshi/features/main_activity/courses/course_detail_screen.dart';
import 'package:mshi/features/main_activity/courses/course_module.dart';
import 'package:mshi/features/main_activity/courses/courses_list_screen.dart';
import 'package:mshi/features/main_activity/main_activity.dart';
import 'package:mshi/features/main_activity/map/map_screen.dart';
import 'package:mshi/features/main_activity/notifications/notifications_screen.dart';
import 'package:mshi/features/main_activity/profiles/achievements/achievements_screen.dart';
import 'package:mshi/features/main_activity/profiles/friends_list/friends_list_screen.dart';
import 'package:mshi/features/main_activity/profiles/user_profile/user_profile_screen.dart';
import 'package:mshi/features/main_activity/raiting/raiting_screen.dart';
import 'package:mshi/features/main_activity/schools/program_detail/program_detail_screen.dart';
import 'package:mshi/features/main_activity/schools/schools_detail_screen/schools_detail_screen.dart';
import 'package:mshi/features/main_activity/schools/schools_list_screen/school_list_screen.dart';
import 'package:mshi/features/main_activity/schools/teacher_detail/teacher_detail.dart';
import 'package:mshi/features/welcome_activity/auth_screen/view/auth_screen.dart';
import 'package:mshi/features/main_activity/home_screen/home_screen.dart';
import 'package:mshi/features/welcome_activity/loading_screen/view/loading_screen.dart';
import 'package:mshi/features/main_activity/news/news_screen/news_screen.dart';
import 'package:mshi/features/main_activity/news/news_detail/news_detail_screen.dart';
import 'package:mshi/features/welcome_activity/onboarding_screen/view/onboarding_screen.dart';

final routes = {
  '/': (context) => const LoadingScreen(),
  '/loading': (context) => const LoadingScreen(),
  '/onboarding': (context) => const OnboardingScreen(),
  '/auth': (context) => const AuthScreen(),
  '/main_activiy': (context) => MainActivity(),
  '/home': (context) => const HomeScreen(),
  '/news': (context) => const NewsScreen(),
  '/news_detail': (context) => const NewsDetailScreen(),
  '/schools': (context) => const SchoolListScreen(),
  '/school_detail': (context) => const SchoolDetailScreen(),
  '/course_detail': (context) => const CourseDetailScreen(),
  '/course_module': (context) => const CourseModuleScreen(),
  '/teacher_detail': (context) => const TeacherDetailScreen(),
  '/program_detail': (context) => const ProgramDetailScreen(),
  '/raiting': (context) => const RaitingScreen(),
  '/map': (context) => const MapScreen(),
  '/notifications': (context) => const NotificationsScreen(),
  '/chats_list_screen': (context) => const ChatsListScreen(),
  '/user_profile': (context) => const UserProfileScreen(),
  '/other_user_profile': (context) => const UserProfileScreen(),
  '/achievements': (context) => const AchievementsListScreen(),
  '/friends_list': (context) => const FriendsListScreen(),
  '/courses_list': (context) => const CoursesListScreen(),
  '/admin_activity': (context) => const AdminActivity(),

  // maps
  // fix onboarding
  // fix auth buttons
};
