class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :subject
      t.string :body

      t.timestamp :inserted_at, :null => false, :default => "NOW()"
      t.timestamps null: false
    end
  end
end
