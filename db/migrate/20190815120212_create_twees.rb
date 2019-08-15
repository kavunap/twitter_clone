class CreateTwees < ActiveRecord::Migration[5.2]
  def change
    create_table :twees do |t|
      t.text :content
      t.timestamp :created_on

      t.timestamps
    end
  end
end
