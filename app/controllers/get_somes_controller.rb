class GetSomesController < ApplicationController
  before_action :set_get_some, only: %i[ show edit update destroy ]

  # GET /get_somes or /get_somes.json
  def index
    @get_somes = GetSome.all
  end

  # GET /get_somes/1 or /get_somes/1.json
  def show
  end

  # GET /get_somes/new
  def new
    @get_some = GetSome.new
  end

  # GET /get_somes/1/edit
  def edit
  end

  # POST /get_somes or /get_somes.json
  def create
    @get_some = GetSome.new(get_some_params)

    respond_to do |format|
      if @get_some.save
        format.html { redirect_to @get_some, notice: "Get some was successfully created." }
        format.json { render :show, status: :created, location: @get_some }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @get_some.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /get_somes/1 or /get_somes/1.json
  def update
    respond_to do |format|
      if @get_some.update(get_some_params)
        format.html { redirect_to @get_some, notice: "Get some was successfully updated." }
        format.json { render :show, status: :ok, location: @get_some }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @get_some.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /get_somes/1 or /get_somes/1.json
  def destroy
    @get_some.destroy
    respond_to do |format|
      format.html { redirect_to get_somes_url, notice: "Get some was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_get_some
      @get_some = GetSome.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def get_some_params
      params.fetch(:get_some, {})
    end
end
