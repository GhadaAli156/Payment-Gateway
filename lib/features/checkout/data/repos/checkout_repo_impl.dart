import 'package:dartz/dartz.dart';
import 'package:flutter_stripe_payment/core/errors/failures.dart';
import 'package:flutter_stripe_payment/core/utils/stripe_service.dart';
import 'package:flutter_stripe_payment/features/checkout/data/model/payment_intent_input_model.dart';
import 'package:flutter_stripe_payment/features/checkout/data/repos/checkout_repo.dart';

class CheckoutRepoImpl extends CheckoutRepo{
  final StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment({required PaymentIntentInputModel paymentIntentInputModel})async {
    try{
      await stripeService.makePayment(paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    }catch(e){
      return left(ServerFailure(errMessage: e.toString()));
    }
    }
  
}