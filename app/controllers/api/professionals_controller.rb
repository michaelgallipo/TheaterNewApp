class Api::ProfessionalsController < ApplicationController

  def index
    @professionals = Professional.all
    render "index.json.jbuilder"
  end

  def show
    @professional = Professional.find(params[:id])
    render "show.json.jbuilder"
  end

  


end
