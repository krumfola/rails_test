class StaticPagesController < ApplicationController
	def welcome
		@math = 10*10
		@last_user_name = User.last.name
		@last_user_email = User.last.email

		@new_user = User.new
	end

	def create 
		puts "***************"
		puts params[:user]  #allows you to see what parameters arebeing passed
		puts "****************"
		@new_user = User.new (params[:user])

		if @new_user.save
			flash[:success] = "Welcome home"
			redirect_to root_url
		else 
			flash[:error] = "Fields missing"
			redirect_to root_url
		end
	end

	#No route matches {:action=>"create", :controller=>"static_pages"}
end


 # def create
 #    @client = Client.new(params[:client])
 #    if @client.save
 #      redirect_to @client
 #    else
 #      # This line overrides the default rendering behavior, which
 #      # would have been to render the "create" view.
 #      render :action => "new"
 #    end
 #  end
 # this is taken from ruby documentation