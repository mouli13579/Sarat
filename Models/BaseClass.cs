using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace Models
{
    public class BaseClass
    {
        public bool? isDeleted { get; set; }

        //[EnumDataType(typeof(ActionOptions))]
        public ActionOptions Action { get; set; }
    }

    public enum ActionOptions
    {
        NoChange,
        Insert,
        Update,
        Delete
    }
}