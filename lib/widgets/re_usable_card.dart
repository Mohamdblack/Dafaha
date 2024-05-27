import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class ReUsableCard extends StatefulWidget {
  const ReUsableCard({super.key});

  @override
  State<ReUsableCard> createState() => _ReUsableCardState();
}

class _ReUsableCardState extends State<ReUsableCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200], // Assuming greyColor is similar
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mohamed"),
                      Text("7 days ago"),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: RichText(
                  text: TextSpan(
                    style:
                        GoogleFonts.poppins(height: 1.5, color: Colors.black),
                    children: [
                      const TextSpan(text: 'Waxaa la baafinaya :\n'),
                      TextSpan(
                        text: 'Mohamed Abdulle Elmi',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(
                          text: ' Oo markii ugu war danbeysay lagu sheegay '),
                      const TextSpan(
                          text:
                              'Mogadishu degmada warta nabada xaafada Calikamin'),
                      const TextSpan(
                        text:
                            ' Waxa ummada somaliyed laga codsanaya in cidii aragto kuso hagajiso ↙️',
                      ),
                      const TextSpan(
                        text: '\n0612870228 ',
                      ),
                      const TextSpan(
                        text: 'ama',
                      ),
                      const TextSpan(
                        text: ' 0615666610 ',
                      ),
                      const TextSpan(
                        text: 'ama',
                      ),
                      const TextSpan(
                        text: ' 0618103210 ',
                      ),
                    ],
                  ),
                  maxLines: isExpanded ? null : 3,
                  overflow: TextOverflow.visible,
                ),
              ),
              if (!isExpanded)
                InkWell(
                  onTap: () {
                    setState(() {
                      isExpanded = true;
                    });
                  },
                  child: const Text(
                    'See More...',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              if (isExpanded)
                InkWell(
                  onTap: () {
                    setState(() {
                      isExpanded = false;
                    });
                  },
                  child: const Text(
                    'See Less',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset("assets/mb.jpg"),
              ),
              const SizedBox(height: 16),
              const Divider(),
              Row(
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.like_14,
                      color: Colors.black,
                    ),
                    label: Text(
                      "4 likes",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.message,
                      color: Colors.black,
                    ),
                    label: Text(
                      "0 comment",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Spacer(),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share_sharp,
                      color: Colors.black,
                    ),
                    label: Text(
                      "share",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                      ),
                    ),
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
