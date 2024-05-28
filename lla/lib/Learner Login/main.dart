import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lla/admin_login.dart';
import 'package:loading_icon_button/loading_icon_button.dart';
import 'package:fan_floating_menu/fan_floating_menu.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LanguageLearningHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LanguageLearningHomePage extends StatelessWidget {
  const LanguageLearningHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF14163C),
        title: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Language Learning App',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(width: 8.0),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/bgll.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(20.0),
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          'assets/bg.jpg',
                          width: double.infinity,
                          height: 220.0,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Welcome to Language Learning App',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ChoicesPage(),
                            ),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.transparent.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChoicesPage extends StatelessWidget {
  const ChoicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: const Color(0xFF14163C),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Language Learning App',style: TextStyle(color: Colors.white),),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/bgll.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const Text(
                //   'Select Your Type?',
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: 20,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    // Navigate to Learner Login Page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LearnerLoginPage(),
                      ),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.7, 0.4],
                        colors: [Color(0xFF14163C), Colors.white],
                      ),
                      border: Border.all(
                        color: Colors.blueGrey,
                        width: 2,
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 38,
                          backgroundImage: NetworkImage(
                              'https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Learner Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    // Navigate to Admin Login Page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdminLoginPage(),
                      ),
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.7, 0.4],
                        colors: [Color(0xFF14163C), Colors.white],
                      ),
                      border: Border.all(
                        color: Colors.blueGrey,
                        width: 2,
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 38,
                          backgroundImage: NetworkImage(
                              'https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Admin Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF14163C),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Language Learning App',style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height - kToolbarHeight,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bgll.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              color: const Color(0xFF14163C).withOpacity(0.8),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    width: double.infinity,
                    height: 600,
                    child: Card(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                        side: const BorderSide(
                          color: Colors.transparent, // Set border color to transparent
                          width: 2.0,
                        ),
                      ),
                      color: const Color(0xFF14163C).withOpacity(0.9),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SingleChildScrollView(
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(30),
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                _buildInputField('User Name', Icons.person),
                                const SizedBox(height: 12),
                                _buildInputField('Email', Icons.email),
                                const SizedBox(height: 12),
                                _buildInputField('Password', Icons.lock, obscureText: true),
                                const SizedBox(height: 12),
                                _buildInputField('Confirm Password', Icons.lock, obscureText: true),
                                const SizedBox(height: 40),
                                InkWell(
                                  onTap: (){
                                    if (_formKey.currentState?.validate() ?? false) {
                                      // Add your signup logic here
                                    }
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(5)),
                                      width: double.infinity,
                                      height: 40,
                                      child: Center(child: Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 18)),)
                                  ),
                                ),

                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Already have an account? ',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'Sign in',
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputField(String label, IconData icon, {bool obscureText = false}) {
    return TextFormField(
      cursorColor: Colors.blue,
      style: const TextStyle(color: Colors.white),
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.blue),
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white60),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $label';
        }
        return null;
      },
    );
  }
}



class LearnerLoginPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LearnerLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: const Color(0xFF14163C),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Language Learning App',style: TextStyle(color: Colors.white),),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/bgll.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                height:500,
                child: Card(
                  elevation: 0.8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: const BorderSide(
                      color: Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                  color: const Color(0xFF14163C).withOpacity(0.9),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SingleChildScrollView(
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(30),
                              child: Text(
                                ' Sign In',
                                style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 8),
                            _buildInputField('User Name', Icons.person),
                            const SizedBox(height: 8),
                            _buildInputField('Password', Icons.lock, obscureText: true),
                            const SizedBox(height: 4),
                            TextButton(
                              onPressed: () {
                                // Navigate to the reset password page
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => const ResetPasswordPage()),
                                );
                              },
                              child: Align(alignment: Alignment.bottomRight,child: Text('Forgot Password', style: TextStyle(color: Colors.blue))),
                            ),
                            const SizedBox(height: 22),
                            InkWell(
                              onTap: (){
                                if (_formKey.currentState?.validate() ?? false) {
                                  // Validation passed, navigate to the proficiency level one page
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => ProficiencyLevelPage()),
                                  );
                                }
                              },
                              child: Container(
                                decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(5)),
                                width: double.infinity,
                                height: 40,
                                child: Center(child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 18)))
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text('Does not have an account?', style: TextStyle(color: Colors.white)),
                                TextButton(
                                  onPressed: () {
                                    // Navigate to the signup page
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const SignUpPage()),
                                    );
                                  },
                                  child: const Text(
                                    'Sign up',
                                    style: TextStyle(fontSize: 16, color: Colors.blue),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputField(String label, IconData icon, {bool obscureText = false}) {
    return TextFormField(
      cursorColor: Colors.blue,
      style: const TextStyle(color: Colors.white),
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.blue),
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white60),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $label';
        }
        return null;
      },
    );
  }
}




class ProficiencyLevelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Language Learning App',),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/bgll.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                height: 400,
                child: Card(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: const BorderSide(
                      color: Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                  color: const Color(0xFF14163C).withOpacity(0.9),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(50),
                          child: Text(
                            ' Select Proficiency Level',
                            style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 22),
                        ProficiencyLevelDropdown(), // Added the dropdown widget
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Dropdown widget
class ProficiencyLevelDropdown extends StatefulWidget {
  @override
  _ProficiencyLevelDropdownState createState() => _ProficiencyLevelDropdownState();
}

class _ProficiencyLevelDropdownState extends State<ProficiencyLevelDropdown> {
  String selectedLevel = 'Proficiency Level 1';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue, // Set the background color of the dropdown
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: DropdownButton<String>(
                  value: selectedLevel,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedLevel = newValue!;
                    });
                  },
                  items: <String>['Proficiency Level 1', 'Proficiency Level 2', 'Proficiency Level 3']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Container(
                        color: Colors.blue, // Set the background color of each dropdown item
                        child: Center(
                          child: Text(value, style: const TextStyle(color: Colors.white)),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        InkWell(
          onTap: (){
            // Navigate based on the selected proficiency level
            if (selectedLevel == 'Proficiency Level 1') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProficiencyLevelOnePage()),
              );
            } else if (selectedLevel == 'Proficiency Level 2') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProficiencyLevelTwoPage()),
              );
            } else if (selectedLevel == 'Proficiency Level 3') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProficiencyLevelThreePage()),
              );
            }
          },
          child: Container(
              decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(5)),
              width: double.infinity,
              height: 40,
              child: Center(child: Text('Continue', style: TextStyle(color: Colors.white, fontSize: 18)))
          ),
        ),

      ],
    );
  }
}


// Proficiency Level pages
// ... (previous imports)



class ProficiencyLevelOnePage extends StatefulWidget {
  const ProficiencyLevelOnePage({Key? key});

  @override
  State<ProficiencyLevelOnePage> createState() => _ProficiencyLevelOnePageState();
}

class _ProficiencyLevelOnePageState extends State<ProficiencyLevelOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF14163C),
        title: const Text(
          'Proficiency Level One',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Welcome in Proficiency Level1',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    ' Dashboard',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white54,
                    ),
                  ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                ),
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 35,
                mainAxisSpacing: 40,
                children: [
                  _buildDashboardItem(
                    'https://static.pbslearningmedia.org/media/collections/IL_Thumbnail_v3A.png',
                    'Interactive Lessons',
                    InteractiveLessonsPage(),
                  ),
                  _buildDashboardItem(
                    'https://images.twinkl.co.uk/tw1n/image/private/t_630_eco/image_repo/5a/b5/T-L-5428-Positional-Language-Flash-Cards_ver_1.jpg',
                    'Flashcards',
                    FlashcardsPage(),
                  ),
                  _buildDashboardItem(
                    'https://images.pexels.com/photos/256417/pexels-photo-256417.jpeg?auto=compress&cs=tinysrgb&w=600',
                    'Pronunciation Exercises',
                    PronunciationExercisesPage(),
                  ),
                  _buildDashboardItem(
                    'https://media.istockphoto.com/id/578796558/photo/gamification-improves-user-engagement-and-motivation-in-business.jpg?b=1&s=612x612&w=0&k=20&c=zHIIcfY5nFwgEKd7fNNcFTreoEksi7rDJCIzjYUakTA=',
                    'Gamification',
                    GamificationPage(),
                  ),
                  _buildDashboardItem(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyaheNdfXo8r5ypV7q3xC085FFHlsmfhrTYw&usqp=CAU.png',
                    'Offline Syllabus',
                    OfflineSyllabusPage(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(String imagePath, String title, Widget page) => GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xFF14163C).withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}

class InteractiveLessonsPage extends StatefulWidget {
  @override
  State<InteractiveLessonsPage> createState() => _InteractiveLessonsPageState();
}

class _InteractiveLessonsPageState extends State<InteractiveLessonsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FanFloatingMenu(
          toggleButtonColor: const Color(0xFF14163C).withOpacity(0.9),
          fanMenuDirection: FanMenuDirection.rtl,
          menuItems: [
            FanMenuItem(menuItemIconColor: Colors.blue,titleStyle: TextStyle(color: Colors.blueAccent),onTap: () {}, icon: Icons.edit_rounded, title: 'Edit Texts'),
            FanMenuItem(menuItemIconColor: Colors.blue,titleStyle: TextStyle(color: Colors.blueAccent),onTap: () {}, icon: Icons.save_rounded, title: 'Save Notes'),
            FanMenuItem(menuItemIconColor: Colors.blue,titleStyle: TextStyle(color: Colors.blueAccent),onTap: () {}, icon: Icons.send_rounded, title: 'Send Images'),
          ],
        ),
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xFF14163C),
          title: const Text('Interactive Lessons'),
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF14163C).withOpacity(0.9),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
                image: const DecorationImage(
                  image: NetworkImage('https://example.com/background_image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 5),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                    title: Text(
                      'Interactive Lessons',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    // subtitle: Text(
                    //   ' Dashboard',
                    //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    //     color: Colors.white54,
                    //   ),
                    // ),
                    trailing: const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            Container(
              color: const Color(0xFF14163C).withOpacity(0.9),
              child: Container(
                padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200),
                  ),
                ),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 35,
                  mainAxisSpacing: 40,
                  children: [
                    _buildDashboardItem(
                      'https://images.pexels.com/photos/5676740/pexels-photo-5676740.jpeg?auto=compress&cs=tinysrgb&w=600',
                      'Grammar',
                      GrammerPage(),
                    ),
                    _buildDashboardItem(
                      'https://images.pexels.com/photos/267669/pexels-photo-267669.jpeg?auto=compress&cs=tinysrgb&w=600',
                      'Vacabulary',
                      VocabularyPage(),
                    ),
                    _buildDashboardItem(
                      'https://images.pexels.com/photos/2422255/pexels-photo-2422255.jpeg?auto=compress&cs=tinysrgb&w=600',
                      'Images',
                      ImagesPage(),
                    ),
                    _buildDashboardItem(
                      'https://media.istockphoto.com/id/1305169776/photo/q-and-a-concept-yellow-question-mark-glowing-amid-black-question-marks-on-black-background.jpg?b=1&s=612x612&w=0&k=20&c=RdCu8nROVYGmFEltfGgRE2YYnYalNaCJuoB1W4Ni3Pc=',
                      'Quiz',
                      QuizPage(),
                    ),
                    _buildDashboardItem(
                      'https://images.pexels.com/photos/6408286/pexels-photo-6408286.jpeg?auto=compress&cs=tinysrgb&w=600',
                      'Audio/Videos',
                      AudioVideoPage(),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardItem(String imagePath, String title, Widget page) => GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xFF14163C).withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}

class GrammerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grammar'),
      ),
      body: const Center(
        child: Text('This is the Grammer page'),
      ),
    );
  }
}
class VocabularyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vocabulary'),
      ),
      body: const Center(
        child: Text('This is the Vocabulary page'),
      ),
    );
  }
}
class ImagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images'),
      ),
      body: const Center(
        child: Text('This is the Images page'),
      ),
    );
  }
}
class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: const Center(
        child: Text('This is the Quiz page'),
      ),
    );
  }
}
class AudioVideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio/Video'),
      ),
      body: const Center(
        child: Text('This is the Audio/Video page'),
      ),
    );
  }
}

class FlashcardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Flashcards'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Interactive Lessons',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                ),
              ),
              child: Center(
                child: FlipCard(
                  direction: FlipDirection.HORIZONTAL, // Set the direction of the flip
                  onFlip: () {
                    print('Card flipped');
                  },
                  flipOnTouch: true,
                  front: Container(
                    width: 200,
                    height: 300,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Tap to Flip',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  back: Container(
                    width: 200,
                    height: 300,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Back Side',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),


    );
  }
}

class PronunciationExercisesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Pronunciation Exercises'),
      ),
      body: const Center(
        child: Text('This is the Pronunciation Exercises page'),
      ),
    );
  }
}

class GamificationPage extends StatefulWidget {
  @override
  State<GamificationPage> createState() => _GamificationPageState();
}

class _GamificationPageState extends State<GamificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Gamification'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Gamification',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                ),
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 35,
                mainAxisSpacing: 40,
                children: [
                  _buildDashboardItem(
                    'https://quizizz.com/media/resource/gs/quizizz-media/quizzes/51009110-2b55-4a54-8560-5070f34c8014',
                    'Guess the Image',
                    ImageGamePage(),
                  ),
                  _buildDashboardItem(
                    'https://yt3.googleusercontent.com/DOVSU92sWIGuNz6D5xfIAO91UQxlfXLaJhQuYGHASg265gevKHvkfxlxusbjqYF_G2p1rLvSRA=s900-c-k-c0x00ffffff-no-rj',
                    'Quick Quiz',
                    QuizGamePage(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
  Widget _buildDashboardItem(String imagePath, String title, Widget page) => GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xFF14163C).withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );

}
class ImageGamePage extends StatefulWidget {
  @override
  State<ImageGamePage> createState() => _ImageGamePageState();
}
class _ImageGamePageState extends State<ImageGamePage> {
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed2() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController2.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController2.reset();
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Image Game'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Image Game',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                ),
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 35,
                mainAxisSpacing: 40,
                children: [
                  _buildDashboardItem(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSydQz4hHsx1vz--gP-WwOxtn6jIaOB7t__Kg&usqp=CAU',
                    'View Scores',
                    leaderboard(),
                  ),
                  LoadingButton(
                    primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                    child: const Text('Start Game'),
                    iconData: Icons.start,
                    onPressed: () => buttonPressed2(),
                    controller: _btnController2,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(String imagePath, String title, Widget page) => GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xFF14163C).withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
class leaderboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Leaderboard'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Leaderboard for learner',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
                padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Nabeel ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Center(child: Text("Level: ",style: TextStyle(fontWeight: FontWeight.bold,),))),
                        Expanded(child: Center(child: Text("1 ")))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Center(child: Text("Score: ",style: TextStyle(fontWeight: FontWeight.bold,),))),
                        Expanded(child: Center(child: Text("50/100 ")))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Center(child: Text("Progress: ",style: TextStyle(fontWeight: FontWeight.bold,),))),
                        Expanded(child: Center(child: Text("Average")))
                      ],
                    ),
                  ],)
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }


}
class QuizGamePage extends StatefulWidget {
  @override
  State<QuizGamePage> createState() => _QuizGamePageState();
}
class _QuizGamePageState extends State<QuizGamePage> {
  final LoadingButtonController _btnController2 = LoadingButtonController();

  void buttonPressed2() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController2.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController2.reset();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Quick Quiz'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Quick Quiz',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                ),
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 35,
                mainAxisSpacing: 40,
                children: [
                  _buildDashboardItem(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSydQz4hHsx1vz--gP-WwOxtn6jIaOB7t__Kg&usqp=CAU',
                    'View Scores',
                    leaderboardQuiz(),
                  ),
                  LoadingButton(
                    primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                    child: const Text('Start Game'),
                    iconData: Icons.start,
                    onPressed: () => buttonPressed2(),
                    controller: _btnController2,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(String imagePath, String title, Widget page) => GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xFF14163C).withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
class leaderboardQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Leaderboard'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Leaderboard for learner',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
                padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Nabeel ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Center(child: Text("Level: ",style: TextStyle(fontWeight: FontWeight.bold,),))),
                        Expanded(child: Center(child: Text("1 ")))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Center(child: Text("Score: ",style: TextStyle(fontWeight: FontWeight.bold,),))),
                        Expanded(child: Center(child: Text("50/100 ")))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Center(child: Text("Progress: ",style: TextStyle(fontWeight: FontWeight.bold,),))),
                        Expanded(child: Center(child: Text("Average")))
                      ],
                    ),
                  ],)
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }


}

class OfflineSyllabusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Offline Syllabus'),
      ),
      body: const Center(
        child: Text('This is the Offline Syllabus page'),
      ),
    );
  }
}




class ProficiencyLevelTwoPage extends StatefulWidget {
  const ProficiencyLevelTwoPage({Key? key});

  @override
  State<ProficiencyLevelTwoPage> createState() => _ProficiencyLevelTwoPageState();
}

class _ProficiencyLevelTwoPageState extends State<ProficiencyLevelTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF14163C),
        title: const Text(
          'Proficiency Level Two',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Welcome in Proficiency Level2',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    ' Dashboard',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white54,
                    ),
                  ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                ),
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 35,
                mainAxisSpacing: 40,
                children: [
                  _buildDashboardItem(
                    'https://static.pbslearningmedia.org/media/collections/IL_Thumbnail_v3A.png',
                    'Interactive Lessons',
                      InteractiveLessonsTwoPage(),
                  ),
                  _buildDashboardItem(
                    'https://images.twinkl.co.uk/tw1n/image/private/t_630_eco/image_repo/5a/b5/T-L-5428-Positional-Language-Flash-Cards_ver_1.jpg',
                    'Flashcards',
                      FlashcardsTwoPage()
                  ),
                  _buildDashboardItem(
                    'https://images.pexels.com/photos/256417/pexels-photo-256417.jpeg?auto=compress&cs=tinysrgb&w=600',
                    'Pronunciation Exercises',
                    PronunciationExercisesTwoPage(),
                  ),
                  _buildDashboardItem(
                    'https://media.istockphoto.com/id/578796558/photo/gamification-improves-user-engagement-and-motivation-in-business.jpg?b=1&s=612x612&w=0&k=20&c=zHIIcfY5nFwgEKd7fNNcFTreoEksi7rDJCIzjYUakTA=',
                    'Gamification',
                    GamificationTwoPage(),
                  ),
                  _buildDashboardItem(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyaheNdfXo8r5ypV7q3xC085FFHlsmfhrTYw&usqp=CAU.png',
                    'Offline Syllabus',
                    OfflineSyllabusTwoPage(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(String imagePath, String title, Widget page) => GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xFF14163C).withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}

class InteractiveLessonsTwoPage extends StatefulWidget {
  @override
  State<InteractiveLessonsTwoPage> createState() => _InteractiveLessonsTwoPageState();
}

class _InteractiveLessonsTwoPageState extends State<InteractiveLessonsTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FanFloatingMenu(
        toggleButtonColor: const Color(0xFF14163C).withOpacity(0.9),
        fanMenuDirection: FanMenuDirection.rtl,
        menuItems: [
          FanMenuItem(menuItemIconColor: Colors.blue,titleStyle: TextStyle(color: Colors.blueAccent),onTap: () {}, icon: Icons.edit_rounded, title: 'Edit Texts'),
          FanMenuItem(menuItemIconColor: Colors.blue,titleStyle: TextStyle(color: Colors.blueAccent),onTap: () {}, icon: Icons.save_rounded, title: 'Save Notes'),
          FanMenuItem(menuItemIconColor: Colors.blue,titleStyle: TextStyle(color: Colors.blueAccent),onTap: () {}, icon: Icons.send_rounded, title: 'Send Images'),
        ],
      ),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Interactive Lessons'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Interactive Lessons',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                ),
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 35,
                mainAxisSpacing: 40,
                children: [
                  _buildDashboardItem(
                    'https://images.pexels.com/photos/5676740/pexels-photo-5676740.jpeg?auto=compress&cs=tinysrgb&w=600',
                    'Grammar',
                    GrammerTwoPage(),
                  ),
                  _buildDashboardItem(
                    'https://images.pexels.com/photos/267669/pexels-photo-267669.jpeg?auto=compress&cs=tinysrgb&w=600',
                    'Vacabulary',
                    VocabularyTwoPage(),
                  ),
                  _buildDashboardItem(
                    'https://images.pexels.com/photos/2422255/pexels-photo-2422255.jpeg?auto=compress&cs=tinysrgb&w=600',
                    'Images',
                    ImagesTwoPage(),
                  ),
                  _buildDashboardItem(
                    'https://media.istockphoto.com/id/1305169776/photo/q-and-a-concept-yellow-question-mark-glowing-amid-black-question-marks-on-black-background.jpg?b=1&s=612x612&w=0&k=20&c=RdCu8nROVYGmFEltfGgRE2YYnYalNaCJuoB1W4Ni3Pc=',
                    'Quiz',
                    QuizTwoPage(),
                  ),
                  _buildDashboardItem(
                    'https://images.pexels.com/photos/6408286/pexels-photo-6408286.jpeg?auto=compress&cs=tinysrgb&w=600',
                    'Audio/Videos',
                    AudioVideoTwoPage(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(String imagePath, String title, Widget page) => GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xFF14163C).withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
class GrammerTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grammar'),
      ),
      body: const Center(
        child: Text('This is the Grammer page'),
      ),
    );
  }
}
class VocabularyTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vocabulary'),
      ),
      body: const Center(
        child: Text('This is the Vocabulary page'),
      ),
    );
  }
}
class ImagesTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images'),
      ),
      body: const Center(
        child: Text('This is the Images page'),
      ),
    );
  }
}
class QuizTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: const Center(
        child: Text('This is the Quiz page'),
      ),
    );
  }
}
class AudioVideoTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio/Video'),
      ),
      body: const Center(
        child: Text('This is the Audio/Video page'),
      ),
    );
  }
}

class FlashcardsTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Flashcards'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Interactive Lessons',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                ),
              ),
              child: Center(
                child: FlipCard(
                  direction: FlipDirection.HORIZONTAL, // Set the direction of the flip
                  onFlip: () {
                    print('Card flipped');
                  },
                  flipOnTouch: true,
                  front: Container(
                    width: 200,
                    height: 300,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Tap to Flip',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  back: Container(
                    width: 200,
                    height: 300,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Back Side',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),


    );
  }
}

class PronunciationExercisesTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pronunciation Exercises'),
      ),
      body: const Center(
        child: Text('This is the Pronunciation Exercises page for Proficiency Level Two'),
      ),
    );
  }
}

class GamificationTwoPage extends StatefulWidget {
  @override
  State<GamificationTwoPage> createState() => _GamificationTwoPageState();
}

class _GamificationTwoPageState extends State<GamificationTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Gamification'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Gamification',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                ),
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 35,
                mainAxisSpacing: 40,
                children: [
                  _buildDashboardItem(
                    'https://quizizz.com/media/resource/gs/quizizz-media/quizzes/51009110-2b55-4a54-8560-5070f34c8014',
                    'Guess the Image',
                    ImageGameTwoPage(),
                  ),
                  _buildDashboardItem(
                    'https://yt3.googleusercontent.com/DOVSU92sWIGuNz6D5xfIAO91UQxlfXLaJhQuYGHASg265gevKHvkfxlxusbjqYF_G2p1rLvSRA=s900-c-k-c0x00ffffff-no-rj',
                    'Quick Quiz',
                    QuizGameTwoPage(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
  Widget _buildDashboardItem(String imagePath, String title, Widget page) => GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xFF14163C).withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );

}
class ImageGameTwoPage extends StatefulWidget {
  @override
  State<ImageGameTwoPage> createState() => _ImageGameTwoPageState();
}
class _ImageGameTwoPageState extends State<ImageGameTwoPage> {
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed2() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController2.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController2.reset();
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Image Game'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Image Game',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                ),
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 35,
                mainAxisSpacing: 40,
                children: [
                  _buildDashboardItem(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSydQz4hHsx1vz--gP-WwOxtn6jIaOB7t__Kg&usqp=CAU',
                    'View Scores',
                    leaderboardTwo(),
                  ),
                  LoadingButton(
                    primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                    child: const Text('Start Game'),
                    iconData: Icons.start,
                    onPressed: () => buttonPressed2(),
                    controller: _btnController2,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(String imagePath, String title, Widget page) => GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xFF14163C).withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
class leaderboardTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Leaderboard'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Leaderboard for learner',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
                padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Nabeel ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Center(child: Text("Level: ",style: TextStyle(fontWeight: FontWeight.bold,),))),
                        Expanded(child: Center(child: Text("2 ")))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Center(child: Text("Score: ",style: TextStyle(fontWeight: FontWeight.bold,),))),
                        Expanded(child: Center(child: Text("50/100 ")))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Center(child: Text("Progress: ",style: TextStyle(fontWeight: FontWeight.bold,),))),
                        Expanded(child: Center(child: Text("Average")))
                      ],
                    ),
                  ],)
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }


}
class QuizGameTwoPage extends StatefulWidget {
  @override
  State<QuizGameTwoPage> createState() => _QuizGameTwoPageState();
}
class _QuizGameTwoPageState extends State<QuizGameTwoPage> {
  final LoadingButtonController _btnController2 = LoadingButtonController();

  void buttonPressed2() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController2.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController2.reset();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Quick Quiz'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Quick Quiz',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                ),
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 35,
                mainAxisSpacing: 40,
                children: [
                  _buildDashboardItem(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSydQz4hHsx1vz--gP-WwOxtn6jIaOB7t__Kg&usqp=CAU',
                    'View Scores',
                    leaderboardQuizTwo(),
                  ),
                  LoadingButton(
                    primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                    child: const Text('Start Game'),
                    iconData: Icons.start,
                    onPressed: () => buttonPressed2(),
                    controller: _btnController2,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(String imagePath, String title, Widget page) => GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xFF14163C).withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
class leaderboardQuizTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Leaderboard'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Leaderboard for learner',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
                padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Nabeel ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Center(child: Text("Level: ",style: TextStyle(fontWeight: FontWeight.bold,),))),
                        Expanded(child: Center(child: Text("2 ")))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Center(child: Text("Score: ",style: TextStyle(fontWeight: FontWeight.bold,),))),
                        Expanded(child: Center(child: Text("75/100 ")))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Center(child: Text("Progress: ",style: TextStyle(fontWeight: FontWeight.bold,),))),
                        Expanded(child: Center(child: Text("Good")))
                      ],
                    ),
                  ],)
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }


}

class OfflineSyllabusTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Offline Syllabus'),
      ),
      body: const Center(
        child: Text('This is the Offline Syllabus page for Proficiency Level Two'),
      ),
    );
  }
}



class ProficiencyLevelThreePage extends StatefulWidget {
  const ProficiencyLevelThreePage({Key? key});

  @override
  State<ProficiencyLevelThreePage> createState() => _ProficiencyLevelThreePageState();
}

class _ProficiencyLevelThreePageState extends State<ProficiencyLevelThreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text(
          'Proficiency Level Three',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Welcome in Proficiency Level3',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    ' Dashboard',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white54,
                    ),
                  ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                ),
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 35,
                mainAxisSpacing: 40,
                children: [
                  _buildDashboardItem(
                    'https://static.pbslearningmedia.org/media/collections/IL_Thumbnail_v3A.png',
                    'Interactive Lessons',
                    InteractiveLessonsThreePage(),
                  ),
                  _buildDashboardItem(
                    'https://images.twinkl.co.uk/tw1n/image/private/t_630_eco/image_repo/5a/b5/T-L-5428-Positional-Language-Flash-Cards_ver_1.jpg',
                    'Flashcards',
                    FlashcardsThreePage(),
                  ),
                  _buildDashboardItem(
                    'https://images.pexels.com/photos/256417/pexels-photo-256417.jpeg?auto=compress&cs=tinysrgb&w=600',
                    'Pronunciation Exercises',
                    PronunciationExercisesThreePage(),
                  ),
                  _buildDashboardItem(
                    'https://media.istockphoto.com/id/578796558/photo/gamification-improves-user-engagement-and-motivation-in-business.jpg?b=1&s=612x612&w=0&k=20&c=zHIIcfY5nFwgEKd7fNNcFTreoEksi7rDJCIzjYUakTA=',
                    'Gamification',
                    GamificationThreePage(),
                  ),
                  _buildDashboardItem(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyaheNdfXo8r5ypV7q3xC085FFHlsmfhrTYw&usqp=CAU.png',
                    'Offline Syllabus',
                    OfflineSyllabusThreePage(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(String imagePath, String title, Widget page) => GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xFF14163C).withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}

class InteractiveLessonsThreePage extends StatefulWidget {
  @override
  State<InteractiveLessonsThreePage> createState() => _InteractiveLessonsThreePageState();
}

class _InteractiveLessonsThreePageState extends State<InteractiveLessonsThreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FanFloatingMenu(
        toggleButtonColor: const Color(0xFF14163C).withOpacity(0.9),
        fanMenuDirection: FanMenuDirection.rtl,
        menuItems: [
          FanMenuItem(menuItemIconColor: Colors.blue,titleStyle: TextStyle(color: Colors.blueAccent),onTap: () {}, icon: Icons.edit_rounded, title: 'Edit Texts'),
          FanMenuItem(menuItemIconColor: Colors.blue,titleStyle: TextStyle(color: Colors.blueAccent),onTap: () {}, icon: Icons.save_rounded, title: 'Save Notes'),
          FanMenuItem(menuItemIconColor: Colors.blue,titleStyle: TextStyle(color: Colors.blueAccent),onTap: () {}, icon: Icons.send_rounded, title: 'Send Images'),
        ],
      ),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Interactive Lessons'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Interactive Lessons',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                ),
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 35,
                mainAxisSpacing: 40,
                children: [
                  _buildDashboardItem(
                    'https://images.pexels.com/photos/5676740/pexels-photo-5676740.jpeg?auto=compress&cs=tinysrgb&w=600',
                    'Grammar',
                    GrammerThreePage(),
                  ),
                  _buildDashboardItem(
                    'https://images.pexels.com/photos/267669/pexels-photo-267669.jpeg?auto=compress&cs=tinysrgb&w=600',
                    'Vacabulary',
                    VocabularyThreePage(),
                  ),
                  _buildDashboardItem(
                    'https://images.pexels.com/photos/2422255/pexels-photo-2422255.jpeg?auto=compress&cs=tinysrgb&w=600',
                    'Images',
                    ImagesThreePage(),
                  ),
                  _buildDashboardItem(
                    'https://media.istockphoto.com/id/1305169776/photo/q-and-a-concept-yellow-question-mark-glowing-amid-black-question-marks-on-black-background.jpg?b=1&s=612x612&w=0&k=20&c=RdCu8nROVYGmFEltfGgRE2YYnYalNaCJuoB1W4Ni3Pc=',
                    'Quiz',
                    QuizThreePage(),
                  ),
                  _buildDashboardItem(
                    'https://images.pexels.com/photos/6408286/pexels-photo-6408286.jpeg?auto=compress&cs=tinysrgb&w=600',
                    'Audio/Videos',
                    AudioVideoThreePage(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(String imagePath, String title, Widget page) => GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xFF14163C).withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
class GrammerThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grammar'),
      ),
      body: const Center(
        child: Text('This is the Grammer page'),
      ),
    );
  }
}
class VocabularyThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vocabulary'),
      ),
      body: const Center(
        child: Text('This is the Vocabulary page'),
      ),
    );
  }
}
class ImagesThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images'),
      ),
      body: const Center(
        child: Text('This is the Images page'),
      ),
    );
  }
}
class QuizThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: const Center(
        child: Text('This is the Quiz page'),
      ),
    );
  }
}
class AudioVideoThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio/Video'),
      ),
      body: const Center(
        child: Text('This is the Audio/Video page'),
      ),
    );
  }
}

class FlashcardsThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Flashcards'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Interactive Lessons',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                ),
              ),
              child: Center(
                child: FlipCard(
                  direction: FlipDirection.HORIZONTAL, // Set the direction of the flip
                  onFlip: () {
                    print('Card flipped');
                  },
                  flipOnTouch: true,
                  front: Container(
                    width: 200,
                    height: 300,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Tap to Flip',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  back: Container(
                    width: 200,
                    height: 300,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Back Side',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),


    );
  }
}

class PronunciationExercisesThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pronunciation Exercises'),
      ),
      body: Center(
        child: Text('This is the Pronunciation Exercises page for Proficiency Level Three'),
      ),
    );
  }
}

class GamificationThreePage extends StatefulWidget {
  @override
  State<GamificationThreePage> createState() => _GamificationThreePageState();
}

class _GamificationThreePageState extends State<GamificationThreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Gamification'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Gamification',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                ),
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 35,
                mainAxisSpacing: 40,
                children: [
                  _buildDashboardItem(
                    'https://quizizz.com/media/resource/gs/quizizz-media/quizzes/51009110-2b55-4a54-8560-5070f34c8014',
                    'Guess the Image',
                    ImageGameThreePage(),
                  ),
                  _buildDashboardItem(
                    'https://yt3.googleusercontent.com/DOVSU92sWIGuNz6D5xfIAO91UQxlfXLaJhQuYGHASg265gevKHvkfxlxusbjqYF_G2p1rLvSRA=s900-c-k-c0x00ffffff-no-rj',
                    'Quick Quiz',
                    QuizGameThreePage(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(String imagePath, String title, Widget page) => GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xFF14163C).withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
class ImageGameThreePage extends StatefulWidget {
  @override
  State<ImageGameThreePage> createState() => _ImageGameThreePageState();
}
class _ImageGameThreePageState extends State<ImageGameThreePage> {
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed2() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController2.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController2.reset();
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Image Game'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Image Game',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                ),
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 35,
                mainAxisSpacing: 40,
                children: [
                  _buildDashboardItem(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSydQz4hHsx1vz--gP-WwOxtn6jIaOB7t__Kg&usqp=CAU',
                    'View Scores',
                    leaderboardThree(),
                  ),
                  LoadingButton(
                    primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                    child: const Text('Start Game'),
                    iconData: Icons.start,
                    onPressed: () => buttonPressed2(),
                    controller: _btnController2,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(String imagePath, String title, Widget page) => GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xFF14163C).withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
class leaderboardThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Leaderboard'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Leaderboard for learner',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
                padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Nabeel ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Center(child: Text("Level: ",style: TextStyle(fontWeight: FontWeight.bold,),))),
                        Expanded(child: Center(child: Text("3 ")))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Center(child: Text("Score: ",style: TextStyle(fontWeight: FontWeight.bold,),))),
                        Expanded(child: Center(child: Text("80/100 ")))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Center(child: Text("Progress: ",style: TextStyle(fontWeight: FontWeight.bold,),))),
                        Expanded(child: Center(child: Text("Good")))
                      ],
                    ),
                  ],)
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }


}
class QuizGameThreePage extends StatefulWidget {
  @override
  State<QuizGameThreePage> createState() => _QuizGameThreePageState();
}
class _QuizGameThreePageState extends State<QuizGameThreePage> {
  final LoadingButtonController _btnController2 = LoadingButtonController();

  void buttonPressed2() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController2.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController2.reset();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Quick Quiz'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Quick Quiz',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                ),
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 35,
                mainAxisSpacing: 40,
                children: [
                  _buildDashboardItem(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSydQz4hHsx1vz--gP-WwOxtn6jIaOB7t__Kg&usqp=CAU',
                    'View Scores',
                    leaderboardQuizThree(),
                  ),
                  LoadingButton(
                    primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                    child: const Text('Start Game'),
                    iconData: Icons.start,
                    onPressed: () => buttonPressed2(),
                    controller: _btnController2,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildDashboardItem(String imagePath, String title, Widget page) => GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        color: const Color(0xFF14163C).withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Theme.of(context).primaryColor.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
class leaderboardQuizThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text('Leaderboard'),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF14163C).withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              image: const DecorationImage(
                image: NetworkImage('https://example.com/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Leaderboard for learner',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  // subtitle: Text(
                  //   ' Dashboard',
                  //   style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  //     color: Colors.white54,
                  //   ),
                  // ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGO448nAOrvfw/profile-displayphoto-shrink_400_400/0/1516929476300?e=2147483647&v=beta&t=i9xTbCh2nx3upQEx53PPtGP28Da2T7i_AJOTsqQRliE'),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            child: Container(
                padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Nabeel ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Center(child: Text("Level: ",style: TextStyle(fontWeight: FontWeight.bold,),))),
                        Expanded(child: Center(child: Text("3 ")))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Center(child: Text("Score: ",style: TextStyle(fontWeight: FontWeight.bold,),))),
                        Expanded(child: Center(child: Text("95/100 ")))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Center(child: Text("Progress: ",style: TextStyle(fontWeight: FontWeight.bold,),))),
                        Expanded(child: Center(child: Text("Excellent")))
                      ],
                    ),
                  ],)
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }


}

class OfflineSyllabusThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Offline Syllabus'),
      ),
      body: const Center(
        child: Text('This is the Offline Syllabus page for Proficiency Level Three'),
      ),
    );
  }
}





class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF14163C),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Reset Password',style: TextStyle(color: Colors.white),),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/bgll.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                height: 400,

                child: SingleChildScrollView(
                  child: Card(
                    elevation: 0.0, // No elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: const BorderSide(
                        color: Colors.transparent, // Set border color to transparent
                        width: 2.0,
                      ),
                    ),
                    color: const Color(0xFF14163C).withOpacity(0.9), // Adjusted opacity
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(40),
                            child: Text(
                              'Reset Password',
                              style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 18),
                          _buildInputField('Enter Your Email', Icons.email),
                          const SizedBox(height: 8),
                          const SizedBox(height: 22),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const CreateNewPasswordPage()),
                              );
                            },
                            child: Container(
                                decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(5)),
                                width: double.infinity,
                                height: 40,
                              child: const Center(child: Text('Reset Password', style: TextStyle(color: Colors.white, fontSize: 18))),
                            ),
                          ),
                  
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputField(String label, IconData icon, {bool obscureText = false}) {
    return TextFormField(
      cursorColor: Colors.blue,
      style: const TextStyle(color: Colors.white),
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.blue),
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white60),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $label';
        }
        return null;
      },
    );
  }
}





class CreateNewPasswordPage extends StatelessWidget {
  const CreateNewPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF14163C),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Create New Password',style: TextStyle(color: Colors.white),),
      ),
      body: Stack(
        children: [
          _buildBackground(),
          Container(
            color: const Color(0xFF14163C).withOpacity(0.9),
            width: double.infinity,
            height: double.infinity,
          ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: double.infinity,
                  height: 450,
                  child: SingleChildScrollView(
                    child: Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: const Color(0xFF14163C).withOpacity(0.9), // Darkened the card color
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(30),
                              child: Text(
                                'Create New Password',
                                style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 18),
                            _buildInputField('New Password', Icons.lock, obscureText: true),
                            const SizedBox(height: 8),
                            _buildInputField('Confirm Password', Icons.lock, obscureText: true),
                            const SizedBox(height: 22),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              child: InkWell(
                                onTap: (){
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: const Text('Your password is updated.'),
                                      action: SnackBarAction(
                                        label: 'Sign In',
                                        onPressed: () {
                                          // Navigate to the signup page
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => LearnerLoginPage()),
                                          );
                                        },
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(5)),
                                  width: double.infinity,
                                  height: 40,
                                  child: const Center(child: Text('Update', style: TextStyle(color: Colors.white, fontSize: 18)),
                                  ),
                                ),
                              ),
                            ),
                    
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

        ],
      ),
    );
  }

  Widget _buildBackground() {
    return Image.asset(
      'assets/bgll.jpg',
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }

  Widget _buildInputField(String label, IconData icon, {bool obscureText = false}) {
    return TextFormField(
      cursorColor: Colors.blue,
      style: const TextStyle(color: Colors.white),
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.blue),
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white60),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $label';
        }
        return null;
      },
    );
  }
}




