class PrincipalsController < ApplicationController
  before_action :set_principal, only: [:show, :update, :destroy]

  # GET /principals
  def index
    @principals = Principal.all

    render json: @principals
  end

  # GET /principals/1
  def show
    render json: @principal
  end

  # POST /principals
  def create
    @principal = Principal.new(principal_params)

    if @principal.save
      render json: @principal, status: :created, location: @principal
    else
      render json: @principal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /principals/1
  def update
    if @principal.update(principal_params)
      render json: @principal
    else
      render json: @principal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /principals/1
  def destroy
    @principal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_principal
      @principal = Principal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def principal_params
      params.require(:principal).permit(:name, :description)
    end
end
