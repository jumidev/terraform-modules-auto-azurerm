# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of this SAP Three Tier Virtual Instance. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the SAP Three Tier Virtual Instance should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the SAP Three Tier Virtual Instance should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "app_location" {
  description = "(REQUIRED) The Geo-Location where the SAP system is to be created. Changing this forces a new resource to be created."
  type        = string

}
variable "environment" {
  description = "(REQUIRED) The environment type for the SAP Three Tier Virtual Instance. Possible values are 'NonProd' and 'Prod'. Changing this forces a new resource to be created."
  type        = string

}
variable "sap_fqdn" {
  description = "(REQUIRED) The FQDN of the SAP system. Changing this forces a new resource to be created."
  type        = string

}
variable "sap_product" {
  description = "(REQUIRED) The SAP Product type for the SAP Three Tier Virtual Instance. Possible values are 'ECC', 'Other' and 'S4HANA'. Changing this forces a new resource to be created."
  type        = string

}
variable "three_tier_configuration" {
  description = "(REQUIRED) A 'three_tier_configuration' block. Changing this forces a new resource to be created."
  type        = map(any)
}
#
# three_tier_configuration block structure:
#   app_resource_group_name (string)        : (REQUIRED) The name of the application Resource Group where SAP system resources will be deployed. Changing this forces a new resource to be created. ~> **Note:** While creating an SAP Three Tier Virtual Instance, the service will provision the extra SAP systems/components in the 'app_resource_group_name' that are not defined in the HCL Configuration. At this time, if the 'app_resource_group_name' is different from the Resource Group where SAP Three Tier Virtual Instance exists, you can set 'prevent_deletion_if_contains_resources' to 'false' to delete all resources defined in the HCL Configurations and the resources created in the 'app_resource_group_name' with 'terraform destroy'. However, if the 'app_resource_group_name' is the same with the Resource Group where SAP Three Tier Virtual Instance exists, some resources, such as the subnet defined in the HCL Configuration, cannot be deleted with 'terraform destroy' since the resources defined in the HCL Configuration are being referenced by the SAP system/component. In this case, you have to manually delete the SAP system/component before deleting the resources in the HCL Configuration.
#   application_server_configuration (block): (REQUIRED) An 'application_server_configuration' block. Changing this forces a new resource to be created.
#   central_server_configuration (block)    : (REQUIRED) A 'central_server_configuration' block. Changing this forces a new resource to be created.
#   database_server_configuration (block)   : (REQUIRED) A 'database_server_configuration' block. Changing this forces a new resource to be created.
#   resource_names (block)                  : A 'resource_names' block. Changing this forces a new resource to be created.
#   high_availability_type (string)         : The high availability type for the three tier configuration. Possible values are 'AvailabilitySet' and 'AvailabilityZone'. Changing this forces a new resource to be created.
#   secondary_ip_enabled (bool)             : Specifies whether a secondary IP address should be added to the network interface on all VMs of the SAP system being deployed. Defaults to 'false'. Changing this forces a new resource to be created.
#   transport_create_and_mount (block)      : A 'transport_create_and_mount' block. Changing this forces a new resource to be created. ~> **Note:** The file share configuration uses 'skip' by default when 'transport_create_and_mount' isn't set. ~> **Note:** Due to [a bug in the Azure API](https://github.com/Azure/azure-rest-api-specs/issues/25209) where the Storage File Share Id is not defined correctly, it is not currently possible to support using Transport Mount.
#
# os_profile block structure:
#   admin_username (string)   : (REQUIRED) The name of the administrator account. Changing this forces a new resource to be created.
#   ssh_private_key (string)  : (REQUIRED) The SSH public key that is used to authenticate with the Virtual Machine. Changing this forces a new resource to be created.
#   ssh_public_key (string)   : (REQUIRED) The SSH private key that is used to authenticate with the Virtual Machine. Changing this forces a new resource to be created.
#
# load_balancer block structure         :
#   name (string)                         : The full resource name of the Load Balancer. Changing this forces a new resource to be created.
#   backend_pool_names (list)             : A list of Backend Pool names for the Load Balancer. Changing this forces a new resource to be created.
#   frontend_ip_configuration_names (list): A list of Frontend IP Configuration names. Changing this forces a new resource to be created.
#   health_probe_names (list)             : A list of Health Probe names. Changing this forces a new resource to be created.
#
# central_server_configuration block structure:
#   instance_count (number)                     : (REQUIRED) The number of instances for the Central Server. Possible values are at least '1'. Changing this forces a new resource to be created.
#   subnet_id (string)                          : (REQUIRED) The resource ID of the Subnet for the Central Server. Changing this forces a new resource to be created.
#   virtual_machine_configuration (block)       : (REQUIRED) A 'virtual_machine_configuration' block. Changing this forces a new resource to be created.
#
# disk_volume_configuration block structure:
#   volume_name (string)                     : (REQUIRED) Specifies the volumn name of the database disk. Possible values are 'backup', 'hana/data', 'hana/log', 'hana/shared', 'os' and 'usr/sap'. Changing this forces a new resource to be created.
#   number_of_disks (number)                 : (REQUIRED) The total number of disks required for the concerned volume. Possible values are at least '1'. Changing this forces a new resource to be created.
#   size_in_gb (number)                      : (REQUIRED) The size of the Disk in GB. Changing this forces a new resource to be created.
#   sku_name (string)                        : (REQUIRED) The name of the Disk SKU. Possible values are 'Premium_LRS', 'PremiumV2_LRS', 'Premium_ZRS', 'Standard_LRS', 'StandardSSD_LRS', 'StandardSSD_ZRS' and 'UltraSSD_LRS'. Changing this forces a new resource to be created.
#
# data_disk block structure:
#   volume_name (string)     : (REQUIRED) The name of the Volume. Changing this forces a new resource to be created. ~> **Note:** Possible value for Application Server and Central Server is 'default'. ~> **Note:** Possible values for Database Server are 'hanaData', 'hanaLog', 'hanaShared' and 'usrSap'.
#   names (list)             : (REQUIRED) A list of full names of Data Disks per Volume. Changing this forces a new resource to be created.
#
# central_server block structure:
#   availability_set_name (string): The full name for the availability set. Changing this forces a new resource to be created.
#   load_balancer (block)         : A 'load_balancer' block. Changing this forces a new resource to be created.
#   virtual_machine (block)       : One or more 'virtual_machine' blocks. Changing this forces a new resource to be created.
#
# shared_storage block structure:
#   account_name (string)         : The full name of the Shared Storage Account. Changing this forces a new resource to be created.
#   private_endpoint_name (string): The full name of Private Endpoint for the Shared Storage Account. Changing this forces a new resource to be created.
#
# transport_create_and_mount block structure:
#   resource_group_id (string)                : The ID of the Resource Group of the transport File Share. Changing this forces a new resource to be created.
#   storage_account_name (string)             : The name of the Storage Account of the File Share. Changing this forces a new resource to be created.
#
# resource_names block structure:
#   application_server (block)    : An 'application_server' block. Changing this forces a new resource to be created.
#   central_server (block)        : A 'central_server' block. Changing this forces a new resource to be created.
#   database_server (block)       : A 'database_server' block. Changing this forces a new resource to be created.
#   shared_storage (block)        : A 'shared_storage' block. Changing this forces a new resource to be created.
#
# application_server_configuration block structure:
#   instance_count (number)                         : (REQUIRED) The number of instances for the Application Server. Possible values are at least '1'. Changing this forces a new resource to be created.
#   subnet_id (string)                              : (REQUIRED) The resource ID of the Subnet for the Application Server. Changing this forces a new resource to be created.
#   virtual_machine_configuration (block)           : (REQUIRED) A 'virtual_machine_configuration' block. Changing this forces a new resource to be created.
#
# virtual_machine block structure:
#   data_disk (block)              : One or more 'data_disk' blocks. Changing this forces a new resource to be created.
#   host_name (string)             : The full name of the host of the Virtual Machine. Changing this forces a new resource to be created.
#   network_interface_names (list) : A list of full names for the Network Interface of the Virtual Machine. Changing this forces a new resource to be created.
#   os_disk_name (string)          : The full name of the OS Disk attached to the Virtual Machine. Changing this forces a new resource to be created.
#   virtual_machine_name (string)  : The full name of the Virtual Machine in a single server SAP system. Changing this forces a new resource to be created.
#
# database_server_configuration block structure:
#   instance_count (number)                      : (REQUIRED) The number of instances for the Database Server. Possible values are at least '1'. Changing this forces a new resource to be created.
#   subnet_id (string)                           : (REQUIRED) The resource ID of the Subnet for the Database Server. Changing this forces a new resource to be created.
#   virtual_machine_configuration (block)        : (REQUIRED) A 'virtual_machine_configuration' block. Changing this forces a new resource to be created.
#   database_type (string)                       : The database type for the Database Server. Possible values are 'DB2' and 'HANA'. Changing this forces a new resource to be created.
#   disk_volume_configuration (block)            : One or more 'disk_volume_configuration' blocks. Changing this forces a new resource to be created.
#
# application_server block structure:
#   availability_set_name (string)    : The full name for the availability set. Changing this forces a new resource to be created.
#   virtual_machine (block)           : One or more 'virtual_machine' blocks. Changing this forces a new resource to be created.
#
# virtual_machine_configuration block structure:
#   image (block)                                : (REQUIRED) An 'image' block. Changing this forces a new resource to be created.
#   os_profile (block)                           : (REQUIRED) An 'os_profile' block. Changing this forces a new resource to be created.
#   virtual_machine_size (string)                : (REQUIRED) The size of the Virtual Machine. Changing this forces a new resource to be created.
#
# database_server block structure:
#   availability_set_name (string) : The full name for the availability set. Changing this forces a new resource to be created.
#   load_balancer (block)          : A 'load_balancer' block. Changing this forces a new resource to be created.
#   virtual_machine (block)        : One or more 'virtual_machine' blocks. Changing this forces a new resource to be created.
#
# image block structure:
#   offer (string)       : (REQUIRED) Specifies the offer of the platform image or marketplace image used to create the virtual machine. Changing this forces a new resource to be created.
#   publisher (string)   : (REQUIRED) The publisher of the Image. Possible values are 'RedHat' and 'SUSE'. Changing this forces a new resource to be created.
#   sku (string)         : (REQUIRED) The SKU of the Image. Changing this forces a new resource to be created.
#   version (string)     : (REQUIRED) Specifies the version of the platform image or marketplace image used to create the virtual machine. Changing this forces a new resource to be created.



# OPTIONAL VARIABLES

variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) The type of Managed Service Identity that should be configured on this SAP Three Tier Virtual Instance. Only possible value is 'UserAssigned'.
#   identity_ids (list)     : (REQUIRED) A list of User Assigned Managed Identity IDs to be assigned to this SAP Three Tier Virtual Instance.


variable "managed_resource_group_name" {
  description = "The name of the managed Resource Group for the SAP Three Tier Virtual Instance. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the SAP Three Tier Virtual Instance."
  type        = map(any)
  default     = null
}
