# azurerm_application_load_balancer

Manages an Application Gateway for Containers (ALB).

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "service_networking/application_load_balancer" 
}

inputs = {
   name = "name of application_load_balancer" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Application Gateway for Containers (ALB). Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of Resource Group where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The Azure Region where the Application Gateway for Containers (ALB) should exist. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | A mapping of tags which should be assigned to the Application Gateway for Containers (ALB). | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Application Gateway for Containers (ALB). | 
| **primary_configuration_endpoint** | string | No  | The primary configuration endpoints of the Application Gateway for Containers (ALB). | 

Additionally, all variables are provided as outputs.
