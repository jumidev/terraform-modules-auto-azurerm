# azurerm_log_analytics_linked_service



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "log_analytics/log_analytics_linked_service"   
}
inputs = {
   resource_group_name = "${resource_group}"   
   # workspace_id → set in component_inputs
}
component_inputs = {
   workspace_id = "path/to/log_analytics_workspace_component:id"   
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
| **resource_group_name** | string |  The name of the resource group in which the Log Analytics Linked Service is created. Changing this forces a new resource to be created. | 
| **workspace_id** | string |  The ID of the Log Analytics Workspace that will contain the Log Analytics Linked Service resource. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **read_access_id** | string |  The ID of the readable Resource that will be linked to the workspace. This should be used for linking to an Automation Account resource. | 
| **write_access_id** | string |  The ID of the writable Resource that will be linked to the workspace. This should be used for linking to a Log Analytics Cluster resource. ~> **NOTE:** You must define at least one of the above access resource id attributes (e.g. `read_access_id` or `write_access_id`). | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **write_access_id** | string | No  | The ID of the writable Resource that will be linked to the workspace. This should be used for linking to a Log Analytics Cluster resource. ~> **NOTE:** You must define at least one of the above access resource id attributes (e.g. `read_access_id` or `write_access_id`). In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The Log Analytics Linked Service ID. | 
| **name** | string | No  | The generated name of the Linked Service. The format for this attribute is always `<workspace name>/<linked service type>`(e.g. `workspace1/Automation` or `workspace1/Cluster`) | 

Additionally, all variables are provided as outputs.
