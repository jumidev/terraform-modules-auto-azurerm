# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Managed Database to create. Changing this forces a new resource to be created."
  type        = string

}
variable "managed_instance_id" {
  description = "(REQUIRED) The ID of the Azure SQL Managed Instance on which to create this Managed Database. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "long_term_retention_policy" {
  description = "A 'long_term_retention_policy' block."
  type        = map(any)
  default     = null
}
#
# long_term_retention_policy block structure:
#   weekly_retention (string)                 : The weekly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 520 weeks. e.g. 'P1Y', 'P1M', 'P1W' or 'P7D'.
#   monthly_retention (string)                : The monthly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 120 months. e.g. 'P1Y', 'P1M', 'P4W' or 'P30D'.
#   yearly_retention (string)                 : The yearly retention policy for an LTR backup in an ISO 8601 format. Valid value is between 1 to 10 years. e.g. 'P1Y', 'P12M', 'P52W' or 'P365D'.
#   week_of_year (string)                     : The week of year to take the yearly backup. Value has to be between '1' and '52'.


variable "short_term_retention_days" {
  description = "The backup retention period in days. This is how many days Point-in-Time Restore will be supported."
  type        = number
  default     = null
}
