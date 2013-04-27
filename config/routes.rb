RailsTest::Application.routes.draw do
  root :to => "static_pages#welcome"
  # get "/" => "static_pages#welcome" can be used for all other pages, not standard to use for route

  post "create" => "static_pages#create"

  #No route matches {:action=>"create", :controller=>"static_pages"}
  #copy and past in error message so we know what we are missing. telling us we dont ahve a route that matches create
end
