class ApplicationController < ActionController::Base

  def blank_add_form
    render({ :template => "/add.html.erb"})
  end

  def add_results
    
    @nr1  = params.fetch("user_1").to_f
    @nr2  = params.fetch("user_2").to_f
    @sum = @nr1 + @nr2

    render({ :template => "/addition_results.html.erb"})
  end

  

end
