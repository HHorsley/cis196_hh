class ApplicationController < ActionController::Base
   protect_from_forgery

   before_filter :authenticate_user!, :except => [:home, :new, :index, :about]
#   before_filter :check_user_logged_in!, :except => [:home]

#   private
#     def check_admin_logged_in! # admin must be logged in
#         authenticate_admin!
#     end
#     def check_user_logged_in! # if admin is not logged in, user must be logged in
#       if !admin_signed_in?
#         authenticate_user!
#       end
#     end   
 end
