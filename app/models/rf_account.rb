class RfAccount < ApplicationRecord
    self.table_name = "tbl_rfaccount"
  
    alias_attribute :login, :id
    alias_attribute :senha, :password
    alias_attribute :birthdate, :birthdate
  
    attr_accessor :login, :senha, :birthdate
  
    before_validation :set_defaults
  
    private
  
    def set_defaults
      self.accounttype ||= 0
      self.birthdate ||= Date.today
    end
  end
  