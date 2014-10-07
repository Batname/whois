class HomeController < ApplicationController
  def index
  end

  def show
  end

  def form
  end

  def result
    @url = params[:q]
    @data_url = Whois.whois(@url)
    @reg_email = /\b([a-zA-Z0-9._%+-]+)@([a-zA-Z0-9.-]+?)(\.[a-zA-Z.]*)\b/
    @administrative = 'Administrative Contacts:'
    @technical = 'Technical Contacts:'
  end
end
