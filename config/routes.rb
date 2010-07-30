Rails.application.routes.draw do
  namespace 'tolk' do
    root :to => 'locales#index'
    resources :locales do
      member do
        get :all
        get :updated
      end
    end
    resource  :search
  end
end
