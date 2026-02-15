using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.CommentGenerator
{
    /// <summary>
    /// Query options for the Comment Generator API
    /// </summary>
    public class CommentGeneratorQueryOptions
    {
        /// <summary>
        /// The mode of comment generation
        /// </summary>
        [JsonProperty("mode")]
        public string Mode { get; set; }

        /// <summary>
        /// The tone of the comments
        /// </summary>
        [JsonProperty("tone")]
        public string Tone { get; set; }

        /// <summary>
        /// The number of comments to generate (max 10)
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }

        /// <summary>
        /// Whether to include emojis in the comments
        /// </summary>
        [JsonProperty("emojis")]
        public string Emojis { get; set; }
    }
}
