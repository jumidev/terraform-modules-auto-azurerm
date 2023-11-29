# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies The name of the Mobile Network Packet Core Control Plane. Changing this forces a new Mobile Network Packet Core Control Plane to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group where the Mobile Network Packet Core Control Plane should exist. Changing this forces a new Mobile Network Packet Core Control Plane to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Mobile Network Packet Core Control Plane should exist. Changing this forces a new Mobile Network Packet Core Control Plane to be created."
  type        = string

}
variable "site_ids" {
  description = "(REQUIRED) A list of Mobile Network Site IDs in which this packet core control plane should be deployed. The Sites must be in the same location as the packet core control plane."
  type        = list(any)

}
variable "sku" {
  description = "(REQUIRED) The SKU defining the throughput and SIM allowances for this packet core control plane deployment. Possible values are 'G0', 'G1', 'G2', 'G3', 'G4', 'G5' and 'G10'."
  type        = string

}
variable "local_diagnostics_access" {
  description = "(REQUIRED) One or more 'local_diagnostics_access' blocks. Specifies the Kubernetes ingress configuration that controls access to the packet core diagnostics through local APIs."
  type        = map(map(any))
}
#
# local_diagnostics_access block structure:
#   authentication_type (string)            : (REQUIRED) How to authenticate users to access local diagnostics APIs. Possible values are 'AAD' and 'Password'.
#   https_server_certificate_url (string)   : The versionless certificate URL used to secure local access to packet core diagnostics over local APIs by the Kubernetes ingress.



# OPTIONAL VARIABLES

variable "control_plane_access_name" {
  description = "Specifies the logical name for this interface. This should match one of the interfaces configured on your Azure Stack Edge device."
  type        = string
  default     = null
}
variable "control_plane_access_ipv4_address" {
  description = "The IPv4 address for the control plane interface. This should match one of the interfaces configured on your Azure Stack Edge device."
  type        = string
  default     = null
}
variable "control_plane_access_ipv4_subnet" {
  description = "The IPv4 subnet for the control plane interface. This should match one of the interfaces configured on your Azure Stack Edge device."
  type        = string
  default     = null
}
variable "control_plane_access_ipv4_gateway" {
  description = "The default IPv4 gateway for the control plane interface. This should match one of the interfaces configured on your Azure Stack Edge device."
  type        = string
  default     = null
}
variable "user_equipment_mtu_in_bytes" {
  description = "Specifies the MTU in bytes that can be sent to the user equipment. The same MTU is set on the user plane data links for all data networks. The MTU set on the user plane access link will be 60 bytes greater than this value to allow for GTP encapsulation."
  type        = string
  default     = null
}
variable "core_network_technology" {
  description = "The core network technology generation. Possible values are '5GC' and 'EPC'."
  type        = string
  default     = null
}
variable "platform" {
  description = "A 'platform' block."
  type        = map(any)
  default     = null
}
#
# platform block structure          :
#   type (string)                     : (REQUIRED) Specifies the platform type where the packet core is deployed. Possible values are 'AKS-HCI', '3P-AZURE-STACK-HCI' and 'BaseVM'.
#   edge_device_id (string)           : The ID of the Azure Stack Edge device where the packet core is deployed. If the device is part of a fault-tolerant pair, either device in the pair can be specified.
#   arc_kubernetes_cluster_id (string): The ID of the Azure Arc connected cluster where the packet core is deployed.
#   stack_hci_cluster_id (string)     : The ID of the Azure Stack HCI cluster where the packet core is deployed.
#   custom_location_id (string)       : The ID of the Azure Arc custom location where the packet core is deployed.


variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (list)     : (REQUIRED) A list of the IDs for User Assigned Managed Identity resources to be assigned.


variable "interoperability_settings_json" {
  description = "Settings in JSON format to allow interoperability with third party components e.g. RANs and UEs."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Mobile Network Packet Core Control Plane."
  type        = map(any)
  default     = null
}
variable "software_version" {
  description = "Specifies the version of the packet core software that is deployed."
  type        = string
  default     = null
}
