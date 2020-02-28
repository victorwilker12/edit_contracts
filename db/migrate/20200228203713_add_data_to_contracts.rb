class AddDataToContracts < ActiveRecord::Migration[5.2]
  def change
    add_column :contracts, :local, :string
    add_column :contracts, :nameRep, :string
    add_column :contracts, :nac, :string
    add_column :contracts, :status, :string
    add_column :contracts, :prof, :string
    add_column :contracts, :CPF, :string
    add_column :contracts, :RG, :string
    add_column :contracts, :end, :string
  end
end
