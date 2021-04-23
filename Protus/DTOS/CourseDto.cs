using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Protus.DTOS
{
    public class CourseDto
    {
        [Required]
        public string Name { get; set; }
        public int Id { get; set; }
    }
}
