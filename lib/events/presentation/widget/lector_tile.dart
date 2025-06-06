import 'package:flutter/material.dart';

import '../../../common/locale/locale.dart';
import '../../../common/theme/theme.dart';
import '../../domain/model/lector_model.dart';

class LectorCard extends StatelessWidget {
  const LectorCard({
    super.key,
    required this.person,
  });

  final LectorModel person;

  @override
  Widget build(BuildContext context) {
    //получить design переменные из темы
    final theme = Theme.of(context);
    final paddingTheme =
        theme.extension<PaddingAndRadiusThemeData>() ??
            PaddingAndRadiusThemeData.defaultThemeData;

    //отрисовать карточку
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: double.infinity,
      ), //todo: real maxHeight
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //avatar
          CircleAvatar(
            backgroundColor:
            Theme.of(context).cardColor,
            foregroundImage: person.photo,
            minRadius: 24,
          ),
          SizedBox(width: paddingTheme.largeElementDistance),
          //name and accrual
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  person.name,
                  style: theme.textTheme.headlineSmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                //SizedBox(height: paddingTheme.minimalElementDistance),
                Text(
                  AppLocaleScope.of(
                    context,
                  ).lector, //TODO: спросить какие бывают и сделать enum + applocalescope-ный
                  style: theme.textTheme.labelMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
