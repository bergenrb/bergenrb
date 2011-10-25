class Admin::PresentationsController < ApplicationController
  http_basic_authenticate_with name: BostonRuby::ADMIN_NAME, password: BostonRuby::ADMIN_PASSWORD
  def index
    @presentations = Presentation.all_or_by_month(:page => params[:page], :per => params[:per], :month => params[:month])
    @grouped_presentations = @presentations.group_by_date
  end

  def new
    @presentation = Presentation.new
    @submit_url = admin_presentations_path
    @method = :post
  end

  def create
    @submit_url = admin_presentations_path
    @method = :post
    @presentation = Presentation.new(params[:presentation])

    respond_to do |format|
      if @presentation.save
        format.html { redirect_to admin_presentations_path }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def edit
    @presentation = Presentation.find_by_cached_slug(params[:id])
    @submit_url = admin_presentation_path(@presentation)
    @method = :put
  end

  def update
    @presentation = Presentation.find_by_cached_slug(params[:id])
    @submit_url = admin_presentation_path(@presentation)
    @method = :put

    respond_to do |format|
      if @presentation.update_attributes(params[:presentation])
        format.html { redirect_to admin_presentations_path }
      else
        format.html { render :action => "edit" }
      end
    end
  end


  def destroy
    @presentation = Presentation.find_by_cached_slug(params[:id])

    respond_to do |format|
      if @presentation.destroy
        format.html { redirect_to admin_presentations_path }
      end
    end
  end
end
