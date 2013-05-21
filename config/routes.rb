T::Application.routes.draw do
  match '/resource.js' => 'resource#show'
  root :to => 'popups#show'
end
