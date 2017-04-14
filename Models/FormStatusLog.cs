using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class FormStatusLog : BaseClass
    {
        public int FormStatusLogID { get; set; }

        public int FormSubmissionID { get; set; }

        public int FormStatusID { get; set; }

        public string FormStatusName { get; set; }

        public string FormStatusCode { get; set; }

        public DateTime CreatedDate { get; set; }

        public DateTime UpdatedDate { get; set; }

    }
}
