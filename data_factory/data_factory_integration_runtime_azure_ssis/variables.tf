# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Azure-SSIS Integration Runtime. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
  type        = string

}
variable "data_factory_id" {
  description = "(REQUIRED) The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "node_size" {
  description = "(REQUIRED) The size of the nodes on which the Azure-SSIS Integration Runtime runs. Valid values are: 'Standard_D2_v3', 'Standard_D4_v3', 'Standard_D8_v3', 'Standard_D16_v3', 'Standard_D32_v3', 'Standard_D64_v3', 'Standard_E2_v3', 'Standard_E4_v3', 'Standard_E8_v3', 'Standard_E16_v3', 'Standard_E32_v3', 'Standard_E64_v3', 'Standard_D1_v2', 'Standard_D2_v2', 'Standard_D3_v2', 'Standard_D4_v2', 'Standard_A4_v2' and 'Standard_A8_v2'"
  type        = string

}

# OPTIONAL VARIABLES

variable "number_of_nodes" {
  description = "Number of nodes for the Azure-SSIS Integration Runtime. Max is '10'. Defaults to '1'."
  type        = int
  default     = 1
}
variable "max_parallel_executions_per_node" {
  description = "Defines the maximum parallel executions per node. Defaults to '1'. Max is '1'."
  type        = string
  default     = "1"
}
variable "edition" {
  description = "The Azure-SSIS Integration Runtime edition. Valid values are 'Standard' and 'Enterprise'. Defaults to 'Standard'."
  type        = string
  default     = "Standard"
}
variable "license_type" {
  description = "The type of the license that is used. Valid values are 'LicenseIncluded' and 'BasePrice'. Defaults to 'LicenseIncluded'."
  type        = string
  default     = "LicenseIncluded"
}
variable "catalog_info" {
  description = "A 'catalog_info' block."
  type        = map(any)
  default     = null
}
#
# catalog_info block structure   :
#   server_endpoint (string)       : (REQUIRED) The endpoint of an Azure SQL Server that will be used to host the SSIS catalog.
#   administrator_login (string)   : Administrator login name for the SQL Server.
#   administrator_password (string): Administrator login password for the SQL Server.
#   pricing_tier (string)          : Pricing tier for the database that will be created for the SSIS catalog. Valid values are: 'Basic', 'S0', 'S1', 'S2', 'S3', 'S4', 'S6', 'S7', 'S9', 'S12', 'P1', 'P2', 'P4', 'P6', 'P11', 'P15', 'GP_S_Gen5_1', 'GP_S_Gen5_2', 'GP_S_Gen5_4', 'GP_S_Gen5_6', 'GP_S_Gen5_8', 'GP_S_Gen5_10', 'GP_S_Gen5_12', 'GP_S_Gen5_14', 'GP_S_Gen5_16', 'GP_S_Gen5_18', 'GP_S_Gen5_20', 'GP_S_Gen5_24', 'GP_S_Gen5_32', 'GP_S_Gen5_40', 'GP_Gen5_2', 'GP_Gen5_4', 'GP_Gen5_6', 'GP_Gen5_8', 'GP_Gen5_10', 'GP_Gen5_12', 'GP_Gen5_14', 'GP_Gen5_16', 'GP_Gen5_18', 'GP_Gen5_20', 'GP_Gen5_24', 'GP_Gen5_32', 'GP_Gen5_40', 'GP_Gen5_80', 'BC_Gen5_2', 'BC_Gen5_4', 'BC_Gen5_6', 'BC_Gen5_8', 'BC_Gen5_10', 'BC_Gen5_12', 'BC_Gen5_14', 'BC_Gen5_16', 'BC_Gen5_18', 'BC_Gen5_20', 'BC_Gen5_24', 'BC_Gen5_32', 'BC_Gen5_40', 'BC_Gen5_80', 'HS_Gen5_2', 'HS_Gen5_4', 'HS_Gen5_6', 'HS_Gen5_8', 'HS_Gen5_10', 'HS_Gen5_12', 'HS_Gen5_14', 'HS_Gen5_16', 'HS_Gen5_18', 'HS_Gen5_20', 'HS_Gen5_24', 'HS_Gen5_32', 'HS_Gen5_40' and 'HS_Gen5_80'. Mutually exclusive with 'elastic_pool_name'.
#   elastic_pool_name (string)     : The name of SQL elastic pool where the database will be created for the SSIS catalog. Mutually exclusive with 'pricing_tier'.
#   dual_standby_pair_name (string): The dual standby Azure-SSIS Integration Runtime pair with SSISDB failover.


variable "custom_setup_script" {
  description = "A 'custom_setup_script' block."
  type        = map(any)
  default     = null
}
#
# custom_setup_script block structure:
#   blob_container_uri (string)        : (REQUIRED) The blob endpoint for the container which contains a custom setup script that will be run on every node on startup. See [https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup](https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup) for more information.
#   sas_token (string)                 : (REQUIRED) A container SAS token that gives access to the files. See [https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup](https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup) for more information.


variable "express_custom_setup" {
  description = "An 'express_custom_setup' block."
  type        = map(any)
  default     = null
}
#
# express_custom_setup block structure:
#   command_key (block)                 : One or more 'command_key' blocks.
#   component (block)                   : One or more 'component' blocks.
#   environment (string)                : The Environment Variables for the Azure-SSIS Integration Runtime.
#   powershell_version (string)         : The version of Azure Powershell installed for the Azure-SSIS Integration Runtime.
#
# key_vault_secret_reference block structure:
#   linked_service_name (string)              : (REQUIRED) Specifies the name of an existing Key Vault Data Factory Linked Service.
#   secret_name (string)                      : (REQUIRED) Specifies the secret name in Azure Key Vault.
#   secret_version (string)                   : Specifies the secret version in Azure Key Vault.
#   parameters (string)                       : A map of parameters to associate with the Key Vault Data Factory Linked Service.
#
# command_key block structure:
#   target_name (string)       : (REQUIRED) The target computer or domain name.
#   user_name (string)         : (REQUIRED) The username for the target device.
#   password (string)          : The password for the target device.
#   key_vault_password (block) : A 'key_vault_secret_reference' block.
#
# component block structure:
#   name (string)            : (REQUIRED) The Component Name installed for the Azure-SSIS Integration Runtime.
#   license (string)         : The license used for the Component.
#   key_vault_license (block): A 'key_vault_secret_reference' block.


variable "express_vnet_integration" {
  description = "A 'express_vnet_integration' block."
  type        = map(any)
  default     = null
}
#
# express_vnet_integration block structure:
#   subnet_id (string)                      : (REQUIRED) id of the subnet to which the nodes of the Azure-SSIS Integration Runtime will be added.


variable "package_store" {
  description = "One or more 'package_store' block."
  type        = map(any)
  default     = null
}
#
# package_store block structure:
#   name (string)                : (REQUIRED) Name of the package store.
#   linked_service_name (string) : (REQUIRED) Name of the Linked Service to associate with the packages.


variable "proxy" {
  description = "A 'proxy' block."
  type        = map(any)
  default     = null
}
#
# proxy block structure                        :
#   self_hosted_integration_runtime_name (string): (REQUIRED) Name of Self Hosted Integration Runtime as a proxy.
#   staging_storage_linked_service_name (string) : (REQUIRED) Name of Azure Blob Storage linked service to reference the staging data store to be used when moving data between self-hosted and Azure-SSIS integration runtimes.
#   path (string)                                : The path in the data store to be used when moving data between Self-Hosted and Azure-SSIS Integration Runtimes.


variable "vnet_integration" {
  description = "A 'vnet_integration' block."
  type        = map(any)
  default     = null
}
#
# vnet_integration block structure:
#   vnet_id (string)                : ID of the virtual network to which the nodes of the Azure-SSIS Integration Runtime will be added.
#   subnet_name (string)            : Name of the subnet to which the nodes of the Azure-SSIS Integration Runtime will be added.
#   subnet_id (string)              : id of the subnet to which the nodes of the Azure-SSIS Integration Runtime will be added.
#   public_ips (string)             : Static public IP addresses for the Azure-SSIS Integration Runtime. The size must be 2.


variable "description" {
  description = "Integration runtime description."
  type        = string
  default     = null
}
