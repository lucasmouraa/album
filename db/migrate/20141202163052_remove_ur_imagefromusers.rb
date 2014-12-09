class RemoveUrImagefromusers < ActiveRecord::Migration
  def change
      remove_column :users, :url_image
  end
end
