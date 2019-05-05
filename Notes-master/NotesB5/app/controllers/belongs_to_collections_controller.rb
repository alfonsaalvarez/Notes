class BelongsToCollectionsController < ApplicationController
  before_action :set_belongs_to_collection, only: [:show, :edit, :update, :destroy]

  # GET /belongs_to_collections
  # GET /belongs_to_collections.json
  def index
    @belongs_to_collections = BelongsToCollection.all
  end

  # GET /belongs_to_collections/1
  # GET /belongs_to_collections/1.json
  def show
  end

  # GET /belongs_to_collections/new
  def new
    @belongs_to_collection = BelongsToCollection.new
  end

  # GET /belongs_to_collections/1/edit
  def edit
  end

  # POST /belongs_to_collections
  # POST /belongs_to_collections.json
  def create
    @belongs_to_collection = BelongsToCollection.new(belongs_to_collection_params)

    respond_to do |format|
      if @belongs_to_collection.save
        format.html { redirect_to @belongs_to_collection, notice: 'Belongs to collection was successfully created.' }
        format.json { render :show, status: :created, location: @belongs_to_collection }
      else
        format.html { render :new }
        format.json { render json: @belongs_to_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /belongs_to_collections/1
  # PATCH/PUT /belongs_to_collections/1.json
  def update
    respond_to do |format|
      if @belongs_to_collection.update(belongs_to_collection_params)
        format.html { redirect_to @belongs_to_collection, notice: 'Belongs to collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @belongs_to_collection }
      else
        format.html { render :edit }
        format.json { render json: @belongs_to_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /belongs_to_collections/1
  # DELETE /belongs_to_collections/1.json
  def destroy
    @belongs_to_collection.destroy
    respond_to do |format|
      format.html { redirect_to belongs_to_collections_url, notice: 'Belongs to collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_belongs_to_collection
      @belongs_to_collection = BelongsToCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def belongs_to_collection_params
      #params.fetch(:belongs_to_collection, {})
      params.permit(:note_id, :col_id)
    end
end
