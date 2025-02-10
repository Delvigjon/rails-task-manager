Rails.application.routes.draw do
  get 'task_templates/edit'
  get 'task_templates/update'
  get 'task_templates/destroy'
  # Page d'accueil affichant les tâches
  root "pages#tasks"

  # Route pour la page "Mes Tâches"
  get "pages/tasks", to: "pages#tasks", as: :tasks_page

  # Routes CRUD pour Task
  resources :task_templates, only: [:edit, :update, :destroy]


  # Route spécifique pour la liste des tâches
  resources :tasks, only: [:index, :show, :new, :create, :edit, :update, :destroy]

end
