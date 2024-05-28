import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:loading_icon_button/loading_icon_button.dart';


class AdminLoginPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  AdminLoginPage({Key? key}) : super(key: key);

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
                                  MaterialPageRoute(builder: (context) => const AdminResetPasswordPage()),
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
                                    MaterialPageRoute(builder: (context) => LearnerLevelPage()),
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

class AdminResetPasswordPage extends StatelessWidget {
  const AdminResetPasswordPage({Key? key}) : super(key: key);

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
                                MaterialPageRoute(builder: (context) => const AdminCreateNewPasswordPage()),
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

class AdminCreateNewPasswordPage extends StatelessWidget {
  const AdminCreateNewPasswordPage({Key? key}) : super(key: key);

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
                                          MaterialPageRoute(builder: (context) => AdminLoginPage()),
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

class LearnerLevelPage extends StatelessWidget {
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
                            ' Select Learner Level',
                            style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 22),
                        LearnerLevelDropdown(), // Added the dropdown widget
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

class LearnerLevelDropdown extends StatefulWidget {
  @override
  _LearnerLevelDropdownState createState() => _LearnerLevelDropdownState();
}

class _LearnerLevelDropdownState extends State<LearnerLevelDropdown> {
  String selectedLevel = 'Learner Level 1';

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
                  items: <String>['Learner Level 1', 'Learner Level 2', 'Learner Level 3']
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
            if (selectedLevel == 'Learner Level 1') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LearnerLevelOnePage()),
              );
            } else if (selectedLevel == 'Learner Level 2') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LearnerLevelTwoPage()),
              );
            } else if (selectedLevel == 'Learner Level 3') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LearnerLevelThreePage()),
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
class LearnerLevelOnePage extends StatefulWidget {
  const LearnerLevelOnePage({Key? key});

  @override
  State<LearnerLevelOnePage> createState() => _LearnerLevelOnePageState();
}

class _LearnerLevelOnePageState extends State<LearnerLevelOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF14163C),
        title: const Text(
          'Learner Level One',
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
                    'Welcome in Learner Level1',
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
                    GamificationTwoPage(),
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
    return Scaffold(

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
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
        title: const Text('Grammar'),
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
                    'Grammar',
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
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete Course'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update Course'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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
class VocabularyPage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
        title: const Text('Vocabulary'),
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
                    'Vocabulary',
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
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete Course'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update Course'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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
class ImagesPage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
        title: const Text('Images'),
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
                    'Images',
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
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete Course'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update Course'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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
class QuizPage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
        title: const Text('Quiz'),
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
                    'Quiz',
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
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete Course'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update Course'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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
class AudioVideoPage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
        title: const Text('Audio/Video'),
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
                    'Audio/Video',
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
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete Course'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update Course'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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

class FlashcardsPage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
                    'Flashcard',
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
          Row(
            children: [
              Expanded(
                child: LoadingButton(
                  primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                  child: const Text('Delete Course'),
                  iconData: Icons.delete,
                  onPressed: () => buttonPressed(),
                  controller: _btnController,
                ),
              ),
              Expanded(
                child: LoadingButton(
                  primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                  child: const Text('Update Course'),
                  iconData: Icons.update,
                  onPressed: () => buttonPressed2(),
                  controller: _btnController2,
                ),
              ),
            ],
          )
        ],
      ),


    );
  }
}

class PronunciationExercisesPage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
        title: const Text('Pronunciation Exercises'),
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
                    'Pronunciation Exercises',
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
                    LoadingButton(
                    primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                    child: const Text('Delete Course'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update Course'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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
class ImageGamePage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();

  final LoadingButtonController _btnController2 = LoadingButtonController();

  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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
class QuizGamePage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();

  final LoadingButtonController _btnController2 = LoadingButtonController();

  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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



class LearnerLevelTwoPage extends StatefulWidget {
  const LearnerLevelTwoPage({Key? key});

  @override
  State<LearnerLevelTwoPage> createState() => _LearnerLevelTwoPageState();
}

class _LearnerLevelTwoPageState extends State<LearnerLevelTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF14163C),
        title: const Text(
          'Learner Level Two',
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
                    'Learner in Proficiency Level2',
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
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
        title: const Text('Grammar'),
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
                    'Grammar',
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
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete Course'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update Course'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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
class VocabularyTwoPage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
        title: const Text('Vocabulary'),
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
                    'Vocabulary',
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
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete Course'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update Course'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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
class ImagesTwoPage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
        title: const Text('Images'),
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
                    'Images',
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
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete Course'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update Course'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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
class QuizTwoPage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
        title: const Text('Quiz'),
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
                    'Quiz',
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
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete Course'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update Course'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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
class AudioVideoTwoPage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
        title: const Text('Audio/Video'),
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
                    'Audio/Video',
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
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete Course'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update Course'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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

class FlashcardsTwoPage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
                    'Flashcard',
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
          Row(
            children: [
              Expanded(
                child: LoadingButton(
                  primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                  child: const Text('Delete Course'),
                  iconData: Icons.delete,
                  onPressed: () => buttonPressed(),
                  controller: _btnController,
                ),
              ),
              Expanded(
                child: LoadingButton(
                  primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                  child: const Text('Update Course'),
                  iconData: Icons.update,
                  onPressed: () => buttonPressed2(),
                  controller: _btnController2,
                ),
              ),
            ],
          )
        ],
      ),


    );
  }
}

class PronunciationExercisesTwoPage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
        title: const Text('Pronunciation Exercises'),
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
                    'Pronunciation Exercises',
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
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete Course'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update Course'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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

class GamificationTwoPage extends StatefulWidget {
  @override
  State<GamificationTwoPage> createState() => _GamificationTwoPageState();
}

class _GamificationTwoPageState extends State<GamificationTwoPage> {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
class ImageGameTwoPage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();

  final LoadingButtonController _btnController2 = LoadingButtonController();

  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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
class QuizGameTwoPage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();

  final LoadingButtonController _btnController2 = LoadingButtonController();

  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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



class LearnerLevelThreePage extends StatefulWidget {
  const LearnerLevelThreePage({Key? key});

  @override
  State<LearnerLevelThreePage> createState() => _LearnerLevelThreePageState();
}

class _LearnerLevelThreePageState extends State<LearnerLevelThreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF14163C),
        title: const Text(
          'Learner Level Three',
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
                    'Welcome in Learner Level3',
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
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
        title: const Text('Grammar'),
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
                    'Grammar',
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
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete Course'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update Course'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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
class VocabularyThreePage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
        title: const Text('Vocabulary'),
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
                    'Vocabulary',
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
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete Course'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update Course'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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
class ImagesThreePage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
        title: const Text('Images'),
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
                    'Images',
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
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete Course'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update Course'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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
class QuizThreePage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
        title: const Text('Quiz'),
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
                    'Quiz',
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
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete Course'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update Course'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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
class AudioVideoThreePage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
        title: const Text('Audio/Video'),
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
                    'Audio/Video',
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
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete Course'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update Course'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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

class FlashcardsThreePage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
                    'Flashcard',
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
          Row(
            children: [
              Expanded(
                child: LoadingButton(
                  primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                  child: const Text('Delete Course'),
                  iconData: Icons.delete,
                  onPressed: () => buttonPressed(),
                  controller: _btnController,
                ),
              ),
              Expanded(
                child: LoadingButton(
                  primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                  child: const Text('Update Course'),
                  iconData: Icons.update,
                  onPressed: () => buttonPressed2(),
                  controller: _btnController2,
                ),
              ),
            ],
          )
        ],
      ),


    );
  }
}

class PronunciationExercisesThreePage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
        title: const Text('Pronunciation Exercises'),
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
                    'Pronunciation Exercises',
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
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete Course'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update Course'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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

class GamificationThreePage extends StatefulWidget {
  @override
  State<GamificationThreePage> createState() => _GamificationThreePageState();
}

class _GamificationThreePageState extends State<GamificationThreePage> {
  final LoadingButtonController _btnController = LoadingButtonController();
  final LoadingButtonController _btnController2 = LoadingButtonController();
  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }
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
class ImageGameThreePage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();

  final LoadingButtonController _btnController2 = LoadingButtonController();

  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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
class QuizGameThreePage extends StatelessWidget {
  final LoadingButtonController _btnController = LoadingButtonController();

  final LoadingButtonController _btnController2 = LoadingButtonController();

  void buttonPressed() async {
    Future.delayed(const Duration(seconds: 1), () {
      _btnController.success();
      Future.delayed(const Duration(seconds: 1), () {
        _btnController.reset();
      });
    });
  }

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Delete'),
                      iconData: Icons.delete,
                      onPressed: () => buttonPressed(),
                      controller: _btnController,
                    ),
                    SizedBox(height: 20,),
                    LoadingButton(
                      primaryColor: const Color(0xFF14163C).withOpacity(0.9),
                      child: const Text('Update'),
                      iconData: Icons.update,
                      onPressed: () => buttonPressed2(),
                      controller: _btnController2,
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