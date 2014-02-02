
class UserController < ApplicationController

  def index
    @user = User.find current_user.id
  end

  def urkunde
    respond_to do |format|
      @user = User.find current_user.id

      tmp_path = "/tmp/#{SecureRandom.hex(16)}"
      system "mkdir #{tmp_path}"

      if 600 == @user.result.competition 
        @strecke = 'Kr\"ollwitzer Br\"ucke'
      else
        @strecke = "Schleuse Gimritz"
      end

      tpl_urkunde = File.open("#{Rails.root}/app/views/user/urkunde.tex.erb").read
      erb = ERB.new tpl_urkunde
      File.open("#{tmp_path}/urkunde.tex","w+") do |file|
        file.write erb.result(binding)
      end

      system "pdflatex --output-dir=#{tmp_path} #{tmp_path}/urkunde.tex"

      format.pdf do 
        send_file "#{tmp_path}/urkunde.pdf", 
          type: "application/pdf"
      end
    end
  end
end
