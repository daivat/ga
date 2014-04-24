class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.string :location
      t.string :contact
      t.string :date

      t.timestamps
    end
  end
end
