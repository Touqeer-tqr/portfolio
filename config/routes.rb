Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'portfolios#index'
  get "portfolios/download_cv"
  post "portfolios/contact_me"

end
