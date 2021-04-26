using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Protus.Data.Entities
{
    public class SolvedChallenge
    {
        public int Id { get; set; }
        public string UserId { get; set; }
        public int ChallengeId { get; set; }
    }
}
