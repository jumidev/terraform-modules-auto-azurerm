# REQUIRED VARIABLES

variable "description" {
  description = "(REQUIRED) The description of the Security Center Assessment."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) The user-friendly display name of the Security Center Assessment."
  type        = string

}

# OPTIONAL VARIABLES

variable "severity" {
  description = "The severity level of the Security Center Assessment. Possible values are 'Low', 'Medium' and 'High'. Defaults to 'Medium'."
  type        = string
  default     = "Medium"
}
variable "categories" {
  description = "A list of the categories of resource that is at risk when the Security Center Assessment is unhealthy. Possible values are 'Unknown', 'Compute', 'Data', 'IdentityAndAccess', 'IoT' and 'Networking'."
  type        = string
  default     = null
}
variable "implementation_effort" {
  description = "The implementation effort which is used to remediate the Security Center Assessment. Possible values are 'Low', 'Moderate' and 'High'."
  type        = string
  default     = null
}
variable "remediation_description" {
  description = "The description which is used to mitigate the security issue."
  type        = string
  default     = null
}
variable "threats" {
  description = "A list of the threat impacts for the Security Center Assessment. Possible values are 'AccountBreach', 'DataExfiltration', 'DataSpillage', 'DenialOfService', 'ElevationOfPrivilege', 'MaliciousInsider', 'MissingCoverage' and 'ThreatResistance'."
  type        = string
  default     = null
}
variable "user_impact" {
  description = "The user impact of the Security Center Assessment. Possible values are 'Low', 'Moderate' and 'High'."
  type        = string
  default     = null
}
