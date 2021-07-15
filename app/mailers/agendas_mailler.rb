class AgendasMailler < ApplicationMailer
    def delete_agenda_email
      @user = params[:user]
      @agenda=params[:agenda]
      @member=params[:member]
      mail(to: @member.email, subject: "Agenda Notification")
    end
  end
  