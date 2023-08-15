Rails.application.routes.draw do
  mount WikiClient::Engine => "/wiki_client"
end
