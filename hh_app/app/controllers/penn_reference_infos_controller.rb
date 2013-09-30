class PennReferenceInfosController < ApplicationController
  # GET /penn_reference_infos
  # GET /penn_reference_infos.json
  def index
    @penn_reference_infos = PennReferenceInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @penn_reference_infos }
    end
  end

  # GET /penn_reference_infos/1
  # GET /penn_reference_infos/1.json
  def show
    @penn_reference_info = PennReferenceInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @penn_reference_info }
    end
  end

  # GET /penn_reference_infos/new
  # GET /penn_reference_infos/new.json
  def new
    @penn_reference_info = PennReferenceInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @penn_reference_info }
    end
  end

  # GET /penn_reference_infos/1/edit
  def edit
    @penn_reference_info = PennReferenceInfo.find(params[:id])
  end

  # POST /penn_reference_infos
  # POST /penn_reference_infos.json
  def create
    @penn_reference_info = PennReferenceInfo.new(params[:penn_reference_info])

    respond_to do |format|
      if @penn_reference_info.save
        format.html { redirect_to @penn_reference_info, notice: 'Penn reference info was successfully created.' }
        format.json { render json: @penn_reference_info, status: :created, location: @penn_reference_info }
      else
        format.html { render action: "new" }
        format.json { render json: @penn_reference_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /penn_reference_infos/1
  # PUT /penn_reference_infos/1.json
  def update
    @penn_reference_info = PennReferenceInfo.find(params[:id])

    respond_to do |format|
      if @penn_reference_info.update_attributes(params[:penn_reference_info])
        format.html { redirect_to @penn_reference_info, notice: 'Penn reference info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @penn_reference_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /penn_reference_infos/1
  # DELETE /penn_reference_infos/1.json
  def destroy
    @penn_reference_info = PennReferenceInfo.find(params[:id])
    @penn_reference_info.destroy

    respond_to do |format|
      format.html { redirect_to penn_reference_infos_url }
      format.json { head :no_content }
    end
  end
end
