using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Protus.Data.Entities
{
    public class Challenge
    {

        public Challenge()
        {
            ChallengeOptions = new List<ChallengeOption>();
        }


        public int Id { get; set; }

        public string Title { get; set; }
        public string Description { get; set; }

        public string Code { get; set; }

        public int? TopicId { get; set; }

        [ForeignKey("TopicId")]
        public Topic Topic { get; set; }

        public ICollection<ChallengeOption> ChallengeOptions { get; set; }


    }
}
