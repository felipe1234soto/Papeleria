class ProductosController < ApplicationController
	before_action :authenticate_administrador!
	before_action :set_producto, except:[:index,:create,:new]

  def index
  	@productos = Producto.all
  end

  def new
  	@producto= Producto.new
  end

  def create
  	@producto= Producto.create(producto_params)
  	redirecion
  end

  def edit
  	
  end

  def update
  	@producto.update(producto_params)
  	redirecion
  end

  def destroy
  	@producto.destroy
  	redirecion
  end

  private

  def set_producto
  	@producto = Producto.find(params[:id])
  end

  def producto_params
  	params.require(:producto).permit(:nombre, :cantidad, :precio_compra, :precio_venta, :image)
  end

  def redirecion
  	respond_to do |format|
  		format.html do
    		redirect_to productos_path
    	end
	end
  end
end