@extends('layouts.app')

@section('content')

<section class="cart-list-area">
  <div class="container checkout-container">
    <form>
      <div class="row">
        <div class="col-xl-2"></div>
        <div class="col-xl-8">
          <div class="row">
            <div class="col-xl-7">
              <div class="checkout-header">
                <div class="checkout-header-title">Checkout</div>
              </div>
              <div class="checkout-billing-option">
                <div>
                  <div class="checkout-sc-card-box border-none">
                    <div class="db radio">
                      <label title="">
                        <input id="Paypal_paypal" name="payment-methods" type="radio" checked>
                        <span class="toggle-control-label radio-label">
                          <span class="radio-label">
                            <span class="sc-card-box__label">PayPal </span>
                            <img src="https://s3.amazonaws.com/growth-prototypes/pp_cc_mark_111x69.jpg" alt="PayPal Icon" class="ml-2" width="74" height="20">
                          </span>
                        </span>
                      </label>
                    </div>
                  </div>
                  <div class="payment-method">
                    <div class="checkout-sc-card-box checkout-active">
                      <div class="checkout-sc-card-box-content">
                        <div>
                          <p class="mb-3">In order to complete your transaction, we will transfer you over to PayPal's secure servers.</p>
                        </div>
                        <div class="checkout-sc-card-footer">
                          <div class="checkout-sc-card-footer-notes">
                            <span>By completing your purchase you agree to these <a href="#" class="bold" target="_blank">Terms of Service</a>.</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="styles-sc-shopping-list">
                <div class="styles-list-inner-container">
                  <h3 class="styles-list-title">Order Summary</h3>
                  <div>
                    <ul class="styles-sc-shopping-list-items">
                      <div>
                        <div>
                          @foreach ($carts as $cart)
                          <div class="styles-sc-shopping-list__item">
                            <li>
                              <div class="styles-sc-card">
                                <div class="styles--sc-card__content">
                                  <div class="styles--sc-card__thumbnail"><img class="styles--sc-card__image" alt="" width="100" height="100" src="https://i.udemycdn.com/course/100x100/1412662_c35e_8.jpg"></div>
                                  <div class="styles--sc-card__column-wrapper">
                                    <div>
                                      <div>
                                        <div class="styles--sc-card__title">{{$cart->name}}</div>
                                      </div>
                                    </div>
                                    <div>
                                      <div class="styles--sc-card__prices">
                                        <div class="price-text-container">
                                          <div class="course-price-text">${{$cart->price}}</div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                            </li>
                          </div>
                          @endforeach
                        </div>
                      </div>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-5">
              <div class="styles--checkout-pane-inner">
                <div class="styles--sc-checkout-pane">
                  <div class="styles--complete-checkout">
                    <div class="styles--sc-checkout-box__heading">Summary</div>
                    <table class="styles--sc-checkout-box__details styles--sc-checkout-box__credits-total">
                      <tbody>
                        <tr>
                          <td class="styles--sc-checkout-box__label styles--sc-checkout-box__label--shrink"><b>Total:</b></td>
                          <td class="styles--sc-checkout-box__amount">
                            <span class="styles--sc-checkout-box__total-price"><span>${{ Cart::getTotal() }}</span></span>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  <div class="styles--button-slider styles--checkout-slider">
                    <!-- <div class="hidden-sm hidden-md hidden-lg">
                      <div class="checkout--slider-total-price">
                        <div>
                          <div class="checkout--total">Total:</div>
                          <div class="checkout--price"><span>$25.98</span></div>
                        </div>
                      </div>
                    </div> -->
                    <div class="styles--complete-payment-container">
                      <button type="submit" class="ellipsis btn btn-lg btn-primary btn-block">Proceed</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
        <div class="col-xl-2"></div>
      </div>
    </form>
  </div>
</section>

@endsection