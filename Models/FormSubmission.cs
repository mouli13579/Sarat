using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class FormSubmission : BaseClass
    {
        public int UserID { get; set; }
        public string Prefix { get; set; }
        public string CorrespondingAuthor { get; set; }
        public string Email { get; set; }
        public string Title { get; set; }
        public string Abstraction { get; set; }
        public int Category { get; set; }
        public string Keywords { get; set; }
        public List<FormSubmissionFiles> UploadFiles { get; set; }
    }

   
}
