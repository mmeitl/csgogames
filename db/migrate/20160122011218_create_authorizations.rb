class CreateAuthorizations < ActiveRecord::Migration
  def change
    create_table :authorizations do |t|
      
      t.string :uid
      t.string :nickname
      t.string :image

      t.timestamps null: false
    end
  end
end
