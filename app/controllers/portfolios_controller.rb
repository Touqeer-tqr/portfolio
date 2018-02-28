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
    p '*'*100
    p UserMailer.send_email(params).deliver_later
  end

end