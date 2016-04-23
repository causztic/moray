class OperationsController < ApplicationController
  def show
    @operation = Operation.find(params[:id])
  end

  def custom
    @operation =  Operation.find(params[:operation_id])
    @catches = @operation.catches
    render :show unless params[:show_all]
  end

end