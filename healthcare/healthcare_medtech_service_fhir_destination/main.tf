

resource "azurerm_healthcare_medtech_service_fhir_destination" "this" {

  ########################################
  # required vars
  ########################################
  name                                 = var.name
  medtech_service_id                   = var.medtech_service_id
  location                             = var.location
  destination_fhir_service_id          = var.destination_fhir_service_id
  destination_identity_resolution_type = var.destination_identity_resolution_type
  destination_fhir_mapping_json        = var.destination_fhir_mapping_json
}
