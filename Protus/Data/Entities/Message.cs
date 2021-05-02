using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Protus.Data.Entities
{
    public class Message
    {

        public int Id { get; set; }
        [Required]
        public string Text { get; set; }
        [Display(Name = "Recipient")]
        public string MessageTo { get; set; }
        public string MessageFrom { get; set; }
        public DateTime MessageDate { get; set; }

    }
}
