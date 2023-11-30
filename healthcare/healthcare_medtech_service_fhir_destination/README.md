# azurerm_healthcare_medtech_service_fhir_destination

Manages a Healthcare Med Tech Service Fhir Destination.```hclresource "azurerm_resource_group" "example" {name     = "example-rg"location = "West Europe"}data "azurerm_client_config" "current" {}resource "azurerm_healthcare_workspace" "example" {name                = "exampleworkspace"location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.name}resource "azurerm_eventhub_namespace" "example" {name                = "example-ehn"location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.namesku                 = "Standard"}resource "azurerm_eventhub" "example" {name                = "example-eh"namespace_name      = azurerm_eventhub_namespace.example.nameresource_group_name = azurerm_resource_group.example.namepartition_count     = 1message_retention   = 1}resource "azurerm_eventhub_consumer_group" "example" {name                = "$default"namespace_name      = azurerm_eventhub_namespace.example.nameeventhub_name       = azurerm_eventhub.example.nameresource_group_name = azurerm_resource_group.example.name}resource "azurerm_healthcare_fhir_service" "example" {name                = "examplefhir"location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.nameworkspace_id        = azurerm_healthcare_workspace.example.idkind                = "fhir-R4"authentication {authority = "https://login.microsoftonline.com/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"audience  = "https://examplefhir.fhir.azurehealthcareapis.com"}}resource "azurerm_healthcare_medtech_service" "example" {name         = "examplemt"workspace_id = azurerm_healthcare_workspace.example.idlocation     = azurerm_resource_group.example.locationeventhub_namespace_name      = azurerm_eventhub_namespace.example.nameeventhub_name                = azurerm_eventhub.example.nameeventhub_consumer_group_name = azurerm_eventhub_consumer_group.example.namedevice_mapping_json = jsonencode({"templateType" : "CollectionContent","template" : []})}resource "azurerm_healthcare_medtech_service_fhir_destination" "example" {name                                 = "examplemtdes"location                             = "east us"medtech_service_id                   = azurerm_healthcare_medtech_service.example.iddestination_fhir_service_id          = azurerm_healthcare_fhir_service.example.iddestination_identity_resolution_type = "Create"destination_fhir_mapping_json = jsonencode({"templateType" : "CollectionFhirTemplate","template" : [{"templateType" : "CodeValueFhir","template" : {"codes" : [{"code" : "8867-4","system" : "http://loinc.org","display" : "Heart rate"}],"periodInterval" : 60,"typeName" : "heartrate","value" : {"defaultPeriod" : 5000,"unit" : "count/min","valueName" : "hr","valueType" : "SampledData"}}}]})}```

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "healthcare/healthcare_medtech_service_fhir_destination" 
}

inputs = {
   name = "name of healthcare_medtech_service_fhir_destination" 
   medtech_service_id = "medtech_service_id of healthcare_medtech_service_fhir_destination" 
   location = "${location}" 
   destination_fhir_service_id = "destination_fhir_service_id of healthcare_medtech_service_fhir_destination" 
   destination_identity_resolution_type = "destination_identity_resolution_type of healthcare_medtech_service_fhir_destination" 
   destination_fhir_mapping_json = "destination_fhir_mapping_json of healthcare_medtech_service_fhir_destination" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Healthcare Med Tech Service Fhir Destination. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created. | 
| **var.medtech_service_id** | string | True | -  |  Specifies the name of the Healthcare Med Tech Service where the Healthcare Med Tech Service Fhir Destination should exist. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created. | 
| **var.location** | string | True | -  |  Specifies the Azure Region where the Healthcare Med Tech Service Fhir Destination should be created. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created. | 
| **var.destination_fhir_service_id** | string | True | -  |  Specifies the destination fhir service id of the Med Tech Service Fhir Destination. | 
| **var.destination_identity_resolution_type** | string | True | `Create`, `Lookup`  |  Specifies the destination identity resolution type where the Healthcare Med Tech Service Fhir Destination should be created. Possible values are `Create`, `Lookup`. | 
| **var.destination_fhir_mapping_json** | string | True | -  |  Specifies the destination Fhir mappings of the Med Tech Service Fhir Destination. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Healthcare Med Tech Service Fhir Destination. | 

Additionally, all variables are provided as outputs.
