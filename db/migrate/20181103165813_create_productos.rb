class CreateProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.integer :cantidad
      t.float :precio_compra
      t.float :precio_venta
      t.attachment :image

      t.timestamps
    end
  end
end
