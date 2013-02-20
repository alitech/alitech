class FaleConoscosController < ApplicationController
  # GET /fale_conoscos/new
  # GET /fale_conoscos/new.json
  def new
    @tituloFaleConosco = "Fale Conosco"
    @fale_conosco = FaleConosco.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fale_conosco }
    end
  end

  # POST /fale_conoscos
  # POST /fale_conoscos.json
  def create
    @fale_conosco = FaleConosco.new(params[:fale_conosco])

    respond_to do |format|
      if @fale_conosco.save
        format.html { redirect_to @fale_conosco, notice: 'Fale conosco was successfully created.' }
        format.json { render json: @fale_conosco, status: :created, location: @fale_conosco }
      else
        format.html { render action: "new" }
        format.json { render json: @fale_conosco.errors, status: :unprocessable_entity }
      end
    end
  end

end
