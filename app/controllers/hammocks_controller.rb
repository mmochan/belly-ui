class HammocksController < ApplicationController
  # GET /hammocks
  # GET /hammocks.json
  def index
    @hammocks = Hammock.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hammocks }
    end
  end

  # GET /hammocks/1
  # GET /hammocks/1.json
  def show
    @hammock = Hammock.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hammock }
    end
  end

  # GET /hammocks/new
  # GET /hammocks/new.json
  def new
    @hammock = Hammock.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hammock }
    end
  end

  # GET /hammocks/1/edit
  def edit
    @hammock = Hammock.find(params[:id])
  end

  # POST /hammocks
  # POST /hammocks.json
  def create
    @hammock = Hammock.new(params[:hammock])

    respond_to do |format|
      if @hammock.save
        format.html { redirect_to @hammock, notice: 'Hammock was successfully created.' }
        format.json { render json: @hammock, status: :created, location: @hammock }
      else
        format.html { render action: "new" }
        format.json { render json: @hammock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hammocks/1
  # PUT /hammocks/1.json
  def update
    @hammock = Hammock.find(params[:id])

    respond_to do |format|
      if @hammock.update_attributes(params[:hammock])
        format.html { redirect_to @hammock, notice: 'Hammock was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hammock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hammocks/1
  # DELETE /hammocks/1.json
  def destroy
    @hammock = Hammock.find(params[:id])
    @hammock.destroy

    respond_to do |format|
      format.html { redirect_to hammocks_url }
      format.json { head :no_content }
    end
  end
end
