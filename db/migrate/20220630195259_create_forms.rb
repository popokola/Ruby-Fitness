class CreateForms < ActiveRecord::Migration[6.1]
    def change
        create_table :forms do |t|
        t.string :height
        t.string :weight
        t.string :activity

        t.timestamps
        end
    end
end