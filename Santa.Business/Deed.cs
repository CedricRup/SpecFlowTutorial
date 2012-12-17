using System;

namespace Santa.Business
{
    public class Deed
    {
        public string Title { get; set; }
        public Kind Kind { get; set; }
        public int Force { get; set; }
        public DateTime Date { get; set; }

        public int GetKindnessFactor()
        {
            return Force*(Kind == Kind.Good ? 1 : -1);
        }

        public int AccountableYear
        {
            get
            {
                var year = Date.Year;
                return Date < new DateTime(year, 12, 25) ? year : ++year;
            }
        }

    }
}