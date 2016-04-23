class OperationsController < ApplicationController

  def show
    @operation = Operation.find(params[:id])
    render layout: false
  end

  def custom
    @operation =  Operation.find(params[:operation_id])
    @catches = @operation.catches
    params[:show_all] ? (render layout: false) : (render :show, layout: false)
  end

end