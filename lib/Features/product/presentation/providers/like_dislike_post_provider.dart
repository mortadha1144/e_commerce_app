// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:e_commerce_app/Features/product/data/models/favorite_un_favorite_request.dart';
// import 'package:e_commerce_app/core/utils/constants/firebase_collection_name.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:instagram_clone/state/constants/firebase_collection_name.dart';
// import 'package:instagram_clone/state/constants/firebase_field_name.dart';
// import 'package:instagram_clone/state/likes/models/like.dart';
// import 'package:instagram_clone/state/likes/models/like_dislike_request.dart';

// final toggleProductFavoriteProvider =
//     FutureProvider.family.autoDispose<bool, FavoriteUnFavoriteRequest>(
//   (
//     ref,
//     FavoriteUnFavoriteRequest request,
//   ) async {
//     final query = FirebaseFirestore.instance
//         .collection(FirebaseCollectionName.likfes)
//         .where(FirebaseFieldName.postId, isEqualTo: request.postId)
//         .where(FirebaseFieldName.userId, isEqualTo: request.likedBy)
//         .get();

//     final hasLiked = await query.then(
//       (snapshot) => snapshot.docs.isNotEmpty,
//     );
//     if (hasLiked) {
//       // delete the like
//       try {
//         await query.then(
//           (snapshot) async {
//             for (final doc in snapshot.docs) {
//               await doc.reference.delete();
//             }
//           },
//         );
//         return true;
//       } catch (_) { 
//         return false;
//       }
//     } else {
//       // post a like object
//       final like = Like(
//         postId: request.postId,
//         likedBy: request.likedBy,
//         date: DateTime.now(),
//       );

//       try {
//         await FirebaseFirestore.instance
//             .collection(FirebaseCollectionName.likes)
//             .add(like);
//         return true;
//       } catch (_) {
//         return false;
//       }
//     }
//   },
// );
