# app/models/user_status.rb
class UserStatus < ApplicationRecord
    self.table_name = 'tbl_UserStatus'
    self.primary_key = 'id'
    
    # Usa a conexão definida para o banco BILLING
    establish_connection :billing
  end
  