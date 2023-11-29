# azurerm_synapse_sql_pool_workload_classifier

Manages a Synapse SQL Pool Workload Classifier.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Synapse SQL Pool Workload Classifier. Changing this forces a new Synapse SQL Pool Workload Classifier to be created. | 
| **workload_group_id** | string | True | -  |  -  | The ID of the Synapse SQL Pool Workload Group. Changing this forces a new Synapse SQL Pool Workload Classifier to be created. | 
| **member_name** | string | True | -  |  -  | The workload classifier member name used to classified against. | 
| **context** | string | False | -  |  -  | Specifies the session context value that a request can be classified against. | 
| **end_time** | string | False | -  |  -  | The workload classifier end time for classification. It's of the `HH:MM` format in UTC time zone. | 
| **importance** | string | False | -  |  `low`, `below_normal`, `normal`, `above_normal`, `high`  | The workload classifier importance. The allowed values are `low`, `below_normal`, `normal`, `above_normal` and `high`. | 
| **label** | string | False | -  |  -  | Specifies the label value that a request can be classified against. | 
| **start_time** | string | False | -  |  -  | The workload classifier start time for classification. It's of the `HH:MM` format in UTC time zone. | 

