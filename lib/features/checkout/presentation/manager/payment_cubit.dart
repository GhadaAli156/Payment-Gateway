import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe_payment/features/checkout/data/model/payment_intent_input_model.dart';
import 'package:flutter_stripe_payment/features/checkout/data/repos/checkout_repo.dart';
import 'package:flutter_stripe_payment/features/checkout/data/repos/checkout_repo_impl.dart';
import 'package:flutter_stripe_payment/features/checkout/presentation/manager/payment_state.dart';

class PaymentCubit extends Cubit<PaymentState>{
  PaymentCubit(this.checkoutRepo):super(PaymentInitial());
  final CheckoutRepo checkoutRepo;

  Future makePayment({required PaymentIntentInputModel paymentIntentInputModel})async{
    emit(PaymentLoading());

    var data = await CheckoutRepoImpl().makePayment(paymentIntentInputModel: paymentIntentInputModel);

    data.fold((l) => emit(PaymentFailure(l.errMessage)), (r) => PaymentSuccess(),);
  }

  void onChange(Change<PaymentState> change){
    log(change.toString());
    super.onChange(change);


  }

}