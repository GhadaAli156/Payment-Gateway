import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';
import 'custom_button_bloc_consumer.dart';
import 'payment_methods_List_view.dart';
class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16,),
          PaymentMethodsListView(),
          SizedBox(height: 32,),
          CustomButtonBlocConsumer()
        ],
      ),
    );
  }
}


