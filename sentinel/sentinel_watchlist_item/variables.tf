# REQUIRED VARIABLES

variable "watchlist_id" {
  description = "(REQUIRED) The ID of the Sentinel Watchlist that this Item resides in. Changing this forces a new Sentinel Watchlist Item to be created."
  type        = string

}
variable "properties" {
  description = "(REQUIRED) The key value pairs of the Sentinel Watchlist Item."
  type        = string

}

# OPTIONAL VARIABLES

variable "name" {
  description = "The name in UUID format which should be used for this Sentinel Watchlist Item. Changing this forces a new Sentinel Watchlist Item to be created."
  type        = string
  default     = null
}
