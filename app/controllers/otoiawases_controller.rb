class OtoiawasesController < ApplicationController
  before_action :set_otoiawase, only: [:show, :edit, :update, :destroy]

  # GET /otoiawases
  # GET /otoiawases.json
  def index
    @otoiawases = Otoiawase.all
  end

  # GET /otoiawases/1
  # GET /otoiawases/1.json
  def show
  end

  # GET /otoiawases/new
  def new
    @otoiawase = Otoiawase.new
  end

  # GET /otoiawases/1/edit
  def edit
  end

  # POST /otoiawases
  # POST /otoiawases.json
  def create
    @otoiawase = Otoiawase.new(otoiawase_params)

    respond_to do |format|
      if @otoiawase.save
        format.html { redirect_to @otoiawase, notice: 'Otoiawase was successfully created.' }
        format.json { render :show, status: :created, location: @otoiawase }
      else
        format.html { render :new }
        format.json { render json: @otoiawase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /otoiawases/1
  # PATCH/PUT /otoiawases/1.json
  def update
    respond_to do |format|
      if @otoiawase.update(otoiawase_params)
        format.html { redirect_to @otoiawase, notice: 'Otoiawase was successfully updated.' }
        format.json { render :show, status: :ok, location: @otoiawase }
      else
        format.html { render :edit }
        format.json { render json: @otoiawase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /otoiawases/1
  # DELETE /otoiawases/1.json
  def destroy
    @otoiawase.destroy
    respond_to do |format|
      format.html { redirect_to otoiawases_url, notice: 'Otoiawase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_otoiawase
      @otoiawase = Otoiawase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def otoiawase_params
      params.fetch(:otoiawase, {})
    end
end
