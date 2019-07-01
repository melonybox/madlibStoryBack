class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :madlib, foreign_key: true
      t.string :placeHolderFilled

      t.timestamps
    end
  end
end
