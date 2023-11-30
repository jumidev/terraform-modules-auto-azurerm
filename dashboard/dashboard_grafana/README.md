# azurerm_dashboard_grafana

Manages a Dashboard Grafana.

## Example `component.hclt`

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



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
