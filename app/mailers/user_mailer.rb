class UserMailer < ApplicationMailer

  default from: "rhysdiab@60minutetrainingweek.com"

def welcome(user)
  @user = user #@user will be whatever user we pass in to the 'welcome' method
  @name = name
  mail( :to => @user.email, :subject => "Just wanted to say hi :)", :cc => "rhysdiab@60minutetrainingweek.com" )

  end
end
