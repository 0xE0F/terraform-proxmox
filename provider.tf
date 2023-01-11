terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
    }
  }
}
  
provider "proxmox" {
  pm_parallel         = 1
  pm_tls_insecure     = true
  pm_api_url          = var.pm_api_url
}