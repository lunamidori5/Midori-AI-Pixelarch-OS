# Midori Ai Pixel OS

## PixelArch OS

Introducing **PixelArch OS** by Midori AI, an innovative Arch Linux-based operating system designed specifically for containerized development and AI workloads. PixelArch OS provides a lightweight, flexible, and powerful platform that runs seamlessly in Docker environments, making it ideal for developers, system administrators, and AI practitioners.

### Key Features:
- **Arch-Based**: Built on Arch Linux, offering a rolling-release model with bleeding-edge packages and exceptional customizability
- **Docker-Optimized**: Specifically designed to run in Docker containers, providing consistent environments across development, testing, and production
- **Frequent Updates**: Rolling release ensures systems stay current with the latest features, security patches, and performance improvements
- **Powerful Package Management**: Utilizes both `yay` (AUR helper) and `pacman` for access to the vast Arch User Repository and official repositories
- **Tiered Variants**: Multiple pre-configured variants (Quartz, Amethyst, Topaz, Emerald) tailored to different use cases and requirements
- **GPU Support**: CUDA-enabled variants available for GPU-accelerated AI and machine learning workloads
- **Oh My Bash**: Pre-configured with Oh My Bash for an enhanced terminal experience

### Available Variants:

**Quartz** (Base):
- Minimal base system with essential build tools (git, sudo, base-devel, go)
- Oh My Bash shell configuration
- Midori AI updater tool
- Package managers: yay and pacman
- Perfect for: Minimal containerized environments, custom builds

**Amethyst** (Utilities):
- Everything in Quartz, plus:
- Essential utilities: curl, wget, tar, zip, unzip, xz, tree, jq
- Text editors: neovim, nano
- Tools: lolcat, bash-completion, fastfetch
- Container tools: docker, docker-compose
- Perfect for: General development, DevOps workflows

**Topaz** (Development):
- Everything in Amethyst, plus:
- Python ecosystem: python, pip, pyfiglet, virtualenv, uv
- Node.js ecosystem: nodejs, nvm
- Rust and C/C++: rust, gcc
- Windows compatibility: wine, xorg-server-xvfb
- Perfect for: Multi-language development, cross-platform builds

**Emerald** (Full-Featured):
- Everything in Topaz, plus:
- Remote access: openssh, tmate
- Privacy tools: torbrowser-launcher
- Text-based browser: lynx
- Perfect for: Remote development, security-focused workflows, complete development environments

**CUDA Variants** (GPU-Accelerated):
- Available for Amethyst, Topaz, and Emerald tiers
- Includes NVIDIA open drivers and CUDA toolkit
- Optimized for: AI/ML workloads, GPU computing, deep learning
- **Note**: CUDA variants require local building and are large (2+ GB)

### Getting Started:

**Docker Hub**: Pre-built images are available at [lunamidori5/pixelarch](https://hub.docker.com/repository/docker/lunamidori5/pixelarch/general)

For detailed setup instructions and usage examples, see the [PixelArch OS README](pixelarch_os/README.md). 

## PixelGen OS

Introducing **PixelGen OS** by Midori AI, an innovative Gentoo Linux-based operating system designed for advanced users who demand maximum performance and customization. PixelGen OS leverages Gentoo's source-based package management system within Docker containers, providing unparalleled flexibility for specialized workloads and optimized builds.

### Key Features:
- **Gentoo-Based**: Built on Gentoo Linux, offering complete control over compilation flags, USE flags, and system optimization
- **Source-Based Compilation**: Packages compiled from source with customizable optimization flags for your specific hardware
- **Docker-Optimized**: Containerized for consistent deployment while maintaining Gentoo's powerful customization capabilities
- **Portage Package Manager**: Access to Gentoo's comprehensive Portage system with emerge for fine-grained package management
- **Pacaptr Compatibility Layer**: Includes pacaptr as a wrapper, providing yay/pacman-like commands for easier transitions from Arch-based systems
- **Performance-Focused**: Optimized build configurations (make.conf) for enhanced performance
- **Oh My Bash**: Pre-configured with Oh My Bash for an improved terminal experience

### Core Components:
- **Base System**: Gentoo Stage3 with essential build tools (emerge, rust, git)
- **Unified Package Management**: Pacaptr provides `yay` and `pacman` command aliases for familiar package management
- **Pre-installed Tools**: go, gentoolkit, wget, tmate, fastfetch, fish shell
- **Python Environment**: Python with optimized compilation flags
- **Container Support**: Docker-ready for nested containerization workflows

### Use Cases:
- **Performance-Critical Applications**: Compile packages with CPU-specific optimizations (march=native)
- **Custom Software Builds**: Full control over compilation flags and dependencies
- **Research & Development**: Experiment with bleeding-edge packages and custom USE flags
- **Learning Platform**: Deep dive into Linux system internals and package building
- **Specialized Workloads**: Create highly optimized containers for specific computational tasks

### Configuration:
PixelGen OS includes a customized `make.conf` that can be tailored to your hardware and performance requirements, enabling optimization features like:
- CPU-specific optimizations (march, mtune)
- Parallel compilation (MAKEOPTS)
- Compiler flags tuning
- USE flag customization

### Getting Started:

**Docker Hub**: Pre-built images are available at [lunamidori5/pixelgen](https://hub.docker.com/repository/docker/lunamidori5/pixelgen/general)

PixelGen OS is designed for users familiar with Gentoo Linux and source-based package management. While it includes pacaptr for compatibility with pacman/yay commands, understanding Gentoo's Portage system will help you leverage its full potential.

**Build Recommendation**: While a workflow builds images for users, building locally is recommended for optimal customization.

**Note**: Due to source-based compilation, PixelGen OS may have longer build times compared to binary-based distributions, but offers superior customization and optimization capabilities. 


## Get Involved:

* **Join our Discord community:** https://discord.gg/xdgCx3VyHU
* **Connect with us on Facebook:** https://www.facebook.com/TWLunagreen
* **Follow us on Twitter:** https://twitter.com/lunamidori5
* **Explore our Pinterest boards:** https://www.pinterest.com/luna_midori5/
* **Follow us on Twitch:** https://www.twitch.tv/luna_midori5
* **Subscribe to our YouTube channel:** https://www.youtube.com/channel/UCVQo4TxFJEoE5kccScY-xow
* **Support us on PayPal:** https://paypal.me/midoricookieclub?country.x=US&locale.x=en_US

**Unleashing the Future of AI, Together.**
