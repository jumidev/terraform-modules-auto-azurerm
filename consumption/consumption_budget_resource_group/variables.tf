# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Resource Group Consumption Budget. Changing this forces a new Resource Group Consumption Budget to be created."
  type        = string

}
variable "resource_group_id" {
  description = "(REQUIRED) The ID of the Resource Group to create the consumption budget for in the form of /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1. Changing this forces a new Resource Group Consumption Budget to be created."
  type        = string

}
variable "amount" {
  description = "(REQUIRED) The total amount of cost to track with the budget."
  type        = string

}
variable "time_period" {
  description = "(REQUIRED) A 'time_period' block."
  type        = map(any)
}
#
# time_period block structure:
#   start_date (string)        : (REQUIRED) The start date for the budget. The start date must be first of the month and should be less than the end date. Budget start date must be on or after June 1, 2017. Future start date should not be more than twelve months. Past start date should be selected within the timegrain period. Changing this forces a new Resource Group Consumption Budget to be created.
#   end_date (string)          : The end date for the budget. If not set this will be 10 years after the start date.


variable "notification" {
  description = "(REQUIRED) One or more 'notification' blocks."
  type        = map(map(any))
}
#
# notification block structure:
#   operator (string)           : (REQUIRED) The comparison operator for the notification. Must be one of 'EqualTo', 'GreaterThan', or 'GreaterThanOrEqualTo'.
#   threshold (string)          : (REQUIRED) Threshold value associated with a notification. Notification is sent when the cost exceeded the threshold. It is always percent and has to be between 0 and 1000.
#   threshold_type (string)     : The type of threshold for the notification. This determines whether the notification is triggered by forecasted costs or actual costs. The allowed values are 'Actual' and 'Forecasted'. Default is 'Actual'. Changing this forces a new resource to be created.
#   contact_emails (list)       : Specifies a list of email addresses to send the budget notification to when the threshold is exceeded.
#   contact_groups (list)       : Specifies a list of Action Group IDs to send the budget notification to when the threshold is exceeded.
#   contact_roles (list)        : Specifies a list of contact roles to send the budget notification to when the threshold is exceeded.
#   enabled (bool)              : Should the notification be enabled? Defaults to 'true'.



# OPTIONAL VARIABLES

variable "time_grain" {
  description = "The time covered by a budget. Tracking of the amount will be reset based on the time grain. Must be one of 'BillingAnnual', 'BillingMonth', 'BillingQuarter', 'Annually', 'Monthly' and 'Quarterly'. Defaults to 'Monthly'. Changing this forces a new resource to be created."
  type        = string
  default     = "Monthly"
}
variable "filter" {
  description = "A 'filter' block."
  type        = map(any)
  default     = null
}
#
# filter block structure:
#   dimension (block)     : One or more 'dimension' blocks to filter the budget on.
#   tag (block)           : One or more 'tag' blocks to filter the budget on.
#
# tag block structure:
#   name (string)      : (REQUIRED) The name of the tag to use for the filter.
#   operator (string)  : The operator to use for comparison. The allowed values are 'In'. Defaults to 'In'.
#   values (list)      : (REQUIRED) Specifies a list of values for the tag.
#
# dimension block structure:
#   name (string)            : (REQUIRED) The name of the column to use for the filter. The allowed values are 'ChargeType', 'Frequency', 'InvoiceId', 'Meter', 'MeterCategory', 'MeterSubCategory', 'PartNumber', 'PricingModel', 'Product', 'ProductOrderId', 'ProductOrderName', 'PublisherType', 'ReservationId', 'ReservationName', 'ResourceGroupName', 'ResourceGuid', 'ResourceId', 'ResourceLocation', 'ResourceType', 'ServiceFamily', 'ServiceName', 'SubscriptionID', 'SubscriptionName', 'UnitOfMeasure'.
#   operator (string)        : The operator to use for comparison. The allowed values are 'In'. Defaults to 'In'.
#   values (list)            : (REQUIRED) Specifies a list of values for the column.


