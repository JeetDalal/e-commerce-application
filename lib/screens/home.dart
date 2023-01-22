import 'package:e_commerce_app/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = AuthService();
    TextEditingController _search = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('images/menu.png'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const CircleAvatar(
                      backgroundColor: Color(0xffDDDDDD),
                      radius: 80,
                      backgroundImage: AssetImage(
                        'images/user_profile.png',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Welcome,',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                'Our Fashion App',
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  // fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      color: const Color(0xffF3F4F5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: "Search",
                          prefixIcon: Icon(
                            Icons.search,
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          prefixIconColor: Colors.black,
                          // iconColor: Colors.black,
                          focusColor: Colors.black,
                        ),
                        controller: _search,
                      ),
                    ),
                  ),
                  Image.asset(
                    'images/filtter.png',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
