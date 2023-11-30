# azurerm_synapse_sql_pool_workload_classifier

Manages a Synapse SQL Pool Workload Classifier.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "synapse/synapse_sql_pool_workload_classifier" 
}

inputs = {
   name = "name of synapse_sql_pool_workload_classifier" 
   workload_group_id = "workload_group_id of synapse_sql_pool_workload_classifier" 
   member_name = "member_name of synapse_sql_pool_workload_classifier" 
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
| **var.name** | string  The name which should be used for this Synapse SQL Pool Workload Classifier. Changing this forces a new Synapse SQL Pool Workload Classifier to be created. | 
| **var.workload_group_id** | string  The ID of the Synapse SQL Pool Workload Group. Changing this forces a new Synapse SQL Pool Workload Classifier to be created. | 
| **var.member_name** | string  The workload classifier member name used to classified against. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.context** | string  -  |  Specifies the session context value that a request can be classified against. | 
| **var.end_time** | string  -  |  The workload classifier end time for classification. It's of the `HH:MM` format in UTC time zone. | 
| **var.importance** | string  `low`, `below_normal`, `normal`, `above_normal`, `high`  |  The workload classifier importance. The allowed values are `low`, `below_normal`, `normal`, `above_normal` and `high`. | 
| **var.label** | string  -  |  Specifies the label value that a request can be classified against. | 
| **var.start_time** | string  -  |  The workload classifier start time for classification. It's of the `HH:MM` format in UTC time zone. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Synapse SQL Pool Workload Classifier. | 

Additionally, all variables are provided as outputs.
