RailsTest::Application.routes.draw do
  root :to => "static_pages#welcome"
  # get "/" => "static_pages#welcome" can be used for all other pages, not standard to use for route
end
