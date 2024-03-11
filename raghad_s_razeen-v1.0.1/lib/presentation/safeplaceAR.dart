import 'dart:typed_data';

import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:ar_flutter_plugin/datatypes/config_planedetection.dart';
import 'package:ar_flutter_plugin/datatypes/hittest_result_types.dart';
import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin/models/ar_anchor.dart';
import 'package:ar_flutter_plugin/models/ar_hittest_result.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:vector_math/vector_math_64.dart' as vector;
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:http/http.dart' as http;

// class SafePlaceAR extends StatefulWidget {
//   const SafePlaceAR({Key? key}) : super(key: key);

//   @override
//   _SafePlaceARState createState() => _SafePlaceARState();
// }

// class _SafePlaceARState extends State<SafePlaceAR> {
//   late ARSessionManager arSessionManager;
//   late ARObjectManager arObjectManager;

//   //String localObjectReference;
//   ARNode? localObjectNode;

//   //String webObjectReference;
//   ARNode? webObjectNode;

//   @override
//   void dispose() {
//     arSessionManager.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Local / Web Objects"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             SizedBox(
//               height: MediaQuery.of(context).size.height * .8,
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(22),
//                 child: ARView(
//                   onARViewCreated: onARViewCreated,// ar start work here
//                 ),
//               ),
//             ),
//             Row(
//               children: [
//                 Expanded(
//                   child: ElevatedButton(
//                       onPressed: onLocalObjectButtonPressed,
//                       child: const Text("Add / Remove Local Object")),
//                 ),
//                 // const SizedBox(
//                 //   width: 10,
//                 // ),
//                 // Expanded(
//                 //   child: ElevatedButton(
//                 //       onPressed: onWebObjectAtButtonPressed,
//                 //       child: const Text("Add / Remove Web Object")),
//                 // )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void onARViewCreated(
//       ARSessionManager arSessionManager,
//       ARObjectManager arObjectManager,
//       ARAnchorManager arAnchorManager,
//       ARLocationManager arLocationManager) {
//     this.arSessionManager = arSessionManager;
//     this.arObjectManager = arObjectManager;

//     // this.arSessionManager.onInitialize(
//     //       showFeaturePoints: false,
//     //       showPlanes: true,
//     //       customPlaneTexturePath: "assets/images/noise.png",//image
//     //       showWorldOrigin: true,
//     //       handleTaps: false,
//     //     );
//     this.arObjectManager.onInitialize();
//   }

//   Future<void> onLocalObjectButtonPressed() async {
//     if (localObjectNode != null) {
//       arObjectManager.removeNode(localObjectNode!);
//       localObjectNode = null;
//     } else {
//       var newNode = ARNode(
//           type: NodeType.localGLTF2,
//           uri: "assets/packbag.gltf",
//           scale: Vector3(0.2, 0.2, 0.2),
//           position: Vector3(0.0, 0.0, 0.0),
//           rotation: Vector4(1.0, 0.0, 0.0, 0.0));
//       bool? didAddLocalNode = await arObjectManager.addNode(newNode);
//       localObjectNode = (didAddLocalNode!) ? newNode : null;
//     }
//   }

// Future<void> onWebObjectAtButtonPressed() async {
//   if (webObjectNode != null) {
//     arObjectManager.removeNode(webObjectNode!);
//     webObjectNode = null;
//   } else {
//     var newNode = ARNode(
//         type: NodeType.webGLB,
//         uri:
//             "https://github.com/KhronosGroup/glTF-Sample-Models/raw/master/2.0/Fox/glTF-Binary/Fox.glb",
//         scale: Vector3(0.2, 0.2, 0.2));
//     bool? didAddWebNode = await arObjectManager.addNode(newNode);
//     webObjectNode = (didAddWebNode!) ? newNode : null;
//   }
// }
// }

// import 'package:flutter/material.dart';
// import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
// import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';

// class SafePlaceAR extends StatefulWidget {
//   const SafePlaceAR({Key? key}) : super(key: key);
//   @override
//   _SafePlaceARState createState() => _SafePlaceARState();
// }

// class _SafePlaceARState extends State<SafePlaceAR> {
//    late ARSessionManager arSessionManager;
//   late ARObjectManager arObjectManager;
//   // ARCoreController arController;
// //  List<String> targetImages = ['pencil.png', 'socks.png', 'rocket.png'];
// // List<String> classifications = ['backpack.png', 'clothesbasket.png', 'toysbox.png'];
// // Map<String, String> imageClassificationMap = {};

// @override
// void initState() {
//   super.initState();
//   // Initialize the image-classification mapping
//   // for (int i = 0; i < targetImages.length; i++) {
//   //   imageClassificationMap[targetImages[i]] = classifications[i];
//   // }
// }
// // ARNode? localObjectNode;

// //   //String webObjectReference;
// //   ARNode? webObjectNode;

//   @override
//    void dispose() {
//     arSessionManager.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('AR Classification Game'),
//       ),
//       body: GestureDetector(
//       // onTapDown: _onTap,
//       child: ARView(
//       onARViewCreated: (
//         ARSessionManager sessionManager,
//         ARObjectManager objectManager,
//         ARAnchorManager anchorManager,
//         ARLocationManager locationManager) {
//       onARViewCreated(sessionManager, objectManager, anchorManager, locationManager);
//     },
//   ),
// ),
//     );
//   }
//   // var ARCoreController;
//   // void _onARViewCreated() { // (arcontroller)
//   //   // arController = controller;

//   //   // Load all target images onto the AR scene
//   //   for (String image in targetImages) {
//   //     // arController.loadImage(image);
//   //     // var ARCoreController;
//   //     ARCoreController.instance.loadImage(image);
//   //   }

//   //   // Optionally, you can also load the classifications onto the AR scene
//   //   // For simplicity, let's just print them
//   //   print('Classifications: $classifications');
//   // }

//     void onARViewCreated(
//       ARSessionManager arSessionManager,
//       ARObjectManager arObjectManager,
//       ARAnchorManager arAnchorManager,
//       ARLocationManager arLocationManager) {

//     this.arSessionManager = arSessionManager;
//     this.arObjectManager = arObjectManager;

//     this.arSessionManager.onInitialize(
//           showFeaturePoints: true,
//           // showPlanes: true,
//           // customPlaneTexturePath: "assets/images/grandfather.png",
//           // showWorldOrigin: true,
//           // handleTaps: false,
//         );
//     this.arObjectManager.onInitialize();
//   }

//   // void _onTap(TapDownDetails details) {
//   //   // Check if a target image is tapped
//   //   for (String image in targetImages) {
//   //     final imageAnchor = ARCoreController.getAnchor(image);
//   //     if (imageAnchor != null) {
//   //       final imagePosition = imageAnchor.translation.value;

//     //     // Check if the tap is within the bounds of the image
//     //     if (details.globalPosition.dx >= imagePosition[0] &&
//     //         details.globalPosition.dx <= imagePosition[0] + 100 &&
//     //         details.globalPosition.dy >= imagePosition[1] &&
//     //         details.globalPosition.dy <= imagePosition[1] + 100) {
//     //       // Determine the classification based on the tap position
//     //       String classification;
//     //       if (details.globalPosition.dx <
//     //           MediaQuery.of(context).size.width / 2) {
//     //         classification = classifications[0];
//     //       } else {
//     //         classification = classifications[1];
//     //       }

//     //       // Assign the classification to the image
//     //       setState(() {
//     //         imageClassificationMap[image] = classification;
//     //       });

//     //       // Print the classification assignment for demonstration
//     //       print('Image $image placed into classification: $classification');
//     //       break;
//     //     }
//     //   }
//     // }
//   }

class SafePlaceAR extends StatefulWidget {
  const SafePlaceAR({Key? key}) : super(key: key);

  @override
  _SafePlaceARState createState() => _SafePlaceARState();
}

class _SafePlaceARState extends State<SafePlaceAR> {


  late ARSessionManager arSessionManager;
  late ARObjectManager arObjectManager;

  //String localObjectReference;
  ARNode? localObjectNode;

  //String webObjectReference;
  ARNode? webObjectNode;

  @override
  void dispose() {
    arSessionManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Local / Web Objects"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: ARView(
                  onARViewCreated: onARViewCreated,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: onLocalObjectButtonPressed,
                      child: const Text("Add / Remove Local Object")),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: onWebObjectAtButtonPressed,
                      child: const Text("Add / Remove Web Object")),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void onARViewCreated(
      ARSessionManager arSessionManager,
      ARObjectManager arObjectManager,
      ARAnchorManager arAnchorManager,
      ARLocationManager arLocationManager) {
    this.arSessionManager = arSessionManager;
    this.arObjectManager = arObjectManager;

    this.arSessionManager.onInitialize(
          showFeaturePoints: false,
          showPlanes: true,
          customPlaneTexturePath: "assets/triangle.png",
          showWorldOrigin: true,
          handleTaps: false,
        );
    this.arObjectManager.onInitialize();
  }

  Future<void> onLocalObjectButtonPressed() async {
    if (localObjectNode != null) {
      arObjectManager.removeNode(localObjectNode!);
      localObjectNode = null;
    } else {
      var newNode = ARNode(
          type: NodeType.localGLTF2,
          uri: "assets/packbag.gltf",
          scale: Vector3(0.2, 0.2, 0.2),
          position: Vector3(0.0, 0.0, 0.0),
          rotation: Vector4(1.0, 0.0, 0.0, 0.0));
      bool? didAddLocalNode = await arObjectManager.addNode(newNode);
      localObjectNode = (didAddLocalNode!) ? newNode : null;
    }
  }

  Future<void> onWebObjectAtButtonPressed() async {
    if (webObjectNode != null) {
      arObjectManager.removeNode(webObjectNode!);
      webObjectNode = null;
    } else {
      var newNode = ARNode(
          type: NodeType.webGLB,
          uri:
              "https://github.com/KhronosGroup/glTF-Sample-Models/raw/master/2.0/Fox/glTF-Binary/Fox.glb",
          scale: Vector3(0.2, 0.2, 0.2));
      bool? didAddWebNode = await arObjectManager.addNode(newNode);
      webObjectNode = (didAddWebNode!) ? newNode : null;
    }
  }
}
// /////////////////////صوره ثابته
  // late ArCoreController arCoreController;
  // String url = '';

  // @override
  // void dispose() {
  //   arCoreController.dispose();
  //   super.dispose();
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: Text('AR Classification Game'),
  //       ),
  //       body: ArCoreView(
  //         enableTapRecognizer: true,
  //         onArCoreViewCreated: _onArCoreViewCreated,
  //       ),
  //     ),
  //   );
  // }

  // _onArCoreViewCreated(ArCoreController _arcoreController) {
  //   this.arCoreController = _arcoreController;

  //   _addImage(arCoreController);
  // }

  // Future<Uint8List> getImageBytes(String imageName) async {
  //   final ByteData data = await rootBundle.load('assets/$imageName');
  //   return data.buffer.asUint8List();
  // }

  // // void _addImage(ArCoreController controller) async {
  // //   final imagebytes = await getImageBytes("images/toybox.png");
  // //   final node = ArCoreNode(
  // //       image: ArCoreImage(bytes: imagebytes, width: 100, height: 30),
  // //       scale: Vector3(0.2, 0.2, 0.2),
  // //       position: Vector3(0.0, 0.0, 0.0),
  // //       rotation: Vector4(1.0, 0.0, 0.0, 3.14159));

  // //   controller.addArCoreNode(node);
  // // }

  // }

