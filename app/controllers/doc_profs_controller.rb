class DocProfsController < ApplicationController
  before_action :set_doc_prof, only: [:show, :edit, :update, :destroy]

  # GET /doc_profs
  # GET /doc_profs.json
  def index
    @doc_profs = DocProf.all
  end

  # GET /doc_profs/1
  # GET /doc_profs/1.json
  def show
  end

  # GET /doc_profs/new
  def new
    @doc_prof = DocProf.new
  end

  # GET /doc_profs/1/edit
  def edit
  end

  # POST /doc_profs
  # POST /doc_profs.json
  def create
    @doc_prof = DocProf.new(doc_prof_params)

    respond_to do |format|
      if @doc_prof.save
        format.html { redirect_to @doc_prof, notice: 'Doc prof was successfully created.' }
        format.json { render :show, status: :created, location: @doc_prof }
      else
        format.html { render :new }
        format.json { render json: @doc_prof.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doc_profs/1
  # PATCH/PUT /doc_profs/1.json
  def update
    respond_to do |format|
      if @doc_prof.update(doc_prof_params)
        format.html { redirect_to @doc_prof, notice: 'Doc prof was successfully updated.' }
        format.json { render :show, status: :ok, location: @doc_prof }
      else
        format.html { render :edit }
        format.json { render json: @doc_prof.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doc_profs/1
  # DELETE /doc_profs/1.json
  def destroy
    @doc_prof.destroy
    respond_to do |format|
      format.html { redirect_to doc_profs_url, notice: 'Doc prof was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doc_prof
      @doc_prof = DocProf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doc_prof_params
      params.require(:doc_prof).permit(:activite_id, :level_id, :domaines, :materiels, :prerequis, :competences, :organisation, :aide)
    end
end
