class OperationsController < ApplicationController
  def show
    @operation = Operation.find(params[:id])
  end
end