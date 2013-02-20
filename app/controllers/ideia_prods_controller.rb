class IdeiaProdsController < ApplicationController
  # GET /ideia_prods/new
  # GET /ideia_prods/new.json
  def new
    @ideia_prod = IdeiaProd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ideia_prod }
    end
  end

  # POST /ideia_prods
  # POST /ideia_prods.json
  def create
    @ideia_prod = IdeiaProd.new(params[:ideia_prod])

    respond_to do |format|
      if @ideia_prod.save
        format.html { redirect_to @ideia_prod, notice: 'Ideia prod was successfully created.' }
        format.json { render json: @ideia_prod, status: :created, location: @ideia_prod }
      else
        format.html { render action: "new" }
        format.json { render json: @ideia_prod.errors, status: :unprocessable_entity }
      end
    end
  end
end