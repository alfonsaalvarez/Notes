class SharedCollectionsController < ApplicationController
  before_action :set_shared_collection, only: [:show, :edit, :update, :destroy]

  # GET /shared_collections
  # GET /shared_collections.json
  def index
    @shared_collections = SharedCollection.all
  end

  # GET /shared_collections/1
  # GET /shared_collections/1.json
  def show
  end

  # GET /shared_collections/new
  def new
    @shared_collection = SharedCollection.new
  end

  # GET /shared_collections/1/edit
  def edit
  end

  # POST /shared_collections
  # POST /shared_collections.json
  def create
    @shared_collection = SharedCollection.new(shared_collection_params)
    @shared_collection.o_user_id = session[:user_id]
    @shared_collection.note_collection_id=params[:note_collection_id]

    respond_to do |format|
      if @shared_collection.save
        format.html { redirect_to @shared_collection, notice: 'Shared collection was successfully created.' }
        format.json { render :show, status: :created, location: @shared_collection }
      else
        format.html { render :new }
        format.json { render json: @shared_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shared_collections/1
  # PATCH/PUT /shared_collections/1.json
  def update
    respond_to do |format|
      if @shared_collection.update(shared_collection_params)
        format.html { redirect_to @shared_collection, notice: 'Shared collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @shared_collection }
      else
        format.html { render :edit }
        format.json { render json: @shared_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shared_collections/1
  # DELETE /shared_collections/1.json
  def destroy
    @shared_collection.destroy
    respond_to do |format|
      format.html { redirect_to shared_collections_url, notice: 'Shared collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shared_collection
      @shared_collection = SharedCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shared_collection_params
      params.require(:shared_collection).permit(:note_collection_id, :o_user_id, :d_user_id)
    end
end
