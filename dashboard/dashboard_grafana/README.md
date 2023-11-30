# azurerm_dashboard_grafana

Manages a Dashboard Grafana.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "dashboard/dashboard_grafana" 
}

inputs = {
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```