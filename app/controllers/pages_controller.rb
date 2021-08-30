class PagesController < ApplicationController

  def home
  end

  def documents
    @documents = ActiveStorage::Attachment.where(name: "document")
  end


  def dashboard
  end

  def about
  end

end
