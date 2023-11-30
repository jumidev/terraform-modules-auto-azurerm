# REQUIRED VARIABLES

variable "client_connection_port" {
  description = "(REQUIRED) Port to use when connecting to the cluster."
  type        = string

}
variable "http_gateway_port" {
  description = "(REQUIRED) Port that should be used by the Service Fabric Explorer to visualize applications and cluster status."
  type        = string

}
variable "lb_rule" {
  description = "(REQUIRED) One or more 'lb_rule' blocks."
  type        = map(map(any))
}
#
# lb_rule block structure    :
#   backend_port (string)      : (REQUIRED) LB Backend port.
#   frontend_port (string)     : (REQUIRED) LB Frontend port.
#   probe_protocol (string)    : (REQUIRED) Protocol for the probe. Can be one of 'tcp', 'udp', 'http', or 'https'.
#   probe_request_path (string): Path for the probe to check, when probe protocol is set to 'http'.
#   protocol (string)          : (REQUIRED) The transport protocol used in this rule. Can be one of 'tcp' or 'udp'.


variable "location" {
  description = "(REQUIRED) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "authentication" {
  description = "Controls how connections to the cluster are authenticated. A 'authentication' block."
  type        = map(any)
  default     = null
}
#
# authentication block structure:
#   active_directory (block)      : A 'active_directory' block.
#   certificate (block)           : One or more 'certificate' blocks.
#
# certificate block structure:
#   thumbprint (string)        : (REQUIRED) The thumbprint of the certificate.
#   type (string)              : (REQUIRED) The type of the certificate. Can be 'AdminClient' or 'ReadOnlyClient'.
#   common_name (string)       : The certificate's CN.
#
# active_directory block structure:
#   client_application_id (string)  : (REQUIRED) The ID of the Client Application.
#   cluster_application_id (string) : (REQUIRED) The ID of the Cluster Application.
#   tenant_id (string)              : (REQUIRED) The ID of the Tenant.


variable "backup_service_enabled" {
  description = "If true, backup service is enabled."
  type        = bool
  default     = null
}
variable "custom_fabric_setting" {
  description = "One or more 'custom_fabric_setting' blocks."
  type        = map(map(any))
  default     = null
}
#
# custom_fabric_setting block structure:
#   parameter (string)                   : (REQUIRED) Parameter name.
#   section (string)                     : (REQUIRED) Section name.
#   value (string)                       : (REQUIRED) Parameter value.


variable "dns_name" {
  description = "Hostname for the cluster. If unset the cluster's name will be used.."
  type        = string
  default     = null
}
variable "dns_service_enabled" {
  description = "If true, DNS service is enabled."
  type        = bool
  default     = null
}
variable "node_type" {
  description = "One or more 'node_type' blocks."
  type        = map(map(any))
  default     = null
}
#
# node_type block structure               :
#   application_port_range (string)         : (REQUIRED) Sets the port range available for applications. Format is '<from_port>-<to_port>', for example '10000-20000'.
#   data_disk_size_gb (int)                 : (REQUIRED) The size of the data disk in gigabytes..
#   ephemeral_port_range (string)           : (REQUIRED) Sets the port range available for the OS. Format is '<from_port>-<to_port>', for example '10000-20000'. There has to be at least 255 ports available and cannot overlap with 'application_port_range'..
#   vm_image_offer (string)                 : (REQUIRED) The offer type of the marketplace image cluster VMs will use.
#   vm_image_publisher (string)             : (REQUIRED) The publisher of the marketplace image cluster VMs will use.
#   vm_image_sku (string)                   : (REQUIRED) The SKU of the marketplace image cluster VMs will use.
#   vm_image_version (string)               : (REQUIRED) The version of the marketplace image cluster VMs will use.
#   vm_instance_count (int)                 : (REQUIRED) The number of instances this node type will launch.
#   vm_size (string)                        : (REQUIRED) The size of the instances in this node type.
#   capacities (string)                     : Specifies a list of key/value pairs used to set capacity tags for this node type.
#   data_disk_type (string)                 : The type of the disk to use for storing data. It can be one of 'Premium_LRS', 'Standard_LRS', or 'StandardSSD_LRS'. Defaults to 'Standard_LRS'.
#   multiple_placement_groups_enabled (bool): If set the node type can be composed of multiple placement groups.
#   placement_properties (string)           : Specifies a list of placement tags that can be used to indicate where services should run..
#   primary (string)                        : If set to true, system services will run on this node type. Only one node type should be marked as primary. Primary node type cannot be deleted or changed once they're created.
#   stateless (string)                      : If set to true, only stateless workloads can run on this node type.
#   vm_secrets (block)                      : One or more 'vm_secrets' blocks.
#
# vm_secrets block structure:
#   certificates (list)       : (REQUIRED) One or more 'certificates' blocks.
#   vault_id (string)         : (REQUIRED) The ID of the Vault that contain the certificates.


variable "password" {
  description = "Administrator password for the VMs that will be created as part of this cluster."
  type        = string
  default     = null
}
variable "sku" {
  description = "SKU for this cluster. Changing this forces a new resource to be created. Default is 'Basic', allowed values are either 'Basic' or 'Standard'."
  type        = string
  default     = "Basic"
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Resource Group."
  type        = map(any)
  default     = null
}
variable "upgrade_wave" {
  description = "Upgrade wave for the fabric runtime. Default is 'Wave0', allowed value must be one of 'Wave0', 'Wave1', or 'Wave2'."
  type        = string
  default     = "Wave0"
}
variable "username" {
  description = "Administrator password for the VMs that will be created as part of this cluster."
  type        = string
  default     = null
}
