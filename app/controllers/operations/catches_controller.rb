class Operations::CatchesController < ApplicationController

  def index
    @catches = Operation.find(params[:operation_id]).catches
  end

  def show
    @catch = Operation.find(params[:operation_id]).catches.find(params[:id])
  end

end