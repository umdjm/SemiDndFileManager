class FileContainersController < ApplicationController
  # GET /file_containers
  # GET /file_containers.json
  def index
    @page = params[:page]

    if params[:page].nil?
      @file_containers = FileContainer.all
    else
      @file_containers = FileContainer.where(:page => params[:page] )
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @file_containers }
    end
  end

  # GET /file_containers/1
  # GET /file_containers/1.json
  def show
    @file_container = FileContainer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @file_container }
    end
  end

  # GET /file_containers/new
  # GET /file_containers/new.json
  def new

    @file_container = FileContainer.new
    @file_container.page = params[:page]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @file_container }
    end
  end

  # GET /file_containers/1/edit
  def edit
    @file_container = FileContainer.find(params[:id])
  end

  # POST /file_containers
  # POST /file_containers.json
  def create
    @file_container = FileContainer.new(params[:file_container])

    respond_to do |format|
      if @file_container.save
        format.html { redirect_to file_containers_url, notice: 'File was successfully uploaded.' }
        format.json { render json: @file_container, status: :created, location: @file_container }
      else
        format.html { render action: "new" }
        format.json { render json: @file_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /file_containers/1
  # PUT /file_containers/1.json
  def update
    @file_container = FileContainer.find(params[:id])

    respond_to do |format|
      if @file_container.update_attributes(params[:file_container])
        format.html { redirect_to file_containers_url, notice: 'File was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @file_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /file_containers/1
  # DELETE /file_containers/1.json
  def destroy
    @file_container = FileContainer.find(params[:id])
    @file_container.destroy

    respond_to do |format|
      format.html { redirect_to file_containers_ur, notice: 'File was deleted updated.'  }
      format.json { head :no_content }
    end
  end
end
