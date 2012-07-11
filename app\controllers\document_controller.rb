class DocumentController < ApplicationController
  def upload
  end

  def new
  end

  def show
    @document = Document.find([:id])
    send_file @document.document.path, :type => @document.document_content_type, :disposition => 'inline' 
  end
end
