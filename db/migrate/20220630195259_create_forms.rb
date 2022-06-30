class CreateForms < ActiveRecord::Migration[6.1]
<<<<<<< HEAD
    def change
        create_table :forms do |t|
        t.string :height
        t.string :weight
        t.string :activity

        t.timestamps
        end
    end
end
=======
  def change
    create_table :forms do |t|
      t.string :height
      t.string :weight
      t.string :activity
    end
  end
end
>>>>>>> 81c566d3aa72934f5363bf2813fae90f39c64822
