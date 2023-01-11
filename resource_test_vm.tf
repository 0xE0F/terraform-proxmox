resource "proxmox_vm_qemu" "ressource_test_vm" {
  desc        = "Test VM"
  name        = "test-vm"
  target_node = "pve"
  cores       = 2
  sockets     = 1
  onboot      = true
  numa        = true
  hotplug     = "network,disk,usb"
  iso         = "local:iso/archlinux-2022.12.01-x86_64.iso"
  memory      = 2048
  balloon     = 2048
  scsihw      = "virtio-scsi-pci"
  bootdisk    = "scsi0"
  boot        = "order=ide2;scsi0"

  disk {
    size        = "10G"
    storage     = "local-zfs"
    type        = "scsi"
  }

  network {
    bridge    = "vmbr0"
    model     = "virtio"
  }
}