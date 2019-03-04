using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using EmployeeDataAccess;

namespace WebApiDemo.Controllers
{
    [Serializable]
    public class EmployeesController : ApiController
    {     
        
        public IEnumerable<Employee> GetEmployees()
        {
            using (ShilpiExamplesEntities entities = new ShilpiExamplesEntities())
            {
                return entities.Employees.ToList();
            }
        }

        public Employee GetEmployees(int id)
        {
            using (ShilpiExamplesEntities entities = new ShilpiExamplesEntities())
            {
                return entities.Employees.Where(x => x.ID == id).First();
            }
        }
    }
}
