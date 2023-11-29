

resource "azurerm_gallery_application" "this" {

  ########################################
  # required vars
  ########################################
  name              = var.name
  gallery_id        = var.gallery_id
  location          = var.location
  supported_os_type = var.supported_os_type

  ########################################
  # optional vars
  ########################################
  description           = var.description
  end_of_life_date      = var.end_of_life_date
  eula                  = var.eula
  privacy_statement_uri = var.privacy_statement_uri
  release_note_uri      = var.release_note_uri
  tags                  = var.tags
}
