source "virtualbox-iso" "proxmox" {
  guest_os_type    = "Debian_64"
  iso_url          = "proxmox-ve_6.2-1.iso"
  iso_checksum     = "sha256:d8fb3cfba19d38aa0c05452a954150f96e3ee455a36d52427aa26e6906fb8bff"
  ssh_username     = "packer"
  ssh_password     = "packer"
  shutdown_command = "echo 'packer' | sudo -S shutdown -P now"
}

build {
  sources = ["sources.virtualbox-iso.proxmox"]
}
