class PresentationsController < ApplicationController 

  get "/presentations" do
    @presentations = Presentation.all
    erb :"presentations/index"
  end

end
