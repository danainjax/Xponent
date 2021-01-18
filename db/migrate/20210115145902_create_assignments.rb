class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :status
      t.belongs_to :user
      t.belongs_to :task
      t.timestamps
    end
  end
end
