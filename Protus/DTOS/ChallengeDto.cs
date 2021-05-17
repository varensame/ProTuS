using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Protus.DTOS
{
    public class ChallengeDto
    {
        [Required]
        public string Title { get; set; }
        [Required]
        public string Description { get; set; }
        public string Code { get; set; }
        public int TopicId { get;  set; }
        public string OptionsString { get; set; }
        public IEnumerable<ChallengeOptionDto> ChallengeOptions { get; set; }
        public int Id { get; set; }
    }
    public class ExampleDto
    {
        [Required]
        public string Title { get; set; }
        [Required]
        public string Description { get; set; }
        public string Code { get; set; }
        public int TopicId { get; set; }
      
        public int Id { get; set; }
    }


    public class ChallengeOptionDto
    {
        public string Option { get; set; }
        public bool IsAnswer { get; set; }


    }



}
