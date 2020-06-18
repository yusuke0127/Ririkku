class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :en_title
      t.string :jp_title
      t.text :en_lyric
      t.text :jp_lyric
      t.string :genre
      t.string :composer
      t.date :release
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
