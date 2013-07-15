class CreateQuestionData < ActiveRecord::Migration
  def change
    create_table :question_data do |t|
      t.string :date
      t.string :asked_by
      t.string :string
      t.string :question_asked
      t.boolean :answered

      t.timestamps
    end
  end
end
