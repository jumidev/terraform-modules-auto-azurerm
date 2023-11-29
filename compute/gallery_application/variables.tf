# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Gallery Application. Changing this forces a new resource to be created."
  type        = string

}
variable "gallery_id" {
  description = "(REQUIRED) The ID of the Shared Image Gallery. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Gallery Application exists. Changing this forces a new resource to be created."
  type        = string

}
variable "supported_os_type" {
  description = "(REQUIRED) The type of the Operating System supported for the Gallery Application. Possible values are 'Linux' and 'Windows'. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description of the Gallery Application."
  type        = string
  default     = null
}
variable "end_of_life_date" {
  description = "The end of life date in RFC3339 format of the Gallery Application."
  type        = datetime
  default     = null
}
variable "eula" {
  description = "The End User Licence Agreement of the Gallery Application."
  type        = string
  default     = null
}
variable "privacy_statement_uri" {
  description = "The URI containing the Privacy Statement associated with the Gallery Application."
  type        = string
  default     = null
}
variable "release_note_uri" {
  description = "The URI containing the Release Notes associated with the Gallery Application."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the Gallery Application."
  type        = map(any)
  default     = null
}
