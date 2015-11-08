# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery

  # Garantir autenticação do usuário antes de filtrar a action
  before_filter :authenticate_user!
  
  private 

  #Mudando o redirecionamento após o login
  def stored_location_for(resource)
    nil
  end

  def after_sign_in_path_for(resource)
    if resource.level == 1 #Verifica se o usuário é administrador(coordenador)
      root_path # Redireciona para a dashboard de admin
    else
      '/estoque' # Redireciona para página inicial do sistema
    end
  end 

  #Mudando o redirecionamento após o logout
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
