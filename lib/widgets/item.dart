import 'package:cached_network_image/cached_network_image.dart';

import 'package:club/models/item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Item extends StatelessWidget {
  int? index;
  ItemModel? chocoItem;
  Item({super.key, required this.chocoItem,this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) =>  ChocoDetailes(chocoItem: chocoItem),
        //                 ));
      },
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  topLeft: Radius.circular(10)),
              child: Container(
                color: Colors.amberAccent,
                height: 220,
                width: 190,
              ),
            ),
          ),
          Positioned(
              top: 0,
              left: 14,
              child: Hero(
                tag:  chocoItem!.id??'',
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: chocoItem?.image ?? '',
                    placeholder: (context, url) => const CircleAvatar(
                        // backgroundImage: AssetImage(ImagePath.loading),
                        radius: 100),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                    fit: BoxFit.cover,
                    width: 140, // Adjust the size as needed
                    height: 140,
                  ),
                ),
              )),
          Positioned(
              top: 140,
              left: 20,
              // right: 20,
              child: Column(
                children: [
                  SizedBox(
                    width: 160,
                    height: 60,
                    child: Text(
                      chocoItem?.name ?? '',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 140,
                    height: 50,
                    child: Text(
                      chocoItem?.discription ?? '',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  )
                ],
              )),

              chocoItem?.discount! != '' ? Positioned(
                bottom: 20,
                right: 5,
                child: Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Text('${chocoItem?.discount}',textAlign: TextAlign.center,style: const TextStyle(color: Colors.white),),
              )):const SizedBox()
        ],
      ),
    );
  }
}
