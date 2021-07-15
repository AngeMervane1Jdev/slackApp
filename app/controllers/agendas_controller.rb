class AgendasController < ApplicationController
  # before_action :set_agenda, only: %i[show edit update destroy]

  def index
    @agendas = Agenda.all
  end

  def new
    @team = Team.friendly.find(params[:team_id])
    @agenda = Agenda.new
  end

  def create
    @agenda = current_user.agendas.build(title: params[:title])
    @agenda.team = Team.friendly.find(params[:team_id])
    current_user.keep_team_id = @agenda.team.id
    if current_user.save && @agenda.save
      redirect_to dashboard_url, notice: I18n.t('views.messages.create_agenda') 
    else
      render :new
    end
  end
  
  def destroy
    @agenda=Agenda.find(params[:id])
    @user=current_user
    #check Team Owner
    @team=Team.find(@agenda.team_id)
    if current_user.keep_team_id==@agenda.team.id || current_user.id=@team.owner_id

      #getting articles concerned
      @articles=@agenda.articles

      #destroying articles
      @articles.each do |article|
        Article.destroy(article.id)
      end

      #getting users
      @team_members_assign=Assign.where(team_id:@agenda.team_id)
      #then send them an email
      @team_members_assign.each do |member| 
        @myUser=User.find(member.user_id)
        AgendasMailler.with(user: @user,agenda:@agenda,member:@myUser).delete_agenda_email.deliver
       end

      #delete agenda
      @agenda.destroy
      redirect_to user_path
    end
  end


  
  private

  def set_agenda
    @agenda = Agenda.find(params[:id])
  end

  def agenda_params
    params.fetch(:agenda, {}).permit %i[title description]
  end
end
