Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  mount DeviseTokenAuth::Engine => "/auth"

  get "demo/members_only", to: "demo#members_only"
end
