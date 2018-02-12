class CreateProgrammingSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :programming_skills do |t|
      t.string :name
      t.string :level_of_experience

      t.timestamps
    end
  end
end
