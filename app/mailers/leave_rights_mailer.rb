class LeaveRightsMailer < ApplicationMailer
    def leave_rights_email
        @the_happy = params[:the_happy]
        @team=params[:team]
        mail(to: @the_happy.email, subject: "Agenda Notification")
      end
end
