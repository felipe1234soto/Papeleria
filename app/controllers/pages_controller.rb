class PagesController < ApplicationController
  before_action :parametros
  def index
  	@productos = search(@buscar)
  	render :index
  end

  def search(search)
    if search && search != ""
     Producto.where(nombre: search)
    else
      Producto.all
    end
  end

  def parametros
    if params[:producto].nil?
      @buscar=""
    else
      @buscar=params[:producto][:producto]
    end
    
  end
end