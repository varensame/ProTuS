using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Protus.Data.Entities
{
    public class CodingExercise
    {
        public int Id { get; set; }

        public string Title { get; set; }
        public string Description { get; set; }

        public string Code { get; set; }

        public int? TopicId { get; set; }

        [ForeignKey("TopicId")]
        public Topic Topic { get; set; }
    }
}
