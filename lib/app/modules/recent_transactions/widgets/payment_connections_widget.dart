import 'dart:math';

import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../dto/circle_dto.dart';

class PaymentConnectionsWidget extends StatelessWidget {
  final double width;
  final double height;
  final String profileImageUrl;
  final List<String> connectionsImageUrl;

  const PaymentConnectionsWidget({
    Key key,
    @required this.width,
    @required this.height,
    @required this.profileImageUrl,
    @required this.connectionsImageUrl,
  })  : assert(width != null),
        assert(height != null),
        assert(profileImageUrl != null),
        assert(connectionsImageUrl != null),
        super(key: key);

  Offset _calculatePointerEnd({
    @required Offset centerOffset,
    @required double radius,
    @required int unit,
    @required int unitProportion,
  }) {
    final coordenateX = centerOffset.dx +
        radius * cos((2 * pi * unit - (pi / 2)) / unitProportion);
    final coordenateY = centerOffset.dy +
        radius * sin((2 * pi * unit - (pi / 2)) / unitProportion);
    return Offset(coordenateX, coordenateY);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(width / 2 * 0.2),
        child: CustomPaint(
          size: Size(
            width,
            height,
          ),
          child: Container(
            height: height,
            width: width,
            child: _buildPictures(),
          ),
          painter: PaymentConnectionsPainter(
            height: height,
            width: width,
          ),
        ),
      ),
    );
  }

  Widget _buildPictures() {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            radius: width / 2 * 0.34,
            backgroundImage: NetworkImage(profileImageUrl),
            backgroundColor: AppColors.lightGrey,
          ),
          ..._generateConnectionsPicture(),
        ],
      ),
    );
  }

  List<Widget> _generateConnectionsPicture() {
    return List<Widget>.generate(
      connectionsImageUrl.length,
      (index) => Transform.translate(
        offset: _calculatePointerEnd(
          centerOffset: Offset(0, 0),
          radius: width / 2,
          unit: index,
          unitProportion: connectionsImageUrl.length,
        ),
        child: Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [AppTheme.boxShadow],
          ),
          child: CircleAvatar(
            radius: width / 2 * 0.2,
            backgroundImage: NetworkImage(profileImageUrl),
            backgroundColor: AppColors.lightGrey,
          ),
        ),
      ),
    );
  }
}

class PaymentConnectionsPainter extends CustomPainter {
  final double width;
  final double height;

  const PaymentConnectionsPainter({
    @required this.width,
    @required this.height,
  })  : assert(width != null),
        assert(height != null);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(
      width / 2,
      height / 2,
    );
    final radius = width / 2;

    final circlesToDraw = <CircleDto>[
      CircleDto(
        initialRadius: radius * 0.99,
        finalRadius: radius,
        backgroundColor: AppColors.darkGrey,
      ),
      CircleDto(
        initialRadius: radius * 0.73,
        finalRadius: radius * 0.99,
        backgroundColor: AppColors.background,
      ),
      CircleDto(
        initialRadius: radius * 0.72,
        finalRadius: radius * 0.73,
        backgroundColor: Colors.white,
      ),
      CircleDto(
        initialRadius: radius * 0.60,
        finalRadius: radius * 0.72,
        backgroundColor: AppColors.blue,
      ),
      CircleDto(
        initialRadius: radius * 0.41,
        finalRadius: radius * 0.60,
        backgroundColor: AppColors.lightBlue,
      ),
      CircleDto(
        initialRadius: radius * 0.38,
        finalRadius: radius * 0.41,
        backgroundColor: AppColors.darkBlue,
      ),
      CircleDto(
        initialRadius: radius * 0.34,
        finalRadius: radius * 0.38,
        backgroundColor: Colors.white,
      ),
    ];
    circlesToDraw.forEach(
      (circle) => canvas.drawCircle(
        center,
        circle.finalRadius,
        Paint()..color = circle.backgroundColor,
      ),
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
