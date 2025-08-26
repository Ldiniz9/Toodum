import 'package:flutter/material.dart';
import 'package:toodum/source/core/theme/theme.dart';
import 'package:toodum/source/features/toom/domain/entity/toom_entity.dart';
import 'package:toodum/source/features/toom/presentation/app/widgets/toom_item_widget.dart';
import 'package:toodum/source/shared/widgets/app_drawer_widget.dart';

class ToomWidget extends StatelessWidget {
  const ToomWidget({super.key, required this.tooms});

  final List<ToomEntity> tooms;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bool isWideScreen = screenWidth >= 800;

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: isWideScreen ? null : Drawer(child: AppDrawerWidget()),
      appBar: isWideScreen
          ? null
          : AppBar(
              backgroundColor: ThemeColors.primary,
              leading: Builder(
                builder: (context) => IconButton(
                  color: Colors.white,
                  icon: const Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
              title: Center(
                child: Text(
                  'TOODUM',
                  style: ThemeTypography.bold56.apply(color: ThemeColors.secondary),
                ),
              ),
              actions: [SizedBox(width: 48)],
            ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          spacing: 12,
          children: [
            Expanded(
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int itemCount) => const Divider(),
              physics: const ClampingScrollPhysics(),
              itemCount: tooms.length,
              itemBuilder: (_, i){
                final toom = tooms[i];
                return ToomItemWidget(tooms: tooms, toom: toom,);
            }
            ),
          ),
          ],
        ),
      ),
    );
  }
}