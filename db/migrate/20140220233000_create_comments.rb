class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments, :id false do |t|
      t.belongs_to :article

      t.timestamps
    end
  end
end
