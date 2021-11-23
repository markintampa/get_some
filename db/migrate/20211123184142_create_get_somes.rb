class CreateGetSomes < ActiveRecord::Migration[6.1]
  def change
    create_table :get_somes do |t|

      t.timestamps
    end
  end
end
