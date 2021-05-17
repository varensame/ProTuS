using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Protus.Data.Entities
{
    public class Topic
    {

        public Topic()
        {
            Challenges = new List<Challenge>();
            Examples = new List<Example>();
            CodingExercises = new List<CodingExercise>();
        }


        public int TopicId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }

        public int? CourseId { get; set; }

        [ForeignKey("CourseId")]
        public Course Course { get; set; }

        public ICollection<Challenge> Challenges { get; set; }
        public ICollection<Example> Examples { get; set; }
        public ICollection<CodingExercise> CodingExercises { get; set; }
    }
}
