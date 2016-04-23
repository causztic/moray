class Operation::CatchesController < ApplicationController

  def index
    @catches = Operation.find(params[:operation_id]).catches
  end

end