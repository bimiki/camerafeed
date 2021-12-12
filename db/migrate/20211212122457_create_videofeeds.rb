class CreateVideofeeds < ActiveRecord::Migration[7.0]
  def change
    create_table :videofeeds do |t|
      t.string :video
      t.string :index

      t.timestamps
    end
  end
end
