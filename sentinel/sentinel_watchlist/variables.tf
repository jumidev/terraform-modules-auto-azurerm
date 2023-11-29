# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created."
  type        = string

}
variable "log_analytics_workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace where this Sentinel Watchlist resides in. Changing this forces a new Sentinel Watchlist to be created."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) The display name of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created."
  type        = string

}
variable "item_search_key" {
  description = "(REQUIRED) The key used to optimize query performance when using Watchlist for joins with other data. Changing this forces a new Sentinel Watchlist to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "default_duration" {
  description = "The default duration in ISO8601 duration form of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created."
  type        = string
  default     = null
}
variable "description" {
  description = "The description of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created."
  type        = string
  default     = null
}
variable "labels" {
  description = "Specifies a list of labels related to this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created."
  type        = string
  default     = null
}
