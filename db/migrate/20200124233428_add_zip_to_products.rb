class AddZipToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column(:products, :zip, :string)
  end
end
