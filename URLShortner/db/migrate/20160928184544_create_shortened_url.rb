class CreateShortenedUrl < ActiveRecord::Migration
  def change
    create_table :shortened_urls do |t|
      t.string :short_url
      t.string :long_url, null: false
      t.string :user_id, null: false
      t.timestamps
    end
  end
end
