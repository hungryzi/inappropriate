class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.text :content
      t.text :credit
      t.integer :status

      t.timestamps
    end
  end
end
