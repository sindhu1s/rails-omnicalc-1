class MathsController<ApplicationController

  def square_results
    number = params[:number].to_f
    @the_result = number * number
    render({:template => "maths_template/square_results"})
  end

  def square_root_results
    number = params[:number].to_f
    @the_result = Math.sqrt(number)
    render({:template => "maths_template/square_root_results"})
  end

  def payment_results
    apr = params[:user_apr].to_f / 100
    years = params[:user_years].to_f *12
    principal = params.[:user_pv].to_f
    r = @apr/12  
    n= params[user_years]to.i *12
    @payment = ((r*principal)/((1-(1+r)**(-n)))).round (2)
    render({ :template => "maths_template/payment_results"})   
  end
  
  def random_results
    min = params[:user_min].to_f
    max = params[:user_max].to_f
    @random_number = rand(min..max)
    render({ :template => "maths_template/random_results"})
  end

end 
    