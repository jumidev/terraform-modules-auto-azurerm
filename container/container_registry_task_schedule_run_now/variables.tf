# REQUIRED VARIABLES

variable "container_registry_task_id" {
  description = "(REQUIRED) The ID of the Container Registry Task that to be scheduled. Changing this forces a new Container Registry Task Schedule to be created."
  type        = string

}
