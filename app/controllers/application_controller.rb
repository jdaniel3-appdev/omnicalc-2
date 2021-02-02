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

  def blank_subtract_form
    render({ :template => "/subtract.html.erb"})
  end
  
  def subtract_results
    
    @nr1  = params.fetch("user_1").to_f
    @nr2  = params.fetch("user_2").to_f
    @difference = @nr2 - @nr1

    render({ :template => "/subtraction_results.html.erb"})
  end

  def blank_multiply_form
    render({ :template => "/multiply.html.erb"})
  end
  
  def multiply_results
    
    @nr1  = params.fetch("user_1").to_f
    @nr2  = params.fetch("user_2").to_f
    @product = @nr2 * @nr1

    render({ :template => "/multiplication_results.html.erb"})
  end

  def blank_divide_form
    render({ :template => "/divide.html.erb"})
  end
  
  def divide_results
    
    @nr1  = params.fetch("user_1").to_f.round(9)
    @nr2  = params.fetch("user_2").to_f.round(9)
    @quotient = @nr1 / @nr2

    render({ :template => "/division_results.html.erb"})
  end

end
