# azurerm_consumption_budget_management_group

Manages a Consumption Budget for a Management Group.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "consumption/consumption_budget_management_group"   
}

inputs = {
   name = "The name which should be used for this Management Group Consumption Budget..."   
   # management_group_id → set in tfstate_inputs
   amount = "The total amount of cost to track with the budget"   
   time_period = {
      start_date = "..."      
   }
   
   notification = {
      this_notification = {
         operator = "Possible values: EqualTo | GreaterThan | GreaterThanOrEqualTo"         
         threshold = "..."         
         contact_emails = "..."         
      }
      
   }
   
}

tfstate_inputs = {
   management_group_id = "path/to/management_group_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name which should be used for this Management Group Consumption Budget. Changing this forces a new resource to be created. | 
| **management_group_id** | string |  The ID of the Management Group. Changing this forces a new resource to be created. | 
| **amount** | string |  The total amount of cost to track with the budget. | 
| **time_period** | [block](#time_period-block-structure) |  A `time_period` block. | 
| **notification** | [block](#notification-block-structure) |  One or more `notification` blocks. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **time_grain** | string |  `Monthly`  |  `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly`, `Quarterly`  |  The time covered by a budget. Tracking of the amount will be reset based on the time grain. Must be one of `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly` and `Quarterly`. Defaults to `Monthly`. Changing this forces a new resource to be created. | 
| **filter** | [block](#filter-block-structure) |  -  |  -  |  A `filter` block. | 

### `notification` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The comparison operator for the notification. Must be one of 'EqualTo', 'GreaterThan', or 'GreaterThanOrEqualTo'. |
| `threshold` | string | Yes | - | Threshold value associated with a notification. Notification is sent when the cost exceeded the threshold. It is always percent and has to be between 0 and 1000. |
| `contact_emails` | string | Yes | - | Specifies a list of email addresses to send the budget notification to when the threshold is exceeded. |
| `threshold_type` | string | No | Actual | The type of threshold for the notification. This determines whether the notification is triggered by forecasted costs or actual costs. The allowed values are 'Actual' and 'Forecasted'. Default is 'Actual'. Changing this forces a new resource to be created. |
| `enabled` | bool | No | True | Should the notification be enabled? Defaults to 'true'. |

### `dimension` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the column to use for the filter. The allowed values are 'ChargeType', 'Frequency', 'InvoiceId', 'Meter', 'MeterCategory', 'MeterSubCategory', 'PartNumber', 'PricingModel', 'Product', 'ProductOrderId', 'ProductOrderName', 'PublisherType', 'ReservationId', 'ReservationName', 'ResourceGroupName', 'ResourceGuid', 'ResourceId', 'ResourceLocation', 'ResourceType', 'ServiceFamily', 'ServiceName', 'SubscriptionID', 'SubscriptionName', 'UnitOfMeasure'. |
| `operator` | string | No | In | The operator to use for comparison. The allowed values are 'In'. Defaults to 'In'. |
| `values` | string | Yes | - | Specifies a list of values for the column. |

### `tag` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the tag to use for the filter. |
| `operator` | string | No | In | The operator to use for comparison. The allowed values are 'In'. Defaults to 'In'. |
| `values` | string | Yes | - | Specifies a list of values for the tag. |

### `time_period` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `start_date` | datetime | Yes | - | The start date for the budget. The start date must be first of the month and should be less than the end date. Budget start date must be on or after June 1, 2017. Future start date should not be more than twelve months. Past start date should be selected within the timegrain period. Changing this forces a new resource to be created. |
| `end_date` | datetime | No | - | The end date for the budget. If not set this will be 10 years after the start date. |

### `filter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `dimension` | [block](#dimension-block-structure) | No | - | One or more 'dimension' blocks to filter the budget on. |
| `tag` | [block](#tag-block-structure) | No | - | One or more 'tag' blocks to filter the budget on. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Management Group Consumption Budget. | 
| **etag** | string | No  | The ETag of the Management Group Consumption Budget. | 

Additionally, all variables are provided as outputs.
