class AddTaskTable < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.string :task_list_id, null: false
    end
  end
end
