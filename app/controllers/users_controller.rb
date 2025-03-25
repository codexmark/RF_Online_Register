class UsersController < ApplicationController
    def new
      @rf_account = RfAccount.new
    end
  
    def create
      begin
        login = params[:rf_account][:login]
        senha = params[:rf_account][:senha]
        birthdate = Date.parse(params[:rf_account][:birthdate]).strftime('%-d/%-m/%Y')
  
        sql = <<-SQL
          INSERT INTO RF_User.dbo.tbl_rfaccount (id, password, accounttype, birthdate)
          VALUES (CONVERT(BINARY, '#{login}'), CONVERT(BINARY, '#{senha}'), '0', '#{birthdate}');
  
          INSERT INTO BILLING.dbo.tbl_UserStatus (id, Status, Cash, PremiDay)
          SELECT id, 1, 0, 0
          FROM RF_USER.dbo.tbl_rfaccount AS src
          WHERE NOT EXISTS (
              SELECT 1 FROM BILLING.dbo.tbl_UserStatus AS dest
              WHERE dest.id = src.id
          );
  
          UPDATE RF_USER.dbo.tbl_rfaccount 
          SET accounttype = 1;
        SQL
  
        ActiveRecord::Base.connection.execute(sql)
  
        flash[:notice] = "Usuário cadastrado com sucesso!"
        redirect_to root_path  # ← Agora redireciona para a home
      rescue => e
        flash[:alert] = "Erro ao cadastrar usuário: #{e.message}"
        redirect_to new_user_path
      end
    end
  end
  