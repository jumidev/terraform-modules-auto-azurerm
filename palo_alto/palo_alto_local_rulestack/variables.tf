# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Palo Alto Networks Rulestack. Changing this forces a new Palo Alto Networks Rulestack to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Palo Alto Networks Rulestack should exist. Changing this forces a new Palo Alto Networks Rulestack to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Palo Alto Networks Rulestack should exist. Changing this forces a new Palo Alto Networks Rulestack to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "anti_spyware_profile" {
  description = "The setting to use for Anti-Spyware. Possible values include 'BestPractice', and 'Custom'."
  type        = string
  default     = null
}
variable "anti_virus_profile" {
  description = "The setting to use for Anti-Virus. Possible values include 'BestPractice', and 'Custom'."
  type        = string
  default     = null
}
variable "description" {
  description = "The description for this Local Rulestack."
  type        = string
  default     = null
}
variable "dns_subscription" {
  description = "TThe setting to use for DNS Subscription. Possible values include 'BestPractice', and 'Custom'."
  type        = string
  default     = null
}
variable "file_blocking_profile" {
  description = "The setting to use for the File Blocking Profile. Possible values include 'BestPractice', and 'Custom'."
  type        = string
  default     = null
}
variable "url_filtering_profile" {
  description = "The setting to use for the URL Filtering Profile. Possible values include 'BestPractice', and 'Custom'."
  type        = string
  default     = null
}
variable "vulnerability_profile" {
  description = "The setting to use for the Vulnerability Profile. Possible values include 'BestPractice', and 'Custom'."
  type        = string
  default     = null
}
