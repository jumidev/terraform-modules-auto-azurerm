# azurerm_application_load_balancer_frontend

Manages an Application Gateway for Containers Frontend.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "service_networking/application_load_balancer_frontend" 
}

inputs = {
   name = "name of application_load_balancer_frontend" 
   application_load_balancer_id = "application_load_balancer_id of application_load_balancer_frontend" 
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
| **var.name** | string  The name which should be used for this Application Gateway for Containers Frontend. Changing this forces a new resource to be created. | 
| **var.application_load_balancer_id** | string  The ID of the Application Gateway for Containers. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.tags** | map  A mapping of tags which should be assigned to the Application Gateway for Containers Frontend. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Application Gateway for Containers Frontend. | 
| **fully_qualified_domain_name** | string | No  | The Fully Qualified Domain Name of the DNS record associated to an Application Gateway for Containers Frontend. | 

Additionally, all variables are provided as outputs.
