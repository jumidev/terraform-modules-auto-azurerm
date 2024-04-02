# azurerm_synapse_sql_pool_workload_classifier



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "synapse/synapse_sql_pool_workload_classifier"   
}

inputs = {
   name = "The name which should be used for this Synapse SQL Pool Workload Classifier..."   
   workload_group_id = "The ID of the Synapse SQL Pool Workload Group"   
   member_name = "The workload classifier member name used to classified against..."   
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
| **name** | string |  The name which should be used for this Synapse SQL Pool Workload Classifier. Changing this forces a new Synapse SQL Pool Workload Classifier to be created. | 
| **workload_group_id** | string |  The ID of the Synapse SQL Pool Workload Group. Changing this forces a new Synapse SQL Pool Workload Classifier to be created. | 
| **member_name** | string |  The workload classifier member name used to classified against. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **context** | string |  -  |  Specifies the session context value that a request can be classified against. | 
| **end_time** | string |  -  |  The workload classifier end time for classification. It's of the `HH:MM` format in UTC time zone. | 
| **importance** | string |  `low`, `below_normal`, `normal`, `above_normal`, `high`  |  The workload classifier importance. The allowed values are `low`, `below_normal`, `normal`, `above_normal` and `high`. | 
| **label** | string |  -  |  Specifies the label value that a request can be classified against. | 
| **start_time** | string |  -  |  The workload classifier start time for classification. It's of the `HH:MM` format in UTC time zone. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **start_time** | string | No  | The workload classifier start time for classification. It's of the `HH:MM` format in UTC time zone. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Synapse SQL Pool Workload Classifier. | 

Additionally, all variables are provided as outputs.
