using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class FormSubmissionFiles :BaseClass
    {
        public int FormSubmissionFileID { get; set; }

        public int FormSubmissionID { get; set; }
       
        public string FileName { get; set; }

        public string FileType { get; set; }

        public string FileURL { get; set; }
    }
}
