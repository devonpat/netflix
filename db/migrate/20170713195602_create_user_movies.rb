class CreateUserMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :user_movies do |t|
      t.references :user, foreign_key: true
      t.references :movie, foreign_key: true
      t.string :watched_count, default: 1
      t.boolean :liked

      t.timestamps
    end
  end
end
