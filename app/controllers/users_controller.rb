class UsersController < ApplicationController
 #1. Create
 def new

  # Form for the new USER
  @user = User.new
end

def create
 
  # Create a new user 
  @user = User.create user_params
  
  # New addition to save user - come back and do this

  if @user.persisted?
  session[:user_id] = @user.id #login automatically
  redirect_to user_path(@user.id) #go to user profile pages
  else
    render :new
  end
 
  # Uploading a new picture to each user
  if params[:user][:profile_picture].present?
    # Upload to cloudinary
    response = Cloudinary::Uploader.upload params[:user][:profile_picture]
    @user.profile_picture = response["public_id"]
  end
end

#2. Read

def index

  # Shows all users register
  @user = User.all
  
end

def show
  # Shows all Users and all work assoicated with each user.
  # Information used in a loop
  @user = User.find params[:id]

end

#3 Update

def edit
  # Below is used to extract current user information to edit it using a partial form
  @user = User.find params[:id]

  # Below ensures that edits cant be done by anyone but current user who owns the account
  if @user.id != @current_user.id
    redirect_to login_path
  end
end

def update
  # Below is used to save the updates created when editing user account
  @user = User.find params[:id]

  # Below ensures that edits cant be done by anyone but current user who owns the account
  if @user.id != @current_user.id
    redirect_to login_path
    return
  end

  # Once update completed redirects users to their account
  if @user.update user_params
    redirect_to @user
   else
    render :edit
  end

end

# 4. Destroy
# Below is used to delete accounts
def destroy
  User.destroy params[:id]
  redirect_to sign_up_path
end

private
def user_params
params.require(:user).permit(:name, :email, :password,:password_confirmation)
end
end