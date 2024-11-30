import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../../../core/utils/logger.dart';

@RoutePage()
class LogsPage extends StatelessWidget {
  const LogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TalkerScreen(
      talker: talker,
      appBarTitle: 'Logs',
    );
  }
}
