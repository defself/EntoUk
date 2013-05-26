class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :en
      t.string :uk

      t.timestamps
    end
  end
end
