import 'package:canton_ui/canton_ui.dart';

class CantonArrowButton extends StatelessWidget {
  const CantonArrowButton({Key? key, required this.view}) : super(key: key);

  final Widget view;

  @override
  Widget build(BuildContext context) {
    return CantonActionButton(
      padding: EdgeInsets.zero,
      alignment: MainAxisAlignment.end,
      icon: Icon(
        Feather.arrow_right,
        size: 20,
        color: Theme.of(context).primaryColor,
      ),
      onPressed: () {
        CantonMethods.viewTransition(context, view);
      },
    );
  }
}
