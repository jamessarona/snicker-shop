import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:online_shop/models/sneaker_model.dart';
import 'package:online_shop/views/shared/stagger_tile.dart';

class LatestShoes extends StatelessWidget {
  final Future<List<Sneakers>> _male;
  const LatestShoes({super.key, required Future<List<Sneakers>> male})
      : _male = male;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Sneakers>>(
      future: _male,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error ${snapshot.error}');
        } else {
          final male = snapshot.data;
          return StaggeredGridView.countBuilder(
            padding: EdgeInsets.zero,
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 16,
            itemCount: male!.length,
            scrollDirection: Axis.vertical,
            staggeredTileBuilder: (index) => StaggeredTile.extent(
                (index % 2 == 0) ? 1 : 1,
                (index % 4 == 1 || index % 4 == 3)
                    ? MediaQuery.of(context).size.height * .35
                    : MediaQuery.of(context).size.height * .3),
            itemBuilder: (context, index) {
              final shoe = snapshot.data![index];
              return StaggerTile(
                imageUrl: shoe.imageUrl[1],
                name: shoe.name,
                price: "\$${shoe.price}",
              );
            },
          );
        }
      },
    );
  }
}
