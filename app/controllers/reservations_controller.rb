class ReservationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]


  def index
  end

  def show
  end

  def new
  end

  def edit
  end
end
