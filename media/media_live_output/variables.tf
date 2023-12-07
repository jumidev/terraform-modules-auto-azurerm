# REQUIRED VARIABLES

variable "archive_window_duration" {
  description = "(REQUIRED) 'ISO 8601' time between 1 minute to 25 hours to indicate the maximum content length that can be archived in the asset for this live output. This also sets the maximum content length for the rewind window. For example, use 'PT1H30M' to indicate 1 hour and 30 minutes of archive window. Changing this forces a new Live Output to be created."
  type        = string

}
variable "asset_name" {
  description = "(REQUIRED) The asset that the live output will write to. Changing this forces a new Live Output to be created."
  type        = string

}
variable "live_event_id" {
  description = "(REQUIRED) The id of the live event. Changing this forces a new Live Output to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Live Event Output. Changing this forces a new Live Output to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The description of the live output. Changing this forces a new Live Output to be created."
  type        = string
  default     = null
}
variable "hls_fragments_per_ts_segment" {
  description = "The number of fragments in an HTTP Live Streaming (HLS) TS segment in the output of the live event. This value does not affect the packing ratio for HLS CMAF output. Changing this forces a new Live Output to be created."
  type        = number
  default     = null
}
variable "manifest_name" {
  description = "The manifest file name. If not provided, the service will generate one automatically. Changing this forces a new Live Output to be created."
  type        = string
  default     = null
}
variable "output_snap_time_in_seconds" {
  description = "The initial timestamp that the live output will start at, any content before this value will not be archived. Changing this forces a new Live Output to be created."
  type        = number
  default     = null
}
variable "rewind_window_duration" {
  description = "'ISO 8601' time between 1 minute to the duration of 'archive_window_duration' to control seek-able window length during Live. The service won't use this property once LiveOutput stops. The archived VOD will have full content with original ArchiveWindowLength. For example, use 'PT1H30M' to indicate 1 hour and 30 minutes of rewind window length. Service will use implicit default value 30m only if Live Event enables LL. Changing this forces a new Live Output to be created."
  type        = string
  default     = null
}
