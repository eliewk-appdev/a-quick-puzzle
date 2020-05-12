class PagesController < ApplicationController
  def puzzle
    #cookies.fetch("user_id")
    render({ :template => "pages/puzzle.html.erb" })
  end
  
  def write_cookie


   session.store(:first, params.fetch("first_num"))
   session.store(:second, params.fetch("second_num"))
   session.store(:third, params.fetch("third_num"))
   
    redirect_to("/")
  end
end
