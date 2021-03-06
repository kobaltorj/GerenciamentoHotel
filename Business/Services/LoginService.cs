﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Services
{
    public class LoginService
    {
        public bool ValidarUsuario(string login, string senha)
        {
            StringBuilder query = new StringBuilder();
            var session = new DBSession();

            query.Append(" SELECT U.LOGIN,");
            query.Append("       U.SENHA");
            query.Append(" FROM USUARIO U");
            query.Append(" WHERE (1-1)");
            query.Append(" AND U.ATIVO = 'S'");
            query.AppendFormat(" AND U.LOGIN = '{0}'", login);
            query.AppendFormat(" AND U.SENHA = '{0}'", senha);

            Query executar = session.CreateQuery(query.ToString());
            IDataReader reader = executar.ExecuteQuery();

            using (reader)
            {
                if (reader.Read())
                { 
                if(!string.IsNullOrEmpty(reader["LOGIN"].ToString()))
                    return true;
                }
                return false;
            }
        }
    }
}
