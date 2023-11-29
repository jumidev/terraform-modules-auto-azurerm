# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of this Dedicated Host. Changing this forces a new resource to be created."
  type        = string

}
variable "dedicated_host_group_id" {
  description = "(REQUIRED) Specifies the ID of the Dedicated Host Group where the Dedicated Host should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specify the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) Specify the SKU name of the Dedicated Host. Possible values are 'DADSv5-Type1', 'DASv4-Type1', 'DASv4-Type2', 'DASv5-Type1', 'DCSv2-Type1', 'DDSv4-Type1', 'DDSv4-Type2', 'DDSv5-Type1', 'DSv3-Type1', 'DSv3-Type2', 'DSv3-Type3', 'DSv3-Type4', 'DSv4-Type1', 'DSv4-Type2', 'DSv5-Type1', 'EADSv5-Type1', 'EASv4-Type1', 'EASv4-Type2', 'EASv5-Type1', 'EDSv4-Type1', 'EDSv4-Type2', 'EDSv5-Type1', 'ESv3-Type1', 'ESv3-Type2', 'ESv3-Type3', 'ESv3-Type4', 'ESv4-Type1', 'ESv4-Type2', 'ESv5-Type1', 'FSv2-Type2', 'FSv2-Type3', 'FSv2-Type4', 'FXmds-Type1', 'LSv2-Type1', 'LSv3-Type1', 'MDMSv2MedMem-Type1', 'MDSv2MedMem-Type1', 'MMSv2MedMem-Type1', 'MS-Type1', 'MSm-Type1', 'MSmv2-Type1', 'MSv2-Type1', 'MSv2MedMem-Type1', 'NVASv4-Type1' and 'NVSv3-Type1'. Changing this forces a new resource to be created."
  type        = string

}
variable "platform_fault_domain" {
  description = "(REQUIRED) Specify the fault domain of the Dedicated Host Group in which to create the Dedicated Host. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "auto_replace_on_failure" {
  description = "Should the Dedicated Host automatically be replaced in case of a Hardware Failure? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "license_type" {
  description = "Specifies the software license type that will be applied to the VMs deployed on the Dedicated Host. Possible values are 'None', 'Windows_Server_Hybrid' and 'Windows_Server_Perpetual'. Defaults to 'None'."
  type        = string
  default     = "None"
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
