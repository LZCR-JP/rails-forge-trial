class PagesController < ApplicationController
  def home
  end
  def about
  end

  def contact
    @members = [ "lance", "lucas", "nepo", "jonny" ]

    search = params[:member]

    if search
      @members = @members.select do |member|
      member.start_with? search.downcase
      end
    end
  end
end
