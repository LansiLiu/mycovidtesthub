class TestResultsController < ApplicationController
  # before_action :logged_in? 
  def index
    @test_results = TestResult.all
  end

  def new
    @test_result = TestResult.new
  end

  def create
    @test_result= TestResult.new(test_result_params)
    if @test_result.save
      flash[:success] = "Test result successfully uploaded."
      @tk = TestKit.find_by(TTNcode: @test_result.ttn)
      @tk.used = true
      @tk.save
    else
      render 'new'
    end
 end

  def show
  end
 
private 

	def test_result_params
		params.require(:test_result).permit(:fullname, :email, :age, :gender, :postcode, :ttn, :result)
	end
	
end
