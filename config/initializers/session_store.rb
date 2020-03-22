if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_portfolio_app", domain: "https://cbw-portfolio-app-react.herokuapp.com" # url is fake domain name for production app
else
  Rails.application.config.session_store :cookie_store, key: "_portfolio_app"
end