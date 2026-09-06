import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // ============================================================
  // Color Palette
  // ============================================================
  static const Color primaryBlue = Color(0xFF3B82F6);
  static const Color secondaryBlue = Color(0xFF60A5FA);
  static const Color tertiaryBlue = Color(0xFF1E293B);

  static const Color surface = Color(0xFF0B1120);
  static const Color cardSurface = Color(0xFF111827);
  static const Color lightSurface = Color(0xFF1E293B);

  static const Color onSurface = Color(0xFFF8FAFC);
  static const Color textSecondary = Color(0xFF94A3B8);

  static const Color border = Color(0xFF334155);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Personal Portfolio',
      home: const MyHomePage(),
      theme: ThemeData(
        useMaterial3: true,
        // App Bar Theme
        appBarTheme: AppBarTheme(
          backgroundColor: surface,
          foregroundColor: onSurface,
          elevation: 0,
          titleTextStyle: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: onSurface,
          ),
          shape: const Border(
            bottom: BorderSide(
              color: secondaryBlue,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}

// ===============================================
// Main Screen
// ===============================================
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// ===============================================
// Main Screen State
// ===============================================
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: MyApp.surface,
      child: Scaffold(
        backgroundColor: MyApp.surface,
        appBar: AppBar(
          backgroundColor: MyApp.surface,
          
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'PORTFOLIO',
                style: GoogleFonts.inter(
                  color: MyApp.secondaryBlue,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.4
                ),
              ),

              Container(
                alignment: Alignment.center,
                width: 40.0,
                padding: const EdgeInsets.only(
                  top: 3,
                  bottom: 3,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyApp.primaryBlue,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.code,
                    size: 15,
                    color: MyApp.secondaryBlue,
                ),
              ),
            ],
          ),
        ),

        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: MyApp.secondaryBlue,
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Profile Image
                      Container(
                        width: 125,
                        height: 125,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: MyApp.primaryBlue,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage('assets/profile_image.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      SizedBox(height: 18),

                      // Name
                      Text(
                        'Khevin Franz E. Jalbuena',
                        style: GoogleFonts.inter(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: MyApp.onSurface,
                        ),
                      ),

                      SizedBox(height: 10),

                      // Position
                      Text(
                        'IT STUDENT & DEVELOPER',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                          color: MyApp.secondaryBlue,
                        ),
                      ),

                      SizedBox(height: 10),

                      // Location
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: MyApp.textSecondary,
                            size: 18,
                          ),

                          SizedBox(width: 6),

                          Text(
                            'San Isidro, Cabuyao, Laguna, PH',
                            style: GoogleFonts.inter(
                              fontSize: 13,
                              color: MyApp.textSecondary,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),

                SizedBox(height: 24),

                // Skills
                Text(
                  'SKILLS',
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                    color: MyApp.textSecondary,
                  ),
                ),

                SizedBox(height: 10),

                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [

                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 9,
                      ),
                      decoration: BoxDecoration(
                        color: MyApp.cardSurface,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: MyApp.border,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.code,
                            size: 15,
                            color: MyApp.secondaryBlue,
                          ),

                          SizedBox(width: 6),

                          Text(
                            'SQL',
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: MyApp.onSurface,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 9,
                      ),
                      decoration: BoxDecoration(
                        color: MyApp.cardSurface,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: MyApp.border,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.language,
                            size: 15,
                            color: MyApp.secondaryBlue,
                          ),

                          SizedBox(width: 6),

                          Text(
                            'Kotlin',
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: MyApp.onSurface,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 9,
                      ),
                      decoration: BoxDecoration(
                        color: MyApp.cardSurface,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: MyApp.border,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.phone_android,
                            size: 15,
                            color: MyApp.secondaryBlue,
                          ),

                          SizedBox(width: 6),

                          Text(
                            'Flutter',
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: MyApp.onSurface,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 9,
                      ),
                      decoration: BoxDecoration(
                        color: MyApp.cardSurface,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: MyApp.border,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.design_services_outlined,
                            size: 15,
                            color: MyApp.secondaryBlue,
                          ),

                          SizedBox(width: 6),

                          Text(
                            'Figma',
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: MyApp.onSurface,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 24),

                // Projects
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: MyApp.cardSurface,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: MyApp.border,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        'PROJECTS',
                        style: GoogleFonts.inter(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                          color: MyApp.secondaryBlue,
                        ),
                      ),

                      SizedBox(height: 12),

                      Text(
                        "A collection of projects I've developed while exploring software development, mobile applications, web technologies, and UI/UX design.",
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: MyApp.textSecondary,
                        ),
                      ),

                      SizedBox(height: 14),

                      // My Projects
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 13,
                        ),
                        decoration: BoxDecoration(
                          color: MyApp.lightSurface,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: MyApp.border,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text(
                              'My Projects',
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: MyApp.onSurface,
                              ),
                            ),

                            Text(
                              '→',
                              style: GoogleFonts.inter(
                                fontSize: 20,
                                color: MyApp.secondaryBlue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                // Contact
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: MyApp.cardSurface,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: MyApp.border,
                    ),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        'CONTACT',
                        style: GoogleFonts.inter(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                          color: MyApp.secondaryBlue,
                        ),
                      ),

                      SizedBox(height: 12),

                      Text(
                        'Want to connect? Contact me here.',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: MyApp.textSecondary,
                        ),
                      ),

                      SizedBox(height: 14),

                      Row(
                        children: [

                          // EMAIL
                          Expanded(
                            child: Container(
                              padding:
                                  EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 12,
                              ),
                              decoration: BoxDecoration(
                                color: MyApp.lightSurface,
                                borderRadius: BorderRadius.circular(12,),
                                border: Border.all(
                                  color: MyApp.border,
                                ),
                              ),

                              child: Row(
                                children: [

                                  Icon(
                                    Icons.email_outlined,
                                    size: 18,
                                    color: MyApp.secondaryBlue,
                                  ),

                                  SizedBox(width: 8),

                                  Text(
                                    'Email',
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      color: MyApp.onSurface,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                          SizedBox(width: 10),

                          // GITHUB
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 12,
                              ),
                              decoration: BoxDecoration(
                                color: MyApp.lightSurface,
                                borderRadius:BorderRadius.circular(12,),
                                border: Border.all(
                                  color: MyApp.border,
                                ),
                              ),
                              child: Row(
                                children: [

                                  Icon(
                                    Icons.code,
                                    size: 18,
                                    color: MyApp.secondaryBlue,
                                  ),

                                  SizedBox(width: 8),

                                  Text(
                                    'GitHub',
                                    style:GoogleFonts.inter(
                                      fontSize: 12,
                                      color: MyApp.onSurface,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                // Click Me Button
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: MyApp.cardSurface,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: MyApp.border,
                    ),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        'GESTURE ACTION',
                        style: GoogleFonts.inter(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.4,
                          color: MyApp.secondaryBlue,
                        ),
                      ),

                      SizedBox(height: 12),

                      GestureDetector(
                        onTap: () {
                          debugPrint("[Single Tap]\nToday's Date: September 06, 2026");
                        },
                        onDoubleTap: () {
                          debugPrint('[Double Tap]\nITP107 Professor: Albert Q. Alforja');
                        },
                        onLongPress: () {
                          debugPrint('[Long Press]\nFull Name: Khevin Franz E. Jalbuena');
                        },
                        child: SizedBox(
                          width: double.infinity,
                          height: 44,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              disabledBackgroundColor: MyApp.primaryBlue,
                              disabledForegroundColor: MyApp.onSurface,
                            ),
                            onPressed: null,
                            child: Text(
                              'CLICK ME',
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.4,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}