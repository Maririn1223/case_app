class CreateCases < ActiveRecord::Migration[6.0]
  def change
    create_table :cases do |t|
      t.string :title
      t.text :charactristic
      t.text :task
      t.text :everyday
      t.text :support
      t.text :result
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
