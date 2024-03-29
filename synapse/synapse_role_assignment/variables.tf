# REQUIRED VARIABLES

variable "role_name" {
  description = "(REQUIRED) The Role Name of the Synapse Built-In Role. Possible values are 'Apache Spark Administrator', 'Synapse Administrator', 'Synapse Artifact Publisher', 'Synapse Artifact User', 'Synapse Compute Operator', 'Synapse Contributor', 'Synapse Credential User', 'Synapse Linked Data Manager', 'Synapse Monitoring Operator', 'Synapse SQL Administrator' and 'Synapse User'. Changing this forces a new resource to be created. -> **NOTE:** Currently, the Synapse built-in roles are 'Apache Spark Administrator', 'Synapse Administrator', 'Synapse Artifact Publisher', 'Synapse Artifact User', 'Synapse Compute Operator', 'Synapse Contributor', 'Synapse Credential User', 'Synapse Linked Data Manager', 'Synapse Monitoring Operator', 'Synapse SQL Administrator' and 'Synapse User'. -> **NOTE:** Old roles are still supported: 'Workspace Admin', 'Apache Spark Admin', 'Sql Admin'. These values will be removed in the next Major Version 3.0."
  type        = string

}
variable "principal_id" {
  description = "(REQUIRED) The ID of the Principal (User, Group or Service Principal) to assign the Synapse Role Definition to. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "synapse_workspace_id" {
  description = "The Synapse Workspace which the Synapse Role Assignment applies to. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "synapse_spark_pool_id" {
  description = "The Synapse Spark Pool which the Synapse Role Assignment applies to. Changing this forces a new resource to be created. -> **NOTE:** A Synapse firewall rule including local IP is needed to allow access. Only one of 'synapse_workspace_id', 'synapse_spark_pool_id' must be set."
  type        = string
  default     = null
}
variable "principal_type" {
  description = "The Type of the Principal. One of 'User', 'Group' or 'ServicePrincipal'. Changing this forces a new resource to be created. -> **NOTE:** While 'principal_type' is optional, it's still recommended to set this value, as some Synapse use-cases may not work correctly if this is not specified. Service Principals for example can't run SQL statements using 'Entra ID' authentication if 'principal_type' is not set to 'ServicePrincipal'."
  type        = string
  default     = null
}
