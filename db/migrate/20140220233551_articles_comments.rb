class ArticlesComments < ActiveRecord::Migration
  def change
    create_table :articles_comments, id: false do |t|
      t.belongs_to :article  
      
    end
  end
end
