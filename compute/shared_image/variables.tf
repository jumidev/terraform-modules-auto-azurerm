# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Shared Image. Changing this forces a new resource to be created."
  type        = string

}
variable "gallery_name" {
  description = "(REQUIRED) Specifies the name of the Shared Image Gallery in which this Shared Image should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Shared Image Gallery exists. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the Shared Image Gallery exists. Changing this forces a new resource to be created."
  type        = string

}
variable "identifier" {
  description = "(REQUIRED) An 'identifier' block."
  type        = map(any)
}
#
# identifier block structure:
#   offer (string)            : (REQUIRED) The Offer Name for this Shared Image. Changing this forces a new resource to be created.
#   publisher (string)        : (REQUIRED) The Publisher Name for this Gallery Image. Changing this forces a new resource to be created.
#   sku (string)              : (REQUIRED) The Name of the SKU for this Gallery Image. Changing this forces a new resource to be created.


variable "os_type" {
  description = "(REQUIRED) The type of Operating System present in this Shared Image. Possible values are 'Linux' and 'Windows'. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "purchase_plan" {
  description = "A 'purchase_plan' block."
  type        = map(any)
  default     = null
}
#
# purchase_plan block structure:
#   name (string)                : (REQUIRED) The Purchase Plan Name for this Shared Image. Changing this forces a new resource to be created.
#   publisher (string)           : The Purchase Plan Publisher for this Gallery Image. Changing this forces a new resource to be created.
#   product (string)             : The Purchase Plan Product for this Gallery Image. Changing this forces a new resource to be created.


variable "description" {
  description = "A description of this Shared Image."
  type        = string
  default     = null
}
variable "disk_types_not_allowed" {
  description = "One or more Disk Types not allowed for the Image. Possible values include 'Standard_LRS' and 'Premium_LRS'."
  type        = string
  default     = null
}
variable "end_of_life_date" {
  description = "The end of life date in RFC3339 format of the Image."
  type        = string
  default     = null
}
variable "eula" {
  description = "The End User Licence Agreement for the Shared Image. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "specialized" {
  description = "Specifies that the Operating System used inside this Image has not been Generalized (for example, 'sysprep' on Windows has not been run). Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "architecture" {
  description = "CPU architecture supported by an OS. Possible values are 'x64' and 'Arm64'. Defaults to 'x64'. Changing this forces a new resource to be created."
  type        = string
  default     = "x64"
}
variable "hyper_v_generation" {
  description = "The generation of HyperV that the Virtual Machine used to create the Shared Image is based on. Possible values are 'V1' and 'V2'. Defaults to 'V1'. Changing this forces a new resource to be created."
  type        = string
  default     = "V1"
}
variable "max_recommended_vcpu_count" {
  description = "Maximum count of vCPUs recommended for the Image."
  type        = number
  default     = null
}
variable "min_recommended_vcpu_count" {
  description = "Minimum count of vCPUs recommended for the Image."
  type        = number
  default     = null
}
variable "max_recommended_memory_in_gb" {
  description = "Maximum memory in GB recommended for the Image."
  type        = number
  default     = null
}
variable "min_recommended_memory_in_gb" {
  description = "Minimum memory in GB recommended for the Image."
  type        = number
  default     = null
}
variable "privacy_statement_uri" {
  description = "The URI containing the Privacy Statement associated with this Shared Image. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "release_note_uri" {
  description = "The URI containing the Release Notes associated with this Shared Image."
  type        = string
  default     = null
}
variable "trusted_launch_supported" {
  description = "Specifies if supports creation of both Trusted Launch virtual machines and Gen2 virtual machines with standard security created from the Shared Image. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "trusted_launch_enabled" {
  description = "Specifies if Trusted Launch has to be enabled for the Virtual Machine created from the Shared Image. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "confidential_vm_supported" {
  description = "Specifies if supports creation of both Confidential virtual machines and Gen2 virtual machines with standard security from a compatible Gen2 OS disk VHD or Gen2 Managed image. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "confidential_vm_enabled" {
  description = "Specifies if Confidential Virtual Machines enabled. It will enable all the features of trusted, with higher confidentiality features for isolate machines or encrypted data. Available for Gen2 machines. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "accelerated_network_support_enabled" {
  description = "Specifies if the Shared Image supports Accelerated Network. Changing this forces a new resource to be created."
  type        = bool
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the Shared Image."
  type        = map(any)
  default     = null
}
variable "shared_image_gallery_resource_group_name" {
  description = "The name of the Resource Group in which the Shared Image Gallery exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
