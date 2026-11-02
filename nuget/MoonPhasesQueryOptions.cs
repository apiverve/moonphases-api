using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.MoonPhases
{
    /// <summary>
    /// Query options for the Moon Phases API
    /// </summary>
    public class MoonPhasesQueryOptions
    {
        /// <summary>
        /// Get the moon phase for today
        /// </summary>
        [JsonProperty("today")]
        public bool? Today { get; set; }

        /// <summary>
        /// Include the dates of the next new moon, first quarter and last quarter and the days to each
        /// </summary>
        [JsonProperty("phases")]
        public bool? Phases { get; set; }
    }
}
