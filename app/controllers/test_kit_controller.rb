class TestKitController < ApplicationController
  def create
    @kit = TestKit.new(TTNcode: params[:TTNcode], used: false)
    @Kit.save
  end
end
