class AddCommentField < ActiveRecord::Migration
  def change
    add_column :comments, :comments, :text

  
  end
end
