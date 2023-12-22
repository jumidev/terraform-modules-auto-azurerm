# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Automation. Changing this forces a new Automation to be created."
  type        = string

}
variable "automation_account_id" {
  description = "(REQUIRED) The ID of Automation Account to manage this Source Control. Changing this forces a new Automation Source Control to be created."
  type        = string

}
variable "schedule" {
  description = "(REQUIRED) A 'schedule' blocks."
  type        = map(map(any))
}
#
# schedule block structure    :
#   frequency (string)          : (REQUIRED) The frequency of the schedule. - can be either 'OneTime', 'Day', 'Hour', 'Week', or 'Month'.
#   is_enabled (bool)           : Whether the schedule is enabled. Defaults to 'true'.
#   description (string)        : A description for this Schedule.
#   interval (number)           : The number of 'frequency's between runs. Only valid when frequency is 'Day', 'Hour', 'Week', or 'Month'.
#   start_time (string)         : Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created.
#   expiry_time (string)        : The end time of the schedule.
#   time_zone (string)          : The timezone of the start time. Defaults to 'Etc/UTC'. For possible values see: <https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows>
#   advanced_week_days (number) : List of days of the week that the job should execute on. Only valid when frequency is 'Week'. Possible values include 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', and 'Sunday'.
#   advanced_month_days (number): List of days of the month that the job should execute on. Must be between '1' and '31'. '-1' for last day of the month. Only valid when frequency is 'Month'.



# OPTIONAL VARIABLES

variable "duration" {
  description = "Maximum time allowed for the software update configuration run. using format 'PT[n]H[n]M[n]S' as per ISO8601. Defaults to 'PT2H'."
  type        = string
  default     = "PT2H"
}
variable "linux" {
  description = "A 'linux' block."
  type        = map(any)
  default     = null
}
#
# linux block structure            :
#   classifications_included (string): Specifies the list of update classifications included in the Software Update Configuration. Possible values are 'Unclassified', 'Critical', 'Security' and 'Other'.
#   excluded_packages (list)         : Specifies a list of packages to excluded from the Software Update Configuration.
#   included_packages (list)         : Specifies a list of packages to included from the Software Update Configuration.
#   reboot (string)                  : Specifies the reboot settings after software update, possible values are 'IfRequired', 'Never', 'RebootOnly' and 'Always'. Defaults to 'IfRequired'.


variable "windows" {
  description = "A 'windows' block."
  type        = map(any)
  default     = null
}
#
# windows block structure               :
#   classifications_included (string)     : Specifies the list of update classification. Possible values are 'Unclassified', 'Critical', 'Security', 'UpdateRollup', 'FeaturePack', 'ServicePack', 'Definition', 'Tools' and 'Updates'.
#   excluded_knowledge_base_numbers (list): Specifies a list of knowledge base numbers excluded.
#   included_knowledge_base_numbers (list): Specifies a list of knowledge base numbers included.
#   reboot (string)                       : Specifies the reboot settings after software update, possible values are 'IfRequired', 'Never', 'RebootOnly' and 'Always'. Defaults to 'IfRequired'.


variable "virtual_machine_ids" {
  description = "Specifies a list of Azure Resource IDs of azure virtual machines."
  type        = list(any)
  default     = []
}
variable "non_azure_computer_names" {
  description = "Specifies a list of names of non-Azure machines for the software update configuration."
  type        = list(any)
  default     = []
}
variable "target" {
  description = "A 'target' blocks."
  type        = map(map(any))
  default     = null
}
#
# target block structure  :
#   azure_query (string)    : One or more 'azure_query' blocks.
#   non_azure_query (string): One or more 'non_azure_query' blocks.


variable "post_task" {
  description = "A 'post_task' blocks."
  type        = map(map(any))
  default     = null
}
#
# post_task block structure:
#   parameters (string)      : Specifies a map of parameters for the task.
#   source (string)          : The name of the runbook for the post task.


variable "pre_task" {
  description = "A 'pre_task' blocks."
  type        = map(map(any))
  default     = null
}
#
# pre_task block structure:
#   parameters (string)     : Specifies a map of parameters for the task.
#   source (string)         : The name of the runbook for the pre task.


