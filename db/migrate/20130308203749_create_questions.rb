class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.integer :votes, :default => 0

      t.timestamps
    end
  end
end
