# azurerm_app_service_virtual_network_swift_connection

Manages an App Service Virtual Network Association for [Regional VNet Integration](https://docs.microsoft.com/azure/app-service/web-sites-integrate-with-vnet#regional-vnet-integration).This resource can be used for both App Services and Function Apps.~> **Note:** The following resources support associating the vNet for Regional vNet Integration directly on the resource and via the `azurerm_app_service_virtual_network_swift_connection` resource. You can't use both simultaneously.- [azurerm_linux_function_app](linux_function_app.html)- [azurerm_linux_function_app_slot](linux_function_app_slot.html)- [azurerm_linux_web_app](linux_web_app.html)- [azurerm_linux_web_app_slot](linux_web_app_slot.html)- [azurerm_logic_app_standard](logic_app_standard.html)- [azurerm_windows_function_app](windows_function_app.html)- [azurerm_windows_function_app_slot](windows_function_app_slot.html)- [azurerm_windows_web_app](windows_web_app.html)- [azurerm_windows_web_app_slot](windows_web_app_slot.html)This resource requires the `Microsoft.Network/virtualNetworks/subnets/write` permission scope on the subnet.The resource specific vNet integration requires the `Microsoft.Network/virtualNetworks/subnets/join/action` permission scope.There is a hard limit of [one VNet integration per App Service Plan](https://docs.microsoft.com/azure/app-service/web-sites-integrate-with-vnet#regional-vnet-integration).Multiple apps in the same App Service plan can use the same VNet.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/app_service_virtual_network_swift_connection" 
}

inputs = {
   app_service_id = "app_service_id of app_service_virtual_network_swift_connection" 
   subnet_id = "subnet_id of app_service_virtual_network_swift_connection" 
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
| **var.app_service_id** | string | True | The ID of the App Service or Function App to associate to the VNet. Changing this forces a new resource to be created. | 
| **var.subnet_id** | string | True | The ID of the subnet the app service will be associated to (the subnet must have a `service_delegation` configured for `Microsoft.Web/serverFarms`). | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the App Service Virtual Network Association | 

Additionally, all variables are provided as outputs.
