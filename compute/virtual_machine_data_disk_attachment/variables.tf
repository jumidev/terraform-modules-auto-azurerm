# REQUIRED VARIABLES

variable "managed_disk_id" {
  description = "(REQUIRED) The ID of an existing Managed Disk which should be attached. Changing this forces a new resource to be created."
  type        = string

}
variable "lun" {
  description = "(REQUIRED) The Logical Unit Number of the Data Disk, which needs to be unique within the Virtual Machine. Changing this forces a new resource to be created."
  type        = number
  default     = 3
}
variable "caching" {
  description = "(REQUIRED) Specifies the caching requirements for this Data Disk. Possible values include 'None', 'ReadOnly' and 'ReadWrite'."
  type        = string
  default     = "ReadOnly"
}

# OPTIONAL VARIABLES

variable "create_option" {
  description = "The Create Option of the Data Disk, such as 'Empty' or 'Attach'. Defaults to 'Attach'. Changing this forces a new resource to be created."
  type        = string
  default     = "Attach"
}
variable "write_accelerator_enabled" {
  description = "Specifies if Write Accelerator is enabled on the disk. This can only be enabled on 'Premium_LRS' managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to 'false'."
  type        = bool
  default     = false
}
