# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for the Microsoft SQL Virtual Machine Group. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Microsoft SQL Virtual Machine Group should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Microsoft SQL Virtual Machine Group should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "sql_image_offer" {
  description = "(REQUIRED) The offer type of the marketplace image cluster to be used by the SQL Virtual Machine Group. Changing this forces a new resource to be created."
  type        = string

}
variable "sql_image_sku" {
  description = "(REQUIRED) The sku type of the marketplace image cluster to be used by the SQL Virtual Machine Group. Possible values are 'Developer' and 'Enterprise'."
  type        = string

}
variable "wsfc_domain_profile" {
  description = "(REQUIRED) A 'wsfc_domain_profile' block."
  type        = map(any)
}
#
# wsfc_domain_profile block structure    :
#   cluster_subnet_type (string)           : (REQUIRED) The subnet type of the SQL Virtual Machine cluster. Possible values are 'MultiSubnet' and 'SingleSubnet'. Changing this forces a new resource to be created.
#   fqdn (string)                          : (REQUIRED) The fully qualified name of the domain. Changing this forces a new resource to be created.
#   cluster_bootstrap_account_name (string): The account name used for creating cluster. Changing this forces a new resource to be created.
#   cluster_operator_account_name (string) : The account name used for operating cluster. Changing this forces a new resource to be created.
#   organizational_unit_path (string)      : The organizational Unit path in which the nodes and cluster will be present. Changing this forces a new resource to be created.
#   sql_service_account_name (string)      : The account name under which SQL service will run on all participating SQL virtual machines in the cluster. Changing this forces a new resource to be created.
#   storage_account_primary_key (string)   : The primary key of the Storage Account.
#   storage_account_url (string)           : The SAS URL to the Storage Container of the witness storage account. Changing this forces a new resource to be created.



# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Microsoft SQL Virtual Machine Group."
  type        = map(any)
  default     = null
}
