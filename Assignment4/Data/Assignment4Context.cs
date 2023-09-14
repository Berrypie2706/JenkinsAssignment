using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Assignment4.Models;

namespace Assignment4.Data
{
    public class Assignment4Context : DbContext
    {
        public Assignment4Context (DbContextOptions<Assignment4Context> options)
            : base(options)
        {
        }

        public DbSet<Assignment4.Models.Movies> Movies { get; set; } = default!;
    }
}
