import 'package:flutter/material.dart';
import 'package:toodum/source/features/toom/domain/entity/toom_entity.dart';

final class ToomItemWidget extends StatelessWidget {
  const ToomItemWidget({super.key, required this.tooms, required this.toom});

  final List<ToomEntity> tooms;
  final ToomEntity toom;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ToomDex: ${toom.id.toString()}'),
            Text('Nome: ${toom.name}'),
            Text('Descrição: ${toom.description}'),
            Text('Estágio: ${toom.stage}'),
            Text('Fome: ${toom.hunger.toString()}'),
            Text('Limpeza: ${toom.clean.toString()}'),
            Text('Experiência: ${toom.exp.toString()}'),
            Text(toom.isAlive ? 'Vivo': 'Morreu'),
          ],
        ),
        Image.asset(toom.skin, width: 200, height: 200,),
        const SizedBox(height: 24,),
      ],
    );
  }
}
