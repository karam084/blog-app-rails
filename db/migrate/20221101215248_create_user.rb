class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.text :photo
      t.text :bio
      t.string :posts_counter, defult: 0

      t.timestamps
    end
  end
end
