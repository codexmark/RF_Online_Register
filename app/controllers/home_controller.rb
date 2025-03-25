require 'socket'

class HomeController < ApplicationController
  def index
    host = '192.168.1.10' # Substitua pelo IP ou hostname do servidor

    @login_server_online = port_open?(host, 10001)
    @world_server_online = port_open?(host, 27780)
  end

  private

  def port_open?(host, port)
    begin
      Socket.tcp(host, port, connect_timeout: 2) {} # Timeout de 2 segundos
      true
    rescue Errno::ECONNREFUSED, Errno::ETIMEDOUT, SocketError
      false
    end
  end
end
