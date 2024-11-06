class AddColumnBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :madedate, :date
    add_column :blogs, :prefecture, :integer
    add_column :blogs, :occupation, :integer
    add_column :blogs, :emotion, :integer
  end
end
