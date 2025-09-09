import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsTempList extends StatefulWidget {
  const DetailsTempList({super.key});
  @override
  State<DetailsTempList> createState() => _DetailsTempListState();
}

class _DetailsTempListState extends State<DetailsTempList> {
  final _controller = PageController(viewportFraction: .21);
  double _val = 0.0;
  @override
  void initState() {
    _controller.addListener(_listener);
    super.initState();
  }

  void _listener() => setState(() => _val = _controller.page!);

  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _controller,
      itemCount: 10,
      padEnds: true,
      onPageChanged: (int page) => setState(() => _currentPage = page),
      itemBuilder: (context, index) {
        final isSelecte = index == _currentPage;
        final percent = index - _val;
        final scale = percent.abs() * .3;
        // degree icon for selected Number
        final text2 = isSelecte ? '${index + 21}\u2103' : '${index + 21}';
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()..scale(1 - scale),
          child: Text(
            text2,
            textAlign: TextAlign.center,
            style: GoogleFonts.michroma(
              textStyle: TextStyle(
                fontSize: isSelecte ? 26 : 18,
                color: isSelecte
                    ? const Color.fromARGB(255, 214, 187, 107)
                    : const Color(0xFF757575),
                fontWeight: isSelecte ? FontWeight.w900 : FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.removeListener(_listener);
    _controller.dispose();
    super.dispose();
  }
}
