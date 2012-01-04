require 'job.rb'
require 'user.rb'

class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_user
  before_filter :set_var
  
  protected
  
  def add_breadcrumb name, url = ''
    @breadcrumbs ||= []
    url = eval(url) if url =~ /_path|_url|@/
    @breadcrumbs << [name, url]
  end
 
  def self.add_breadcrumb name, url, options = {}
    before_filter options do |controller|
      controller.send(:add_breadcrumb, name, url)
    end
  end
  
  private
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def set_var
    @most_popular_articles = Job.order("counter DESC").all(:limit => 4)
    @newest_articles = Job.order("created_at DESC").all(:limit => 4)
  end
end
