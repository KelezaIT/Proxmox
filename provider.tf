# Proxmox Provider
# ---
# Initial Provider Configuration for Proxmox

variable "proxmox_api_url" {
    type = string
}

variable "proxmox_api_token_id" {
    type = string
    sensitive = true
}

variable "proxmox_api_token_secret" {
    type = string
    sensitive = true
}

terraform {
    required_providers {
        proxmox = {
            source = "telmate/proxmox"
            version = ">= 2.9.14"
           
        }
    }
}

provider "proxmox" {
    pm_api_url          = var.proxmox_api_url
    pm_api_token_id     = var.proxmox_api_token_id
    pm_api_token_secret = var.proxmox_api_token_secret
}

