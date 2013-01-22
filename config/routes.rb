BostonRuby::Application.routes.draw do
  %w{jobs projects users companies}.each do |dead_route|
    match "/#{dead_route}" => redirect('/')
  end

  root :to => 'high_voltage/pages#show', :id => 'home'
  get '/calendar' => 'high_voltage/pages#show', :id => 'calendar', :as => 'calendar'
  get '/presentations/month/:month/' => 'presentations#index', :as => 'month_presentations'
  get '/presentations/upcoming' => 'presentations#index', :as => 'upcoming_presentations', :defaults => { :upcoming => true }
  resources :presentations, :only => [:index, :show]
  get '/presenters/leaders' => 'leader_board#index'
  resources :presenters, :only => [:show]

  namespace 'admin' do
    resources 'presentations' do
      collection do
        get "month/:month" => :index, :as => "month"
      end
    end
  end
end
