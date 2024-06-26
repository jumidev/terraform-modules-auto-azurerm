# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Application Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created."
  type        = string

}
variable "azure_firewall_name" {
  description = "(REQUIRED) Specifies the name of the Firewall in which the Application Rule Collection should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created."
  type        = string

}
variable "priority" {
  description = "(REQUIRED) Specifies the priority of the rule collection. Possible values are between '100' - '65000'."
  type        = number

}
variable "action" {
  description = "(REQUIRED) Specifies the action the rule will apply to matching traffic. Possible values are 'Allow' and 'Deny'."
  type        = string

}
variable "rules" {
  description = "(REQUIRED) One or more 'rule' blocks."
  type        = map(map(any))
}
#
# rule block structure   :
#   name (string)          : (REQUIRED) Specifies the name of the rule.
#   description (string)   : Specifies a description for the rule.
#   source_addresses (list): A list of source IP addresses and/or IP ranges.
#   source_ip_groups (list): A list of source IP Group IDs for the rule. -> **NOTE** At least one of 'source_addresses' and 'source_ip_groups' must be specified for a rule.
#   fqdn_tags (list)       : A list of FQDN tags. Possible values are 'AppServiceEnvironment', 'AzureBackup', 'AzureKubernetesService', 'HDInsight', 'MicrosoftActiveProtectionService', 'WindowsDiagnostics', 'WindowsUpdate' and 'WindowsVirtualDesktop'.
#   target_fqdns (list)    : A list of FQDNs.
#   protocol (block)       : One or more 'protocol' blocks.
#
# protocol block structure:
#   port (string)           : (REQUIRED) Specify a port for the connection.
#   type (string)           : (REQUIRED) Specifies the type of connection. Possible values are 'Http', 'Https' and 'Mssql'.


