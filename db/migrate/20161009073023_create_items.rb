class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :bin_id
      t.string :image

      t.timestamps

    end
  end
end
