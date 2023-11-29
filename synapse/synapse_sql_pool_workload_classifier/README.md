# azurerm_synapse_sql_pool_workload_classifier

Manages a Synapse SQL Pool Workload Classifier.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Synapse SQL Pool Workload Classifier. Changing this forces a new Synapse SQL Pool Workload Classifier to be created. | 
| **var.workload_group_id** | string | True | -  |  The ID of the Synapse SQL Pool Workload Group. Changing this forces a new Synapse SQL Pool Workload Classifier to be created. | 
| **var.member_name** | string | True | -  |  The workload classifier member name used to classified against. | 
| **var.context** | string | False | -  |  Specifies the session context value that a request can be classified against. | 
| **var.end_time** | string | False | -  |  The workload classifier end time for classification. It's of the `HH:MM` format in UTC time zone. | 
| **var.importance** | string | False | `low`, `below_normal`, `normal`, `above_normal`, `high`  |  The workload classifier importance. The allowed values are `low`, `below_normal`, `normal`, `above_normal` and `high`. | 
| **var.label** | string | False | -  |  Specifies the label value that a request can be classified against. | 
| **var.start_time** | string | False | -  |  The workload classifier start time for classification. It's of the `HH:MM` format in UTC time zone. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **workload_group_id** | string  | - | 
| **member_name** | string  | - | 
| **context** | string  | - | 
| **end_time** | string  | - | 
| **importance** | string  | - | 
| **label** | string  | - | 
| **start_time** | string  | - | 
| **id** | string  | The ID of the Synapse SQL Pool Workload Classifier. | 