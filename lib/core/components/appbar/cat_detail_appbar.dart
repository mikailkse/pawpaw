import 'package:pawpaw/core/extensions/contex_extensions.dart';
import 'package:flutter/material.dart';

class CatDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? images;
  const CatDetailAppBar({
    Key? key,
    this.images,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(350);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leadingWidth: context.width * 0.15,
      leading: Align(
        alignment: Alignment.topLeft,
        child: Row(
          children: [
            Padding(
              padding: context.paddingLow,
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade100.withOpacity(0.5),
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_outlined),
                ),
              ),
            ),
          ],
        ),
      ),
      // actions: [
      //   Align(
      //     alignment: Alignment.topRight,
      //     child: Padding(
      //       padding: context.paddingLow,
      //       child: CircleAvatar(
      //         backgroundColor: Colors.grey.shade100.withOpacity(0.5),
      //         child: IconButton(
      //           onPressed: () {},
      //           icon: const Icon(Icons.favorite_outline_sharp),
      //         ),
      //       ),
      //     ),
      //   ),
      // ],
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            image: DecorationImage(
              image: NetworkImage(
                images ?? '',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
