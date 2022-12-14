variable "globalenv" {
  type = string
}

variable "website_stg" {
  type = object({
    name           = string
    skuname        = string
    index_document = string
    admin_enabled = object({
      name        = string
      phone       = string
    })
  })
}

variable "acr" {
  type = object({
    name          = string
    sku           = string
    admin_enabled = object({
       sku        = object({
          name      = object({
              amazing = string
          })
      })
    })
    admin_disabled = object({
      name        = string
      phone       = string
    })
    admin_main = object({
      name       = string
      phone       = string
    })
   })
}

variable "network" {
  type = object({
    vnet_name            = string
    vnetaddressspace     = string
    akssubnetname        = string
    aks_address_prefixes = list(string)
  })
}

variable "virtual_network_name" {
  description = "VN name"
  type = string
  default = ""
}
