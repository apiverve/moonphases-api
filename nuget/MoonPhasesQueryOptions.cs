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
        public string Today { get; set; }
    }
}
