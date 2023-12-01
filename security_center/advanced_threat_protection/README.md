# azurerm_advanced_threat_protection

Manages a resources Advanced Threat Protection setting.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "security_center/advanced_threat_protection" 
}

inputs = {
   target_resource_id = "target_resource_id of advanced_threat_protection" 
   enabled = "enabled of advanced_threat_protection" 
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
| **target_resource_id** | string |  The ID of the Azure Resource which to enable Advanced Threat Protection on. Changing this forces a new resource to be created. | 
| **enabled** | bool |  Should Advanced Threat Protection be enabled on this resource? | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Advanced Threat Protection resource. | 

Additionally, all variables are provided as outputs.
