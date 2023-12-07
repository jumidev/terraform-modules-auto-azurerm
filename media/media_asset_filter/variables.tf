# REQUIRED VARIABLES

variable "asset_id" {
  description = "(REQUIRED) The Asset ID for which the Asset Filter should be created. Changing this forces a new Asset Filter to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Asset Filter. Changing this forces a new Asset Filter to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "first_quality_bitrate" {
  description = "The first quality bitrate. Sets the first video track to appear in the Live Streaming playlist to allow HLS native players to start downloading from this quality level at the beginning."
  type        = string
  default     = null
}
variable "presentation_time_range" {
  description = "A 'presentation_time_range' block."
  type        = map(any)
  default     = null
}
#
# presentation_time_range block structure:
#   end_in_units (string)                  : The absolute end time boundary. Applies to Video on Demand (VoD). For the Live Streaming presentation, it is silently ignored and applied when the presentation ends and the stream becomes VoD. This is a long value that represents an absolute end point of the presentation, rounded to the closest next GOP start. The unit is defined by 'unit_timescale_in_miliseconds', so an 'end_in_units' of 180 would be for 3 minutes. Use 'start_in_units' and 'end_in_units' to trim the fragments that will be in the playlist (manifest). For example, 'start_in_units' set to 20 and 'end_in_units' set to 60 using 'unit_timescale_in_miliseconds' in 1000 will generate a playlist that contains fragments from between 20 seconds and 60 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest.
#   force_end (bool)                       : Indicates whether the 'end_in_units' property must be present. If true, 'end_in_units' must be specified or a bad request code is returned. Applies to Live Streaming only. Allowed values: false, true.
#   live_backoff_in_units (string)         : The relative to end right edge. Applies to Live Streaming only. This value defines the latest live position that a client can seek to. Using this property, you can delay live playback position and create a server-side buffer for players. The unit is defined by 'unit_timescale_in_miliseconds'. The maximum live back off duration is 300 seconds. For example, a value of 20 means that the latest available content is 20 seconds delayed from the real live edge.
#   presentation_window_in_units (string)  : The relative to end sliding window. Applies to Live Streaming only. Use 'presentation_window_in_units' to apply a sliding window of fragments to include in a playlist. The unit is defined by 'unit_timescale_in_miliseconds'. For example, set 'presentation_window_in_units' to 120 to apply a two-minute sliding window. Media within 2 minutes of the live edge will be included in the playlist. If a fragment straddles the boundary, the entire fragment will be included in the playlist. The minimum presentation window duration is 60 seconds.
#   start_in_units (string)                : The absolute start time boundary. Applies to Video on Demand (VoD) or Live Streaming. This is a long value that represents an absolute start point of the stream. The value gets rounded to the closest next GOP start. The unit is defined by 'unit_timescale_in_miliseconds', so a 'start_in_units' of 15 would be for 15 seconds. Use 'start_in_units' and 'end_in_units' to trim the fragments that will be in the playlist (manifest). For example, 'start_in_units' set to 20 and 'end_in_units' set to 60 using 'unit_timescale_in_miliseconds' in 1000 will generate a playlist that contains fragments from between 20 seconds and 60 seconds of the VoD presentation. If a fragment straddles the boundary, the entire fragment will be included in the manifest.
#   unit_timescale_in_miliseconds (number) : Specified as the number of miliseconds in one unit timescale. For example, if you want to set a 'start_in_units' at 30 seconds, you would use a value of 30 when using the 'unit_timescale_in_miliseconds' in 1000. Or if you want to set 'start_in_units' in 30 miliseconds, you would use a value of 30 when using the 'unit_timescale_in_miliseconds' in 1. Applies timescale to 'start_in_units', 'start_timescale' and 'presentation_window_in_timescale' and 'live_backoff_in_timescale'.


variable "track_selection" {
  description = "One or more 'track_selection' blocks."
  type        = map(map(any))
  default     = null
}
#
# track_selection block structure:
#   condition (list)               : (REQUIRED) One or more 'condition' blocks.


