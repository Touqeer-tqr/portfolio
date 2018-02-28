class UserMailer < ApplicationMailer

	def send_email(params)
		@name = params[:name]
		@email_address = params[:email]
		@message = params[:message]
    mail(to: 'tqr093@gmail.com', subject: params[:subject])
  end
end
