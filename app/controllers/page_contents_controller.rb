class PageContentsController < ApplicationController
  before_action :set_page_content, only: [:show, :update, :destroy]

  # GET /page_contents
  def index
    @page_contents = PageContent.all

    render json: @page_contents
  end

  # GET /page_contents/1
  def show
    render json: @page_content
  end

  # POST /page_contents
  # def create
  #   @page_content = PageContent.new(page_content_params)

  #   if @page_content.save
  #     render json: @page_content, status: :created, location: @page_content
  #   else
  #     render json: @page_content.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /page_contents/1
  # def update
  #   if @page_content.update(page_content_params)
  #     render json: @page_content
  #   else
  #     render json: @page_content.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /page_contents/1
  def destroy
    @page_content.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page_content
      @page_content = PageContent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def page_content_params
      params.require(:page_content).permit(:tag, :content, :page_id_id)
    end
end
