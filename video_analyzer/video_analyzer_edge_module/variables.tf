# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Video Analyzer Edge Module. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Video Analyzer Edge Module. Changing this forces a new resource to be created."
  type        = string

}
variable "video_analyzer_name" {
  description = "(REQUIRED) The name of the Video Analyzer in which to create the Edge Module. Changing this forces a new resource to be created."
  type        = string

}
