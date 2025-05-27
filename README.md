# qemu-startstop-all

A simple Shell-script to start or stop all QEMU/KVM virtual machines at once using libvirt.

## Installation

### Local usage
```bash
git clone https://github.com/ronchese66/qemu-startstop-all && cd qemu-startstop-all
chmod +x allvm
./allvm start    # Start all VMs
./allvm stop     # Stop all VMs
```

### System-wide installation
```bash
sudo cp allvm /usr/local/bin/
sudo chmod +x /usr/local/bin/allvm
allvm start      # Start all VMs
allvm stop       # Stop all VMs
```

## Usage

- `allvm start` - Start all defined virtual machines
- `allvm stop` - Stop all running virtual machines

## Requirements

- QEMU/KVM
- libvirt
- virsh command-line tool

## License

Unlicense
