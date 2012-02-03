class BlocsController < ApplicationController
  # GET /blocs
  # GET /blocs.json
  def index
    @blocs = Bloc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blocs }
    end
  end

  # GET /blocs/1
  # GET /blocs/1.json
  def show
    @bloc = Bloc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bloc }
    end
  end

  # GET /blocs/new
  # GET /blocs/new.json
  def new
    @bloc = Bloc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bloc }
    end
  end

  # GET /blocs/1/edit
  def edit
    @bloc = Bloc.find(params[:id])
  end

  # POST /blocs
  # POST /blocs.json
  def create
    @bloc = Bloc.new(params[:bloc])

    respond_to do |format|
      if @bloc.save
        format.html { redirect_to @bloc, notice: 'Bloc was successfully created.' }
        format.json { render json: @bloc, status: :created, location: @bloc }
      else
        format.html { render action: "new" }
        format.json { render json: @bloc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blocs/1
  # PUT /blocs/1.json
  def update
    @bloc = Bloc.find(params[:id])

    respond_to do |format|
      if @bloc.update_attributes(params[:bloc])
        format.html { redirect_to @bloc, notice: 'Bloc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bloc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blocs/1
  # DELETE /blocs/1.json
  def destroy
    @bloc = Bloc.find(params[:id])
    @bloc.destroy

    respond_to do |format|
      format.html { redirect_to blocs_url }
      format.json { head :no_content }
    end
  end
end
