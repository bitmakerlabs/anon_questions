class AddAnsweredToQuestions < ActiveRecord::Migration
  def up
    change_table :questions do |t|
      t.boolean :answered, :default => false
    end
    Question.update_all ["answered = ?", false]
  end

  def down
    remove_column :questions, :answered
  end
end
