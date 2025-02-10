class CreateTaskTemplates < ActiveRecord::Migration[7.1]
  def change
    create_table :task_templates do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
