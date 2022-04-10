import 'package:fud/vm/dashboard_vm.dart';
import 'package:fud/vm/food_vm.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final allProviders = <SingleChildWidget>[
  ChangeNotifierProvider(create: (_) => FoodViewModel()),
  ChangeNotifierProvider(create: (_) => DashBoardModel()),
];
