import 'package:flutter/material.dart';
import 'package:toodum/source/core/theme/style/theme_colors.dart';
import 'package:toodum/source/features/toom/domain/entity/toom_entity.dart';

final class ToomItemWidget extends StatelessWidget {
  const ToomItemWidget({super.key, required this.tooms, required this.toom});

  final List<ToomEntity> tooms;
  final ToomEntity toom;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.symmetric(horizontal:24),
      decoration: BoxDecoration(
        color: ThemeColors.secondary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('ToomDex: ${toom.id.toString()}'),
              Text('Nome: ${toom.name}'),
              Text('Descrição: ${toom.description}'),
              Text('Tipo: ${toom.type}'),
              Text('Estágio: ${toom.stage}'),
              Text('Fome: ${toom.hunger.toString()}'),
              Text('Limpeza: ${toom.clean.toString()}'),
              Text('Experiência: ${toom.exp.toString()}'),
              Text(toom.isAlive ? 'Vivo' : 'Morreu'),
            ],
          ),
          const SizedBox(width: 12),
          Image.asset(toom.skin, width: 200, height: 200),
        ],
      ),
    );
  }
}
