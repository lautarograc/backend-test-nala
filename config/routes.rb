Rails.application.routes.draw do
  scope path: '/api' do
    api_version(module: 'Api::Exposed::V1', path: { value: 'v1' }, defaults: { format: 'json' }) do
      resources :employees
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
