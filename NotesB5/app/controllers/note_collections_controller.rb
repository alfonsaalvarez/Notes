class NoteCollectionsController < ApplicationController
  before_action :set_note_collection, only: [:show, :edit, :update, :destroy]

  # GET /note_collections
  # GET /note_collections.json
  def index
    @note_collections = NoteCollection.all
  end

  # GET /note_collections/1
  # GET /note_collections/1.json
  def show
  end

  # GET /note_collections/new
  def new
    @note_collection = NoteCollection.new
  end

  # GET /note_collections/1/edit
  def edit
  end

  # POST /note_collections
  # POST /note_collections.json
  def create
    @note_collection = NoteCollection.new(note_collection_params)

    respond_to do |format|
      if @note_collection.save
        format.html { redirect_to @note_collection, notice: 'Note collection was successfully created.' }
        format.json { render :show, status: :created, location: @note_collection }
      else
        format.html { render :new }
        format.json { render json: @note_collection.errors, status: :unprocessable_entity }
      end
    end
  end



  # PATCH/PUT /note_collections/1
  # PATCH/PUT /note_collections/1.json
  def update
    respond_to do |format|
      if @note_collection.update(note_collection_params)
        format.html { redirect_to @note_collection, notice: 'Note collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @note_collection }
      else
        format.html { render :edit }
        format.json { render json: @note_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /note_collections/1
  # DELETE /note_collections/1.json
  def destroy
    @note_collection.destroy
    respond_to do |format|
      format.html { redirect_to note_collections_url, notice: 'Note collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note_collection
      @note_collection = NoteCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_collection_params
      params.require(:note_collection).permit(:name, :user_id, :note_id)
    end
end
