using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace APIServices
{
    public class ValuesController : ApiController
    {
        [HttpGet]
        public DataTable GetDashboardItems()
        {
            DataTable ret = new DataTable();

            ret = new DataLayer.Dashboard().GetDashboardItemsCount();

            return ret;
        }


    }
}