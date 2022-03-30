  import 'dart:io';
  import 'package:flutter/material.dart';
  import 'package:splash_screen_view/SplashScreenView.dart';
  import 'package:supabase_flutter/supabase_flutter.dart';
  
  
  import 'package:myapp/src/pages/entry_point/page.dart';
  ///NOTE:
  ///if you have an error while running <flutter run> 
  ///run <flutter pub upgrade> and than <flutter run --no-sound-null-safety>
  void main() async{
    WidgetsFlutterBinding.ensureInitialized();
      Supabase.initialize(
    url: 'https://mjbwpxvafnsgjmkgbpon.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJvbGUiOiJhbm9uIiwiaWF0IjoxNjQzMDg1NDc1LCJleHAiOjE5NTg2NjE0NzV9.DyTDwKhsEKZ-buLnXSOnoVhLPTB65B0oZpFQLL2OuWo',
  );
  
    
    
    runApp(
      MyApp()
    );
  }
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Mindfulness',
        home: SplashScreenView(
          navigateRoute: PageEntryPoint(),
          duration: 2200,
          imageSize: 140,
          imageSrc: 'assets/teta-app.png',
          text: '',
          textType: TextType.NormalText,
          textStyle: TextStyle(
            fontSize: 30.0,
          ),
          backgroundColor: Colors.black,
        ),
      );
    }
  }
  