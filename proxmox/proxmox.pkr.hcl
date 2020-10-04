source "qemu" "proxmox" {
  iso_url          = "proxmox-ve_6.2-1.iso"
  iso_checksum     = "sha256:d8fb3cfba19d38aa0c05452a954150f96e3ee455a36d52427aa26e6906fb8bff"
  ssh_username     = "packer"
  ssh_password     = "packer"
  ssh_timeout      = "60m"
  cpus             = 4
  memory           = 8192
  qemuargs         = [
    [ "-cpu", "host" ]
  ]
}

build {
  sources = [ "sources.qemu.proxmox" ]
}
