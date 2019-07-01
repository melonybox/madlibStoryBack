class CreateMadlibs < ActiveRecord::Migration[5.2]
  def change
    create_table :madlibs do |t|
      t.string :chapter
      t.string :title
      t.string :template
      t.string :placeHolderEmpty

      t.timestamps
    end
  end
end
