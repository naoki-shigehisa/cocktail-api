Rails.application.routes.draw do
  # To alb health check
  get '/health_check' => 'alb#health_check'

  def draw(*names)
    names[-1] = "#{names[-1]}.rb"
    instance_eval(Rails.root.join('config', 'routes', *names.map(&:to_s)).read)
  end

  namespace :api do
    draw(:api, :v1)
  end
end
