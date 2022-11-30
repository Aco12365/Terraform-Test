variable "globalenv" {
  type = string
}

variable "website_stg" {
  type = object({
    name           = string
    skuname        = string
    index_document = string
  })
}

variable "acr" {
  type = object({
    name          = string
    sku           = string
    admin_enabled = bool
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

variable "sqlserver" {
  type = object({
    name        = string
    audit_name  = string
    admin_login = string
    fw_name     = string
    fw_start_ip = string
    fw_end_ip   = string
  })
}

variable "loganalytics" {
  type = object({
    name = string
    sku  = string
  })
}

variable "appinsights_name" {}

variable "sqldb" {
  type = object({
    name = string
  })
}

variable "cdn" {
  type = object({
    name          = string
    sku           = string
    endpoint_name = string
    http_port     = number
    https_port    = number
  })
}

variable "aks" {
  type = object({
    cluster_name         = string

    version              = string
    enable_auto_scaling  = bool
    node_count           = number
    max_pods             = number
    vnet_subnet_id       = string

    admin_user           = string
    vm_public_ssh_key    = string

    dns_service_ip       = string
    service_cidr         = string
    docker_bridge_cidr   = string
    network_plugin       = string
    create_new_law       = bool
    law_sku              = string
    vm_size              = string
    disk_size            = number
    disk_type            = string
    law_retention_in_days  = number
    max_count            = number
    min_count            = number
  })
}

variable "nginx" {
  type = object({
    name                 = string
    replicaCount         = number
    namespace            = string
  })
}

variable "rabbitmq" {
  type = object({
    name                 = string
    namespace            = string
    username             = string
    password             = string
    size                 = string
  })
}

variable "redis" {
  type = object({
    name                 = string
    namespace            = string
    password             = string
    disableCommands      = string    
  })
}

variable "prometheus" {
  type = object({
    name                   = string
    namespace              = string
    retention_in_days      = string
    enable_grafana         = bool
    grafana_password       = string
    grafana_image          = string
  })
}