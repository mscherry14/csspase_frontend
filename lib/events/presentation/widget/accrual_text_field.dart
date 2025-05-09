import 'package:csspace_app/common/locale/locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show FilteringTextInputFormatter;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/theme/theme.dart';
import '../controller/accrual_form_bloc/form_bloc.dart';

class AccrualTextField extends StatefulWidget {
  final int capacity;

  const AccrualTextField({super.key, required this.capacity});

  @override
  State<AccrualTextField> createState() => _AccrualTextFieldState();
}

class _AccrualTextFieldState extends State<AccrualTextField> {
  late TextEditingController controller;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: '0');
    controller.addListener(() {
      context.read<AccrualFormBloc>().add(SumChangedEvent(controller.text));
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final paddingTheme =
        Theme.of(context).extension<PaddingAndRadiusThemeData>() ??
        PaddingAndRadiusThemeData.defaultThemeData;
    final customTheme =
        Theme.of(context).extension<CustomThemeData>() ??
            CustomThemeData.defaultThemeData;

    return BlocBuilder<AccrualFormBloc, AccrualValidationFormState>(
      buildWhen: (prev, curr) => prev != curr,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: paddingTheme.minimalElementDistance,
          children: [
            Text(
              AppLocaleScope.of(context).accrualSum,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            TextFormField(
              controller: controller,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                hintText: '0',
                suffixText: AppLocaleScope.of(
                  context,
                ).eventCapacity(widget.capacity),
                counterText: '',
                errorText: (state is AccrualValidFormState) ? null : '',
              ),
              keyboardType: TextInputType.number,
              //maxLength: widget.textFieldType.maxCharacters,
              minLines: 1,
              style: Theme.of(context).textTheme.bodyMedium,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                FilteringTextInputFormatter.singleLineFormatter,
                FilteringTextInputFormatter.deny(
                  RegExp(r'^0(\d)+'),
                  replacementString: '0',
                ),
              ],
            ),
            if (state is AccrualNotValidFormState)
              Text(
                AppLocaleScope.of(context).accrualSumError(state.errorMessage),
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.labelMedium?.apply(color: customTheme.negativeColor),
              ),
          ],
        );
      },
    );
  }
}
