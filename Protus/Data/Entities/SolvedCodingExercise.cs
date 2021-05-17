using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Protus.Data.Entities
{
    public class SolvedCodingExercise
    {
        public int Id { get; set; }
        public string UserId { get; set; }
        public int ExerciseId { get; set; }
        public string Code { get; set; }
    }
}
