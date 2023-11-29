# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Application Insights WebTest. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Application Insights WebTest. Changing this forces a new resource"
  type        = string

}
variable "application_insights_id" {
  description = "(REQUIRED) The ID of the Application Insights component on which the WebTest operates. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. It needs to correlate with location of parent resource (azurerm_application_insights)."
  type        = string

}
variable "kind" {
  description = "(REQUIRED) The kind of web test that this web test watches. Choices are 'ping' and 'multistep'. Changing this forces a new resource to be created."
  type        = string

}
variable "geo_locations" {
  description = "(REQUIRED) A list of where to physically run the tests from to give global coverage for accessibility of your application."
  type        = list(any)

}
variable "configuration" {
  description = "(REQUIRED) An XML configuration specification for a WebTest ([see here for more information](https://docs.microsoft.com/rest/api/application-insights/webtests/createorupdate/))."
  type        = string

}

# OPTIONAL VARIABLES

variable "frequency" {
  description = "Interval in seconds between test runs for this WebTest. Valid options are '300', '600' and '900'. Defaults to '300'."
  type        = string
  default     = "300"
}
variable "timeout" {
  description = "Seconds until this WebTest will timeout and fail. Default is '30'."
  type        = string
  default     = "30"
}
variable "enabled" {
  description = "Is the test actively being monitored."
  type        = bool
  default     = null
}
variable "retry_enabled" {
  description = "Allow for retries should this WebTest fail."
  type        = bool
  default     = null
}
variable "description" {
  description = "Purpose/user defined descriptive test for this WebTest."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
