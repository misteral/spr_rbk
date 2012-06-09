Spree::Core::Engine.routes.draw do

  resources :orders do
    resource :checkout, :controller => 'checkout' do
      member do
        get :rbk_checkout_payment
        get :rbk_checkout_success
        post :rbk_checkout_success
      end
    end
  end

  # Add your extension routes here
  match '/rbk_checkout/success/' => 'checkout#rbk_checkout_success', :as => :rbk_checkout_success
   # get '/rbk_checkout/success/' => 'checkout#rbk_checkout_success', :as => :rbk_checkout_success
   #  post '/rbk_checkout/success/' => 'checkout#rbk_checkout_success', :as => :rbk_checkout_success
end
