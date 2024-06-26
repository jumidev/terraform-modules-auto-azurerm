# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Databricks Workspace resource. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the Databricks Workspace should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) The 'sku' to use for the Databricks Workspace. Possible values are 'standard', 'premium', or 'trial'. ~> **Note:** Downgrading to a 'trial sku' from a 'standard' or 'premium sku' will force a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "load_balancer_backend_address_pool_id" {
  description = "Resource ID of the Outbound Load balancer Backend Address Pool for Secure Cluster Connectivity (No Public IP) workspace. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "managed_services_cmk_key_vault_id" {
  description = "Resource ID of the Key Vault which contains the 'managed_services_cmk_key_vault_key_id' key. -> **Note:** The 'managed_services_cmk_key_vault_id' field is only required if the Key Vault exists in a different subscription than the Databricks Workspace. If the 'managed_services_cmk_key_vault_id' field is not specified it is assumed that the 'managed_services_cmk_key_vault_key_id' is hosted in the same subscriptioin as the Databricks Workspace. -> **Note:** If you are using multiple service principals to execute Terraform across subscriptions you will need to add an additional 'azurerm_key_vault_access_policy' resource granting the service principal access to the key vault in that subscription."
  type        = string
  default     = null
}
variable "managed_disk_cmk_key_vault_id" {
  description = "Resource ID of the Key Vault which contains the 'managed_disk_cmk_key_vault_key_id' key. -> **Note:** The 'managed_disk_cmk_key_vault_id' field is only required if the Key Vault exists in a different subscription than the Databricks Workspace. If the 'managed_disk_cmk_key_vault_id' field is not specified it is assumed that the 'managed_disk_cmk_key_vault_key_id' is hosted in the same subscriptioin as the Databricks Workspace. -> **Note:** If you are using multiple service principals to execute Terraform across subscriptions you will need to add an additional 'azurerm_key_vault_access_policy' resource granting the service principal access to the key vault in that subscription."
  type        = string
  default     = null
}
variable "managed_services_cmk_key_vault_key_id" {
  description = "Customer managed encryption properties for the Databricks Workspace managed resources(e.g. Notebooks and Artifacts)."
  type        = string
  default     = null
}
variable "managed_disk_cmk_key_vault_key_id" {
  description = "Customer managed encryption properties for the Databricks Workspace managed disks."
  type        = string
  default     = null
}
variable "managed_disk_cmk_rotation_to_latest_version_enabled" {
  description = "Whether customer managed keys for disk encryption will automatically be rotated to the latest version."
  type        = bool
  default     = null
}
variable "managed_resource_group_name" {
  description = "The name of the resource group where Azure should place the managed Databricks resources. Changing this forces a new resource to be created. ~> **Note:** Make sure that this field is unique if you have multiple Databrick Workspaces deployed in your subscription and choose to not have the 'managed_resource_group_name' auto generated by the Azure Resource Provider. Having multiple Databrick Workspaces deployed in the same subscription with the same 'manage_resource_group_name' may result in some resources that cannot be deleted."
  type        = string
  default     = null
}
variable "customer_managed_key_enabled" {
  description = "Is the workspace enabled for customer managed key encryption? If 'true' this enables the Managed Identity for the managed storage account. Possible values are 'true' or 'false'. Defaults to 'false'. This field is only valid if the Databricks Workspace 'sku' is set to 'premium'."
  type        = bool
  default     = false
}
variable "infrastructure_encryption_enabled" {
  description = "Is the Databricks File System root file system enabled with a secondary layer of encryption with platform managed keys? Possible values are 'true' or 'false'. Defaults to 'false'. This field is only valid if the Databricks Workspace 'sku' is set to 'premium'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
variable "public_network_access_enabled" {
  description = "Allow public access for accessing workspace. Set value to 'false' to access workspace only via private link endpoint. Possible values include 'true' or 'false'. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "default_storage_firewall_enabled" {
  description = "Disallow public access to default storage account. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "access_connector_id" {
  description = "Access Connector ID to use when default storage account firewall is enabled. -> **Note:** The 'access_connector_id' field is only required if 'default_storage_firewall_enabled' is set to 'true'."
  type        = string
  default     = null
}
variable "network_security_group_rules_required" {
  description = "Does the data plane (clusters) to control plane communication happen over private link endpoint only or publicly? Possible values 'AllRules', 'NoAzureDatabricksRules' or 'NoAzureServiceRules'. Required when 'public_network_access_enabled' is set to 'false'."
  type        = string
  default     = null
}
variable "custom_parameters" {
  description = "A 'custom_parameters' block."
  type        = map(any)
  default     = null
}
#
# custom_parameters block structure                            :
#   machine_learning_workspace_id (string)                       : The ID of a Azure Machine Learning workspace to link with Databricks workspace. Changing this forces a new resource to be created.
#   nat_gateway_name (string)                                    : Name of the NAT gateway for Secure Cluster Connectivity (No Public IP) workspace subnets. Defaults to 'nat-gateway'. Changing this forces a new resource to be created.
#   public_ip_name (string)                                      : Name of the Public IP for No Public IP workspace with managed vNet. Defaults to 'nat-gw-public-ip'. Changing this forces a new resource to be created.
#   no_public_ip (bool)                                          : Are public IP Addresses not allowed? Possible values are 'true' or 'false'. Defaults to 'false'. ~> **Note:** Updating 'no_public_ip' parameter is only allowed if the value is changing from 'false' to 'true' and and only for VNet-injected workspaces.
#   public_subnet_name (string)                                  : The name of the Public Subnet within the Virtual Network. Required if 'virtual_network_id' is set. Changing this forces a new resource to be created.
#   public_subnet_network_security_group_association_id (string) : The resource ID of the 'azurerm_subnet_network_security_group_association' resource which is referred to by the 'public_subnet_name' field. This is the same as the ID of the subnet referred to by the 'public_subnet_name' field. Required if 'virtual_network_id' is set.
#   private_subnet_name (string)                                 : The name of the Private Subnet within the Virtual Network. Required if 'virtual_network_id' is set. Changing this forces a new resource to be created.
#   private_subnet_network_security_group_association_id (string): The resource ID of the 'azurerm_subnet_network_security_group_association' resource which is referred to by the 'private_subnet_name' field. This is the same as the ID of the subnet referred to by the 'private_subnet_name' field. Required if 'virtual_network_id' is set.
#   storage_account_name (string)                                : Default Databricks File Storage account name. Defaults to a randomized name(e.g. 'dbstoragel6mfeghoe5kxu'). Changing this forces a new resource to be created.
#   storage_account_sku_name (string)                            : Storage account SKU name. Possible values include 'Standard_LRS', 'Standard_GRS', 'Standard_RAGRS', 'Standard_GZRS', 'Standard_RAGZRS', 'Standard_ZRS', 'Premium_LRS' or 'Premium_ZRS'. Defaults to 'Standard_GRS'. Changing this forces a new resource to be created.
#   virtual_network_id (string)                                  : The ID of a Virtual Network where this Databricks Cluster should be created. Changing this forces a new resource to be created.
#   vnet_address_prefix (string)                                 : Address prefix for Managed virtual network. Defaults to '10.139'. Changing this forces a new resource to be created. ~> **Note:** Databricks requires that a network security group is associated with the 'public' and 'private' subnets when a 'virtual_network_id' has been defined. Both 'public' and 'private' subnets must be delegated to 'Microsoft.Databricks/workspaces'. For more information about subnet delegation see the [product documentation](https://docs.microsoft.com/azure/virtual-network/subnet-delegation-overview). ## Example HCL Configurations * [Databricks Workspace Secure Connectivity Cluster with Load Balancer](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/databricks/secure-connectivity-cluster/with-load-balancer) * [Databricks Workspace Secure Connectivity Cluster without Load Balancer](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/databricks/secure-connectivity-cluster/without-load-balancer) * [Databricks Workspace with Private Endpoint](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/private-endpoint/databricks/private-endpoint) * [Databricks Workspace with Private Endpoint, Customer Managed Keys for Managed Services and Databricks File System Customer Managed Keys](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/private-endpoint/databricks/managed-services) * [Databricks Workspace with Root Databricks File System Customer Managed Keys](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/databricks/customer-managed-key/dbfs) * [Databricks Workspace with Root Databricks File System Customer Managed Keys in a Different Subscription](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/databricks/customer-managed-key/dbfs-cross-subscription) * [Databricks Workspace with Customer Managed Keys for Managed Services](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/databricks/customer-managed-key/managed-services) * [Databricks Workspace with Customer Managed Keys for Managed Services with Key Vault and Key in a Different Subscription](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/databricks/customer-managed-key/managed-services-cross-subscription)


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
