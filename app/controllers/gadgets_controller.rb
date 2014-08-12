class GadgetsController < ApplicationController
  before_action :authenticate_user!, notice: 'hi'

  def index
  end
end
