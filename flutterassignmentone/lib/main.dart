// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Images and Assets',
//       theme: ThemeData(
//         primarySwatch: Colors.pink,
//         fontFamily: 'FiraSans', // Default font family
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Images and Assets'),
//         ),
//         body: ListView(
//           padding: const EdgeInsets.all(16.0),
//           children: [
//             // Top Swipeable ListView with Local Images
//             SizedBox(
//               height: 200,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 3, // Number of images
//                 itemBuilder: (context, index) {
//                   final imagePaths = [
//                     'assets/images/nature.jpg',
//                     'assets/images/panther.jpg',
//                     'assets/images/water.jpg'
//                   ];
//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Image.asset(
//                       imagePaths[index],
//                       width: 200,
//                       height: 200,
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(height: 20), // Spacing

//             // Middle Section with Fonts (ListTiles)
//             const ListTile(
//               leading: Icon(Icons.star, size: 40),
//               title: Text(
//                 'Regular Font',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontFamily: 'FiraSans',
//                 ),
//               ),
//             ),
//             const ListTile(
//               leading: CircleAvatar(
//                 radius: 20,
//                 child: Icon(Icons.person, size: 20),
//               ),
//               title: Text(
//                 'Bold Font',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'FiraSans',
//                 ),
//               ),
//             ),
//             const ListTile(
//               leading: Icon(Icons.settings, size: 40),
//               title: Text(
//                 'Italic Font',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontFamily: 'FiraSans',
//                   fontStyle: FontStyle.italic,
//                 ),
//               ),
//             ),
//             const ListTile(
//               trailing: Icon(Icons.arrow_forward, size: 40),
//               title: Text(
//                 'Default Device Font',
//                 style: TextStyle(
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20), // Spacing

//             // Bottom Swipeable ListView with Local Images
//             SizedBox(
//               height: 200,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 3, // Number of local images
//                 itemBuilder: (context, index) {
//                   final imagePaths = [
//                     'assets/images/nature.jpg',
//                     'assets/images/panther.jpg',
//                     'assets/images/water.jpg'
//                   ];
//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Image.asset(
//                       imagePaths[index],
//                       width: 200,
//                       height: 200,
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Layout',
      theme: ThemeData(primarySwatch: Colors.pink, fontFamily: 'FiraSans'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Images and Assets'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            // Top Swipeable Images (Local)
            SizedBox(
              height: 250, // Adjust height to fit better
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  final imagePaths = [
                    'assets/images/nature.jpg',
                    'assets/images/panther.jpg',
                    'assets/images/water.jpg',
                  ];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      imagePaths[index],
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width *
                          0.9, // Adjust width
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20), // Spacing between sections

            // Font Style Tiles (Middle Section)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade200, // Add background to match example
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.star, color: Colors.black),
                    title: Text(
                      'Regular Font',
                      style: TextStyle(fontFamily: 'FiraSans'),
                    ),
                  ),
                  Divider(), // Add dividers for spacing
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.purple,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    title: Text(
                      'Bold Font',
                      style: TextStyle(
                          fontFamily: 'FiraSans', fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.settings, color: Colors.black),
                    title: Text(
                      'Italic Font',
                      style: TextStyle(
                          fontFamily: 'FiraSans', fontStyle: FontStyle.italic),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    trailing: Icon(Icons.arrow_forward, color: Colors.black),
                    title: Text('Default Device Font'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Spacing between sections

            // Bottom Swipeable Images (Local)
            SizedBox(
              height: 250, // Adjust height to fit better
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  final imagePaths = [
                    'assets/images/nature.jpg',
                    'assets/images/panther.jpg',
                    'assets/images/water.jpg',
                  ];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      imagePaths[index],
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width *
                          0.9, // Adjust width
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
