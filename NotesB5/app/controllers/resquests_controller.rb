class ResquestsController < ApplicationController
  before_action :set_resquest, only: [:show, :edit, :update, :destroy]

  # GET /resquests
  # GET /resquests.json
  def index
    @resquests = Resquest.all
  end

  # GET /resquests/1
  # GET /resquests/1.json
  def show
  end

  # GET /resquests/new
  def new
    @resquest = Resquest.new
  end

  # GET /resquests/1/edit
  def edit
  end

  # POST /resquests
  # POST /resquests.json
  def create
    @resquest = Resquest.new(resquest_params)
    @resquest.user1=session[:user]

    respond_to do |format|
      if @resquest.save
        format.html { redirect_to @resquest, notice: 'Resquest was successfully created.' }
        format.json { render :show, status: :created, location: @resquest }
      else
        format.html { render :new }
        format.json { render json: @resquest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resquests/1
  # PATCH/PUT /resquests/1.json
  def update
    respond_to do |format|
      if @resquest.update(resquest_params)
        format.html { redirect_to @resquest, notice: 'Resquest was successfully updated.' }
        format.json { render :show, status: :ok, location: @resquest }
      else
        format.html { render :edit }
        format.json { render json: @resquest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resquests/1
  # DELETE /resquests/1.json
  def destroy
    @resquest.destroy
    respond_to do |format|
      format.html { redirect_to resquests_url, notice: 'Resquest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resquest
      @resquest = Resquest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resquest_params
      params.require(:resquest).permit(:userO, :userD, :accepted)
    end
end
