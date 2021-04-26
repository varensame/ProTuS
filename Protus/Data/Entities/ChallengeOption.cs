using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Protus.Data.Entities
{
    public class ChallengeOption
    {
        public int Id { get; set; }
        public string Option { get; set; }

        public bool IsAnswer { get; set; }

        public int? ChallengeId { get; set; }

        [ForeignKey("ChallengeId")]
        public Challenge Challenge { get; set; }




    }
}
