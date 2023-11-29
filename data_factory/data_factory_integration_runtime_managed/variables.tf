# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Managed Integration Runtime. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions."
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
  description = "(REQUIRED) The size of the nodes on which the Managed Integration Runtime runs. Valid values are: 'Standard_D2_v3', 'Standard_D4_v3', 'Standard_D8_v3', 'Standard_D16_v3', 'Standard_D32_v3', 'Standard_D64_v3', 'Standard_E2_v3', 'Standard_E4_v3', 'Standard_E8_v3', 'Standard_E16_v3', 'Standard_E32_v3', 'Standard_E64_v3', 'Standard_D1_v2', 'Standard_D2_v2', 'Standard_D3_v2', 'Standard_D4_v2', 'Standard_A4_v2' and 'Standard_A8_v2'"
  type        = string

}

# OPTIONAL VARIABLES

variable "number_of_nodes" {
  description = "Number of nodes for the Managed Integration Runtime. Max is '10'. Defaults to '1'."
  type        = int
  default     = 1
}
variable "max_parallel_executions_per_node" {
  description = "Defines the maximum parallel executions per node. Defaults to '1'. Max is '1'."
  type        = string
  default     = "1"
}
variable "edition" {
  description = "The Managed Integration Runtime edition. Valid values are 'Standard' and 'Enterprise'. Defaults to 'Standard'."
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
#   pricing_tier (string)          : Pricing tier for the database that will be created for the SSIS catalog. Valid values are: 'Basic', 'Standard', 'Premium' and 'PremiumRS'. Defaults to 'Basic'.


variable "custom_setup_script" {
  description = "A 'custom_setup_script' block."
  type        = map(any)
  default     = null
}
#
# custom_setup_script block structure:
#   blob_container_uri (string)        : (REQUIRED) The blob endpoint for the container which contains a custom setup script that will be run on every node on startup. See [https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup](https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup) for more information.
#   sas_token (string)                 : (REQUIRED) A container SAS token that gives access to the files. See [https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup](https://docs.microsoft.com/azure/data-factory/how-to-configure-azure-ssis-ir-custom-setup) for more information.


variable "vnet_integration" {
  description = "A 'vnet_integration' block."
  type        = map(any)
  default     = null
}
#
# vnet_integration block structure:
#   vnet_id (string)                : (REQUIRED) ID of the virtual network to which the nodes of the Managed Integration Runtime will be added.
#   subnet_name (string)            : (REQUIRED) Name of the subnet to which the nodes of the Managed Integration Runtime will be added.


variable "description" {
  description = "Integration runtime description."
  type        = string
  default     = null
}
