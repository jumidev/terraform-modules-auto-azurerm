# REQUIRED VARIABLES

variable "automation_account_id" {
  description = "(REQUIRED) The ID of Automation Account to manage this Watcher. Changing this forces a new Watcher to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Automation Watcher. Changing this forces a new Automation Watcher to be created."
  type        = string

}
variable "execution_frequency_in_seconds" {
  description = "(REQUIRED) Specify the frequency at which the watcher is invoked."
  type        = int

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Automation Watcher should exist. Changing this forces a new Automation Watcher to be created."
  type        = string

}
variable "script_name" {
  description = "(REQUIRED) Specify the name of an existing runbook this watcher is attached to. Changing this forces a new Automation to be created."
  type        = string

}
variable "script_run_on" {
  description = "(REQUIRED) Specify the name of the Hybrid work group the watcher will run on."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description of this Automation Watcher."
  type        = string
  default     = null
}
variable "etag" {
  description = "A string of etag assigned to this Automation Watcher."
  type        = string
  default     = null
}
variable "script_parameters" {
  description = "Specifies a list of key-vaule parameters. Changing this forces a new Automation watcher to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Automation Watcher."
  type        = map(any)
  default     = null
}
