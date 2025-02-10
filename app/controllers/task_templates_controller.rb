class TaskTemplatesController < ApplicationController
  before_action :set_task_template, only: [:edit, :update, :destroy]

  def edit
  end

  def update
    if @task_template.update(task_template_params)
      redirect_to root_path, notice: "Tâche type mise à jour avec succès."
    else
      render :edit, alert: "Erreur lors de la mise à jour."
    end
  end

  def destroy
    @task_template.destroy
    redirect_to root_path, notice: "Tâche type supprimée avec succès."
  end

  private

  def set_task_template
    @task_template = TaskTemplate.find(params[:id])
  end

  def task_template_params
    params.require(:task_template).permit(:title, :description)
  end
end
