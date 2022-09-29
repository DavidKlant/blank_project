import 'package:blank_project/state/providers/sample_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ProviderList extends StatelessWidget {
  final Widget child;
  const ProviderList({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<SampleProvider>(
          create: (context) => SampleProvider()),
    ], child: child);
  }
}
