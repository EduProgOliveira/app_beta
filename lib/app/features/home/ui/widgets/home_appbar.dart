import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicos_online/app/core/helpers/size_extensions.dart';
import 'package:musicos_online/app/core/ui/styles/colors_app.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 30, bottom: 15, left: 30, right: 30),
          child: Row(
            children: [
              SizedBox(
                width: context.percentWith(.65),
                height: 40,
                child: TextFormField(
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    hintText: 'pesquisar',
                    hintStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 25,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      Colors.grey,
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/filter-icon.svg',
                    width: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 60,
          margin: const EdgeInsets.only(bottom: 20),
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            shrinkWrap: true,
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: index == 1
                        ? Border.all(
                            color: context.colors.primary,
                            width: 4,
                          )
                        : Border.all(),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/guitarra.jpg',
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 30,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            shrinkWrap: true,
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(index == 1
                        ? context.colors.primary
                        : context.colors.secondary),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  child: const Text('rock'),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 220);
}
