# Midori Ai Pixel OS

![PixelArch OS banner](https://tea-cup.midori-ai.xyz/download/pixalarch-banner.png)

## PixelArch OS

Introducing **PixelArch OS** by Midori AI, an innovative Arch Linux-based operating system designed specifically for containerized development and AI workloads. PixelArch OS provides a lightweight, flexible, and powerful platform that runs seamlessly in Docker environments, making it ideal for developers, system administrators, and AI practitioners.

### Key Features:
- **Arch-Based**: Built on Arch Linux, offering a rolling-release model with bleeding-edge packages and exceptional customizability
- **Docker-Optimized**: Specifically designed to run in Docker containers, providing consistent environments across development, testing, and production
- **Frequent Updates**: Rolling release ensures systems stay current with the latest features, security patches, and performance improvements
- **Powerful Package Management**: Utilizes both `yay` (AUR helper) and `pacman` for access to the vast Arch User Repository and official repositories
- **Tiered Variants**: Multiple pre-configured variants across a 9-tier chain (Quartz, Obsidian, Lapis, Amethyst, Citrine, Topaz, Sapphire, Ruby, Emerald) tailored to different workflows and requirements
- **GPU Support**: CUDA-enabled variants currently available for Amethyst, Topaz, and Emerald tiers for GPU-accelerated AI and machine learning workloads
- **Oh My Bash**: Pre-configured with Oh My Bash for an enhanced terminal experience

### Available Variants:

**Quartz** (Base):
- Unchanged base tier with essential build tools (git, sudo, base-devel, go)
- Oh My Bash shell configuration
- Midori AI updater tool
- Package managers: yay and pacman
- Perfect for: Minimal containerized environments, custom builds

**Obsidian** (Core Utilities):
- Everything in Quartz, plus:
- `curl`, `wget`, `tar`, `xz`, `zip`, `unzip`, `tree`, `nano`, `lolcat`
- Perfect for: Everyday shell work, lightweight utility-focused containers

**Lapis** (Shell Toolkit):
- Everything in Obsidian, plus:
- `zsh`, `fish`, `tmux`, `bash-completion`, `zsh-completions`, `starship`
- Perfect for: Terminal-heavy workflows, shell customization, multiplexed sessions

**Amethyst** (Developer Utilities):
- Everything in Lapis, plus:
- `neovim`, `ripgrep`, `jq`, `fastfetch`, `docker`, `docker-compose`
- Perfect for: CLI-driven development, container workflows, fast inspection and editing

**Citrine** (Python Build Tools):
- Everything in Amethyst, plus:
- `python`, `python-pip`, `python-pyfiglet`, `python-virtualenv`, `uv`, `gcc`
- Perfect for: Python projects, compiled extensions, virtual environment workflows

**Topaz** (JavaScript Tooling):
- Everything in Citrine, plus:
- `nodejs`, `npm`, `nvm`, `bun`
- Perfect for: Node.js development, package scripting, modern JavaScript runtimes

**Sapphire** (Systems & Compatibility):
- Everything in Topaz, plus:
- `rust`, `wine`, `xorg-server-xvfb`
- Perfect for: Rust development, Windows compatibility testing, headless display workflows

**Ruby** (Remote & Privacy):
- Everything in Sapphire, plus:
- `openssh`, `tmate`, `tor`, `torsocks`, `torbrowser-launcher`, `lynx`
- Perfect for: Remote access, privacy-focused sessions, text-first browsing

**Emerald** (LLM Agent Tier):
- Everything in Ruby, plus:
- `gemini-cli`, `claude-code`, `openai-codex`, `github-copilot-cli`, `github-cli`
- Perfect for: LLM agents, CLI-based coding assistants, orchestrated agent workflows

**CUDA Variants** (GPU-Accelerated):
- Currently available for Amethyst, Topaz, and Emerald tiers only
- Includes NVIDIA open drivers and CUDA toolkit
- Optimized for: AI/ML workloads, GPU computing, deep learning
- **Note**: CUDA variants require local building and are large (2+ GB)

### Getting Started:

**Docker Hub**: Pre-built images are available at [lunamidori5/pixelarch](https://hub.docker.com/repository/docker/lunamidori5/pixelarch/general)

For detailed setup instructions and usage examples, see the [PixelArch OS README](pixelarch_os/README.md). 

![PixelGen OS banner](https://tea-cup.midori-ai.xyz/download/pixelgen-banner.png)

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
