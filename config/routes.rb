Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope path: '/api' do
    api_version(module: 'Api::Exposed::V1', path: { value: 'v1' }, defaults: { format: 'json' }) do
    end
  end
end
