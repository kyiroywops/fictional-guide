import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upordown/screens/screens/inicial_screen.dart';
import 'package:upordown/screens/screens/selection_screen.dart';



final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
       GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        return CustomTransitionPage<void>(
          key: state.pageKey,
          child: InicialHomeScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        );
      },  
    ),
    GoRoute(
      path: '/playerselection',
      pageBuilder: (context, state) {
        return CustomTransitionPage<void>(
          key: state.pageKey,
          child: PlayerSelectionScreen(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              var tween = Tween(begin: Offset(0.0, 1.0), end: Offset.zero).chain(CurveTween(curve: Curves.easeInOut));
              return SlideTransition(position: animation.drive(tween), child: child);
            },
          );
        },
      
    ),

    GoRoute(
      path: '/instrucions',
      pageBuilder: (context, state) {
        return CustomTransitionPage<void>(
          key: state.pageKey,
          child: PlayerSelectionScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var tween = Tween(begin: Offset(0.0, 1.0), end: Offset.zero).chain(CurveTween(curve: Curves.easeInOut));
            return SlideTransition(position: animation.drive(tween), child: child);
          },
        );
      },
    
    ),

   


   


  ]




);
