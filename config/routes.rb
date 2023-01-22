Rails.application.routes.draw do
  # To alb health check
  get '/health_check' => 'alb#health_check'
end
