class AddDescriptionToAcrtices < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :description, :text
    add_column :articles, :created_at, :date_time
    add_column :articles, :updated_at, :date_time
  end
end
