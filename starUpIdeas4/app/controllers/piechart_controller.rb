class PiechartController < ApplicationController
  def show
  	@ideasDistributions = IdeasDistribution.all
  end
end
