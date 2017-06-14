class PresentationsController < ApplicationController 

  get "/presentations" do
    erb :"presentations/index"
  end

end
