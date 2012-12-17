using System.Collections.Generic;
using System.Linq;

namespace Santa.Business
{
    public class KindnessCalculator
    {
        public static int Calculate(IEnumerable<Deed> deeds, int asOfChristmas)
        {
            return deeds.Where(d=>d.AccountableYear == asOfChristmas).Sum(d => d.GetKindnessFactor());
        }
    }
}