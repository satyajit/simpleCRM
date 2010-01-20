class PasswordResetsController < ApplicationController
  before_filter :load_user_using_perishable_token, :only => [:edit,:update]
  before_filter :require_no_user

  def new
    render
  end
  
  def create
    @user=User.find_by_email(params[:email])
    if @user
      @user.deliver_password_reset_instructions!
      flash[:notice]="Please check your inbox for instructions to reset your password"
      redirect_to root_url
    else
      flash[:notice]="Could not find an account associated with this email, please recheck"
      render :action => :new
    end 
  end
  
  def edit
    render
  end 
  
  def update
    @user.password= params[:user][:password]
    @user.password_confirmation= params[:user][:password_confirmation]
    if @user.save
      flash[:notice]= "Password successfully updated"
      redirect_to account_url
    else
      render :action => :edit
    end
  end

  private
  def load_user_using_perishable_token
    @user=User.find_using_perishable_token(params[:id])
    unless @user
      flash[:notice] = "Could not locate your account try again"
    end
  end
end
