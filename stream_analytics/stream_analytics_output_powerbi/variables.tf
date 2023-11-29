# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Stream Output. Changing this forces a new resource to be created."
  type        = string

}
variable "stream_analytics_job_id" {
  description = "(REQUIRED) The ID of the Stream Analytics Job. Changing this forces a new resource to be created."
  type        = string

}
variable "dataset" {
  description = "(REQUIRED) The name of the Power BI dataset."
  type        = string

}
variable "table" {
  description = "(REQUIRED) The name of the Power BI table under the specified dataset."
  type        = string

}
variable "group_id" {
  description = "(REQUIRED) The ID of the Power BI group, this must be a valid UUID."
  type        = string

}
variable "group_name" {
  description = "(REQUIRED) The name of the Power BI group. Use this property to help remember which specific Power BI group id was used."
  type        = string

}

# OPTIONAL VARIABLES

variable "token_user_principal_name" {
  description = "The user principal name (UPN) of the user that was used to obtain the refresh token."
  type        = string
  default     = null
}
variable "token_user_display_name" {
  description = "The user display name of the user that was used to obtain the refresh token."
  type        = string
  default     = null
}
