class PerzonasController < ApplicationController
  # GET /perzonas
  # GET /perzonas.json
  def index
    @perzonas = Perzona.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @perzonas }
    end
  end

  # GET /perzonas/1
  # GET /perzonas/1.json
  def show
    @perzona = Perzona.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @perzona }
    end
  end

  # GET /perzonas/new
  # GET /perzonas/new.json
  def new
    @perzona = Perzona.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @perzona }
    end
  end

  # GET /perzonas/1/edit
  def edit
    @perzona = Perzona.find(params[:id])
  end

  # POST /perzonas
  # POST /perzonas.json
  def create
    @perzona = Perzona.new(params[:perzona])

    respond_to do |format|
      if @perzona.save
        format.html { redirect_to @perzona, notice: 'Perzona was successfully created.' }
        format.json { render json: @perzona, status: :created, location: @perzona }
      else
        format.html { render action: "new" }
        format.json { render json: @perzona.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /perzonas/1
  # PUT /perzonas/1.json
  def update
    @perzona = Perzona.find(params[:id])

    respond_to do |format|
      if @perzona.update_attributes(params[:perzona])
        format.html { redirect_to @perzona, notice: 'Perzona was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @perzona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perzonas/1
  # DELETE /perzonas/1.json
  def destroy
    @perzona = Perzona.find(params[:id])
    @perzona.destroy

    respond_to do |format|
      format.html { redirect_to perzonas_url }
      format.json { head :no_content }
    end
  end
end
