using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
namespace BLL
{
    public class Bll
    {
        public List<string> RetornaEstadosTratados()
        {
            List<string> listaDosEstadosTratados = new List<string>();
            Dao classeDao = new Dao();
            listaDosEstadosTratados = classeDao.RetornaListaEstado().Distinct().ToList();
            return listaDosEstadosTratados;
        }
    }
}
