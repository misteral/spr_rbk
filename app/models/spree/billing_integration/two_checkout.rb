module Spree
class BillingIntegration::RbkCheckout < BillingIntegration
  preference :sid, :string
  preference :secret_word, :string

  def provider_class
    ActiveMerchant::Billing::Integrations::RbkCheckout
  end
end
end
