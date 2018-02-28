class PortfoliosController < ApplicationController
  
  def index
  end

  def download_cv
    send_file(
      "#{Rails.root}/public/Touqeer_Ahmad_CV.pdf",
      filename: "Touqeer Ahmad CV.pdf",
      type: "application/pdf"
    )
  end

  def contact_me
    UserMailer.send_email(params).deliver_later
    render :layout => false 
  end

end