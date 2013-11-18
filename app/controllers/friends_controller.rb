class FriendsController < ApplicationController
  # GET /amigos
  # GET /amigos.json
  def index
    @amigos = Amigo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @amigos }
    end
  end

  # GET /amigos/1
  # GET /amigos/1.json
  def show
    @amigo = Amigo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @amigo }
    end
  end

  # GET /amigos/new
  # GET /amigos/new.json
  def new
    @amigo = Amigo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @amigo }
    end
  end

  # GET /amigos/1/edit
  def edit
    @amigo = Amigo.find(params[:id])
  end

  # POST /amigos
  # POST /amigos.json
  def create
    @amigo = Amigo.new(params[:amigo])

    respond_to do |format|
      if @amigo.save
        format.html { redirect_to @amigo, notice: 'Amigo was successfully created.' }
        format.json { render json: @amigo, status: :created, location: @amigo }
      else
        format.html { render action: "new" }
        format.json { render json: @amigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /amigos/1
  # PUT /amigos/1.json
  def update
    @amigo = Amigo.find(params[:id])

    respond_to do |format|
      if @amigo.update_attributes(params[:amigo])
        format.html { redirect_to @amigo, notice: 'Amigo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @amigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amigos/1
  # DELETE /amigos/1.json
  def destroy
    @amigo = Amigo.find(params[:id])
    @amigo.destroy

    respond_to do |format|
      format.html { redirect_to amigos_url }
      format.json { head :no_content }
    end
  end
end
