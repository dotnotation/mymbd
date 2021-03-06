class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :description
      t.date :released_date

      t.timestamps
    end
  end
end
