# azurerm_application_security_group

Manages an Application Security Group.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/application_security_group"   
}

inputs = {
   name = "name of application_security_group"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Optional associated resource

| `tfstate_input` variable | Information |
| -------- | ----------- |
| **private_endpoint_id** | If set to a valid `azurerm_private_endpoint` `id`, makes a **azurerm_private_endpoint_application_security_group_association** - Manages an association between Private Endpoint and Application Security Group.|

Example associated resources in a `tfstate_inputs` block:

```hcl
tfstate_inputs = {
   private_endpoint_id = "path/to/private_endpoint_component:id"
}
```


## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name of the Application Security Group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Application Security Group. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Application Security Group. | 

Additionally, all variables are provided as outputs.
