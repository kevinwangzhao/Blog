class Admin::AccessController < ApplicationController

  layout "admin/admin_front_page"
  before_filter :confirm_logged_in, :except => [:login, :attempt_login, :logout]
  
  before_filter :confirm_logged_in_loginpage, :only => [:login]

  def index
    munu
    render('menu')
  end

  def menu
  end

  def login
    #login form
  end
  
  def attempt_login
    authorized_user = Admin::User.authenticate(params[:username], params[:password])
    if authorized_user
      session[:user_id] = authorized_user.id
      session[:username] = authorized_user.username
      flash[:notice] = "You are logged in. Welcome here #{authorized_user.username}"
      redirect_to(:action => 'menu')
    else
      flash[:notice] = "Invalid username/password conbination."
      redirect_to(:action => 'login')
    end
  end
  
  def logout
    session[:user_id] = nil
    session[:username] = nil
    flash[:notice] = "You have been logged out. Click here to "
    redirect_to(:action => "login")
  end
  
  private
  
  def confirm_logged_in_loginpage
    unless session[:user_id]
      return false
    else
      flash[:notice] = "You have been logged in."
      redirect_to(:controller=>"access", :action=>"menu")
      return true
    end
  end

end
