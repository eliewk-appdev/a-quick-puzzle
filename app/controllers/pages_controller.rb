class PagesController < ApplicationController
  def puzzle
    @old_guesses = session.fetch(:user_guesses)
    #cookies.fetch("user_id")
    render({ :template => "pages/puzzle.html.erb" })
  end
  
  def write_cookie

    if session.fetch(:user_guesses) == nil
      old_guesses = []
    else
      old_guesses = session.fetch(:user_guesses)
    end 

    old_guesses.push(params)

    session.store(:user_guesses, old_guesses)

    

    # or reset_session 
    #session.store(:user_guesses, nil)

   #cookies.store(:first, params.fetch("first_num"))
   #cookies.store(:second, params.fetch("second_num"))
   #cookies.store(:third, params.fetch("third_num"))
   
   
   #@a.push(:first)

    redirect_to("/")
  end
end
