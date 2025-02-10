class PagesController < ApplicationController
  def tasks
    @tasks = Task.all.order(created_at: :desc)
  end
end
