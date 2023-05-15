class Api::V1::CohortsController < ApplicationController
  def show
    cohort = Cohort.find(params[:id])
    require 'pry'; binding.pry
  end
end