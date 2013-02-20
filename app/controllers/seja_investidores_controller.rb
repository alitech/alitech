class SejaInvestidoresController < ApplicationController
  # GET /seja_investidores
  # GET /seja_investidores.json
  def index
    @seja_investidores = SejaInvestidore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @seja_investidores }
    end
  end

  # GET /seja_investidores/1
  # GET /seja_investidores/1.json
  def show
    @seja_investidore = SejaInvestidore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @seja_investidore }
    end
  end

  # GET /seja_investidores/new
  # GET /seja_investidores/new.json
  def new
    @seja_investidore = SejaInvestidore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @seja_investidore }
    end
  end

  # GET /seja_investidores/1/edit
  def edit
    @seja_investidore = SejaInvestidore.find(params[:id])
  end

  # POST /seja_investidores
  # POST /seja_investidores.json
  def create
    @seja_investidore = SejaInvestidore.new(params[:seja_investidore])

    respond_to do |format|
      if @seja_investidore.save
        format.html { redirect_to @seja_investidore, notice: 'Seja investidore was successfully created.' }
        format.json { render json: @seja_investidore, status: :created, location: @seja_investidore }
      else
        format.html { render action: "new" }
        format.json { render json: @seja_investidore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /seja_investidores/1
  # PUT /seja_investidores/1.json
  def update
    @seja_investidore = SejaInvestidore.find(params[:id])

    respond_to do |format|
      if @seja_investidore.update_attributes(params[:seja_investidore])
        format.html { redirect_to @seja_investidore, notice: 'Seja investidore was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @seja_investidore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seja_investidores/1
  # DELETE /seja_investidores/1.json
  def destroy
    @seja_investidore = SejaInvestidore.find(params[:id])
    @seja_investidore.destroy

    respond_to do |format|
      format.html { redirect_to seja_investidores_url }
      format.json { head :no_content }
    end
  end
end
