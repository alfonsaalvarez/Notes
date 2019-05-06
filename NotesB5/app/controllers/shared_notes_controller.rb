class SharedNotesController < ApplicationController
  before_action :set_shared_note, only: [:show, :edit, :update, :destroy]

  # GET /shared_notes
  # GET /shared_notes.json
  def index
    @shared_notes = SharedNote.all
  end

  # GET /shared_notes/1
  # GET /shared_notes/1.json
  def show
  end

  # GET /shared_notes/new
  def new
    @shared_note = SharedNote.new
  end

  # GET /shared_notes/1/edit
  def edit
  end

  # POST /shared_notes
  # POST /shared_notes.json
  def create
    @shared_note = SharedNote.new(shared_note_params)
    @shared_note.o_user_id = session[:user_id]
    byebug
    @shared_note.d_user_id = User.find_by(name: params[:d_user_name])
    @shared_note.note_id=params[:note_id]
    #byebug

    respond_to do |format|
      if @shared_note.save
        format.html { redirect_to @shared_note, notice: 'Note was successfully shared.' }
        format.json { render :show, status: :created, location: @shared_note }
      else
        format.html { render :new }
        format.json { render json: @shared_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shared_notes/1
  # PATCH/PUT /shared_notes/1.json
  def update
    respond_to do |format|
      if @shared_note.update(shared_note_params)
        format.html { redirect_to @shared_note, notice: 'Shared note was successfully updated.' }
        format.json { render :show, status: :ok, location: @shared_note }
      else
        format.html { render :edit }
        format.json { render json: @shared_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shared_notes/1
  # DELETE /shared_notes/1.json
  def destroy
    @shared_note.destroy
    respond_to do |format|
      format.html { redirect_to shared_notes_url, notice: 'This note is no longer being shared.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shared_note
      @shared_note = SharedNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shared_note_params
      params.require(:shared_note).permit(:note_id, :o_user_id, :d_user_id)
    end
end
