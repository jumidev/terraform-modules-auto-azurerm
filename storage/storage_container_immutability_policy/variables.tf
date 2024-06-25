# REQUIRED VARIABLES

variable "storage_container_resource_manager_id" {
  description = "(REQUIRED) The Resource Manager ID of the Storage Container where this Immutability Policy should be applied. Changing this forces a new resource to be created."
  type        = string

}
variable "immutability_period_in_days" {
  description = "(REQUIRED) The time interval in days that the data needs to be kept in a non-erasable and non-modifiable state."
  type        = number

}

# OPTIONAL VARIABLES

variable "locked" {
  description = "Whether to lock this immutability policy. Cannot be set to 'false' once the policy has been locked. !> **Locking an Immutability Policy** Once an Immutability Policy has been locked, it cannot be unlocked. After locking, it will only be possible to increase the value for 'retention_period_in_days' up to 5 times for the lifetime of the policy. No other properties will be updateable. Furthermore, the Storage Container and the Storage Account in which it resides will become protected by the policy. It will no longer be possible to delete the Storage Container or the Storage Account. Please refer to [official documentation](https://learn.microsoft.com/en-us/azure/storage/blobs/immutable-policy-configure-container-scope?tabs=azure-portal#lock-a-time-based-retention-policy) for more information."
  type        = string
  default     = null
}
variable "protected_append_writes_all_enabled" {
  description = "Whether to allow protected append writes to block and append blobs to the container. Defaults to 'false'. Cannot be set with 'protected_append_writes_enabled'."
  type        = bool
  default     = false
}
variable "protected_append_writes_enabled" {
  description = "Whether to allow protected append writes to append blobs to the container. Defaults to 'false'. Cannot be set with 'protected_append_writes_all_enabled'."
  type        = bool
  default     = false
}
