Rails.application.routes.draw do
  # Set the root route to redirect to the analysis page
  root 'github#analysis'
  
  # Route for the analysis page (GET request)
  get 'github/analysis', to: 'github#analysis'
  
  # Route for the form submission (POST request)
  post 'github/fetch_data', to: 'github#fetch_data'
end
