class CreateBmis < ActiveRecord::Migration
  def change
    create_table :bmis do |t|
      t.text :name
      t.float :height
      t.float :weight

      t.timestamps
    end
  end
end
