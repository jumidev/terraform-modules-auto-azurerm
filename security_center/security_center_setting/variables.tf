# REQUIRED VARIABLES

variable "setting_name" {
  description = "(REQUIRED) The setting to manage. Possible values are 'MCAS' , 'WDATP' and 'Sentinel'. Changing this forces a new resource to be created."
  type        = string

}
variable "enabled" {
  description = "(REQUIRED) Boolean flag to enable/disable data access."
  type        = bool

}
