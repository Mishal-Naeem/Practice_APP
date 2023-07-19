Rails.configuration.stripe = { 
    :publishable_key => 'pk_test_51NVXoXCi9CWtuR5zdYYhW12hyDahaiGwIdLLzOXsdI8IsG4xSkeaWtLV8JhsTRZjvtBSf3O7Nko725cHJfbpmvLe00psa2Xh13',
    :secret_key => 'sk_test_51NVXoXCi9CWtuR5zGePJNwYZDgabiaHLEjRncMyVnTy38Cb1kFJjrtE7nIsiUNZH7iVEgfFtSH3BagpSZzjaOM0N009duTnqkb'
  } 
  Stripe.api_key = Rails.configuration.stripe[:secret_key]