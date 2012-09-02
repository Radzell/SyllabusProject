class DocumentController < ApplicationController
  
  def index
    redirect_to root_path
  end
  def upload
    @document = Document.new
  end

   # GET /subscribers/new
  # GET /subscribers/new.json
  def new
    @document = Document.new

    respond_to do |format|
      flash[:notice] = 'Document was successfully created.'
      redirect_to root_path
    end
  end

   # GET /subscribers/1
  # GET /subscribers/1.json
  def show
    @doucment = Document.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @document }
    end
  end

end
