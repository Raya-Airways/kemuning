class PagesController < ApplicationController

  def home
    @document_count = ActiveStorage::Attachment.where(name: "document").count
  end

  def documents
    @documents = ActiveStorage::Attachment.where(name: "document")
  end


  def dashboard
  end

  def about
  end

end
