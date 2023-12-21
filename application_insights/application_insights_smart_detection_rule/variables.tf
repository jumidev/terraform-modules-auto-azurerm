# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Application Insights Smart Detection Rule. Valid values include 'Slow page load time', 'Slow server response time', 'Long dependency duration', 'Degradation in server response time', 'Degradation in dependency duration', 'Degradation in trace severity ratio', 'Abnormal rise in exception volume', 'Potential memory leak detected', 'Potential security issue detected' and 'Abnormal rise in daily data volume', 'Long dependency duration', 'Degradation in server response time', 'Degradation in dependency duration', 'Degradation in trace severity ratio', 'Abnormal rise in exception volume', 'Potential memory leak detected', 'Potential security issue detected', 'Abnormal rise in daily data volume'. Changing this forces a new resource to be created."
  type        = string

}
variable "application_insights_id" {
  description = "(REQUIRED) The ID of the Application Insights component on which the Smart Detection Rule operates. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "enabled" {
  description = "Is the Application Insights Smart Detection Rule enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "send_emails_to_subscription_owners" {
  description = "Do emails get sent to subscription owners? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "additional_email_recipients" {
  description = "Specifies a list of additional recipients that will be sent emails on this Application Insights Smart Detection Rule."
  type        = list(any)
  default     = []
}
