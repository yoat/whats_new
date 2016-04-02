class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true
      t.references :project, index: true
      t.string :image
      t.string :music

      t.timestamps
    end
  end
end
