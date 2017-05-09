class AddIsValidateToUser < ActiveRecord::Migration[5.0]
    def change
        add_column :users, :is_validate, :boolean, default: false
    end
end
