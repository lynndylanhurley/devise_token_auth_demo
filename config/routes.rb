Rails.application.routes.draw do
  mount_devise_token_auth_for 'Mang', at: 'bong'

  mount_devise_token_auth_for 'User', at: '/auth'
  as :user do
    # Define routes for User within this block.
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  mount DeviseTokenAuth::Engine => "/auth"

  get "demo/members_only", to: "demo#members_only"
end
