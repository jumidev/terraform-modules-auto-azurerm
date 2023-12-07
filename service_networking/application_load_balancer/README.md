# azurerm_application_load_balancer

Manages an Application Gateway for Containers (ALB).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "service_networking/application_load_balancer"   
}

inputs = {
   name = "The name which should be used for this Application Gateway for Containers (ALB)..."   
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
| **subnet_id** | If set to a valid `azurerm_subnet` `id`, makes a **azurerm_application_load_balancer_subnet_association** - Manages an association between an Application Gateway for Containers and a Subnet.|

Example associated resources in a `tfstate_inputs` block:

```hcl
tfstate_inputs = {
   subnet_id = "path/to/subnet_component:id"
}
```


## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name which should be used for this Application Gateway for Containers (ALB). Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of Resource Group where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created. | 
| **location** | string |  The Azure Region where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **tags** | map |  A mapping of tags which should be assigned to the Application Gateway for Containers (ALB). | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Application Gateway for Containers (ALB). | 
| **primary_configuration_endpoint** | string | No  | The primary configuration endpoints of the Application Gateway for Containers (ALB). | 

Additionally, all variables are provided as outputs.
