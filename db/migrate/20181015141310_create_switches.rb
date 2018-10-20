class CreateSwitches < ActiveRecord::Migration[5.2]
  def change
    create_table :switches do |t|
      t.string :name
      t.string :manufacturer
      t.integer :force
      t.string :base_color
      t.string :shaft_color
      t.string :feeling
      t.string :image_url
      t.string :sound_url

      t.timestamps
    end
  end
end
