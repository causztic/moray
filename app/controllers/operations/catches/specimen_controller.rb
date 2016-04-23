class Operations::Catches::SpecimenController < Operations::CatchesController
  def index
    @specimen = Operation.find(params[:operation_id]).catches.find(params[:catch_id]).specimen
    render layout: false
  end

end