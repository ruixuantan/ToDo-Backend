class AddTaggingsToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :taggings, :user, foreign_key: true
  end
end
