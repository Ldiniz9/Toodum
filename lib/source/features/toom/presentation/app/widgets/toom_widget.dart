import 'package:flutter/material.dart';
import 'package:toodum/source/core/theme/theme.dart';
import 'package:toodum/source/features/toom/domain/entity/toom_entity.dart';
import 'package:toodum/source/features/toom/presentation/app/widgets/toom_item_widget.dart';
import 'package:toodum/source/shared/shared.dart';

class ToomWidget extends StatelessWidget {
  const ToomWidget({super.key, required this.tooms});

  final List<ToomEntity> tooms;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isWideScreen = screenWidth >= 800;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: AppNavigationWidget(),
      endDrawer: isWideScreen ? null : Drawer(width: 200, child: AppEndDrawerWidget()),
      appBar: isWideScreen
          ? null
          : AppBar(
              leading: Spacer(),
              backgroundColor: Colors.black,
              title: Center(
                child: Text(
                  'TOODUM',
                  style: ThemeTypography.bold56.apply(
                    color: ThemeColors.secondary,
                  ),
                ),
              ),
              actions: [
                Builder(
                  builder: (context) => IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.settings),
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                  ),
                ),
              ],
            ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int itemCount) =>
                    const Divider(),
                physics: const ClampingScrollPhysics(),
                itemCount: tooms.length,
                itemBuilder: (_, i) {
                  final toom = tooms[i];
                  return ToomItemWidget(tooms: tooms, toom: toom);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
