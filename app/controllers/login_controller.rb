
class LoginController < ApplicationController
  def index 
    @user = User.new
  end

  def create

    #@user = User.where("startnumber = ? and year_of_birth = ?", user_params[:startnumber], user_params[:year_of_birth]).first
    user = User.find_by_startnumber user_params[:startnumber]

    if user && user.year_of_birth == user_params[:year_of_birth]
      session[:user_id] = user.id
      redirect_to user_index_path
    else
      flash.now.alert = "Die ausgewählte Startnummer und das Geburtsdatum passen nicht zusammen"
      redirect_to login_index_path
    end
   


    # respond_to do |format|
    #   format.html
    #   format.pdf do
    #     dirname = SecureRandom.hex 16
    #     system "mkdir /tmp/export/#{dirname}"
    #     system "cp /tmp/urkunde.tex /tmp/export/#{dirname}/"
    #     system "/usr/local/texlive/2011/bin/x86_64-darwin/pdflatex --output-dir=/tmp/export/#{dirname}/ /tmp/export/#{dirname}/urkunde.tex > /dev/null"
    #     @urkunden_path = "/tmp/export/#{dirname}/urkunde.pdf"
        
    #     send_file @urkunden_path, filename: "urkunde.pdf", type: "application/pdf"
    #   end
    # end
  end

private
  def user_params
    params.require(:user).permit(:startnumber, :year_of_birth)
  end
end
