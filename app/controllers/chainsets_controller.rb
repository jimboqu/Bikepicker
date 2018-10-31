class ChainsetsController < ApplicationController
  before_action 

  def index
  	@chainsets = Chainset.all
  end

  def show
  	@chainset = Chainset.find(params[:id])
  end

  private 
    def chainset_params
      params.require(:chainset).permit(:weight, :price, :manufacturer, :name)
    end
end
