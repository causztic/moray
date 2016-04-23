class Operations::CatchesController < ApplicationController

  def index
    @catches = Operation.find(params[:operation_id]).catches
    render layout: false
  end

  def show
    @catch = Operation.find(params[:operation_id]).catches.find(params[:id])
    render layout: false
  end

end