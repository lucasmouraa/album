class InicialController < ApplicationController
  def index
@users = User.order(:nome)
  end
end
