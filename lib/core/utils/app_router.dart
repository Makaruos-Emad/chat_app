import 'package:chat_app/features/home/presentation/view/chat_view.dart';
import 'package:chat_app/features/home/presentation/view/home_view.dart';
import 'package:chat_app/features/login/presentation/view/login_view.dart';
import 'package:chat_app/features/login/presentation/view/register_view.dart';
import 'package:chat_app/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kLoginView = '/LoginView';
  static const kRegisterView = '/RegisterView';
  static const kHomeView = '/HomeView';
  static const kChatView = '/ChatView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kChatView,
        builder: (context, state) => const ChatView(),
      ),
    ],
  );
}
