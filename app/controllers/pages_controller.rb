class PagesController < ApplicationController
  def index
  	@productos = search(params[:producto][:producto])
  	render :index
  end

  def search(search)
  if search && search != ""
     Producto.where(nombre: search)
  else
     Producto.all
  end
end
end