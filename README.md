# matrixOS Artwork

This repository contains the official artwork assets for **matrixOS**, including system themes and branding materials.

## About matrixOS

matrixOS is a **Gentoo-based Linux distribution** designed for reliability and stability through modern architectural principles.

### Key Features

*   **Immutable Core**: The base operating system is mounted as read-only. This prevents accidental modifications to critical system files, ensuring the system remains stable and consistent over time.
*   **Atomic Updates**: System updates are achieved using **OSTree** technology, the same underlying technology used by Fedora Silverblue and Red Hat CoreOS. This provides atomic, git-like versioning for the operating system, ensuring updates are safe and easily reversible.
*   **Gentoo-based**: Built on the powerful and flexible Gentoo framework, offering optimized performance and granular control where needed.

### Benefits

*   **Reliability**: The separation of the core OS from user data and applications significantly reduces the chance of system breakage.
*   **Security**: A read-only root filesystem reduces the attack surface for malware and unauthorized changes.
*   **Easy Rollbacks**: The atomic nature of updates allows users to easily revert to a previous version of the OS if issues arise.

## Repository Contents

This repository currently includes:

*   **GRUB Themes**: Custom bootloader themes for matrixOS.
    *   Located in `matrixos-artwork-grub/themes/matrixos-theme/`
    *   Features a minimalist design with the matrixOS branding.
*   **GNOME Themes**: Visual styles for the desktop environment.
*   **GDM Themes**: Login screen branding.
*   **Plymouth Themes**: Boot splash screen animations.

## Usage

To apply the GRUB theme manually:

1.  Copy the `matrixos-theme` directory to your GRUB themes directory (usually `/boot/grub/themes/`).
2.  Update your `/etc/default/grub` configuration to point to the theme file:
    ```bash
    GRUB_THEME="/boot/grub/themes/matrixos-theme/theme.txt"
    ```
3.  Regenerate your GRUB configuration (e.g., `grub-mkconfig -o /boot/grub/grub.cfg`).

For GNOME, GDM, and Plymouth themes, manual installation is not recommended due to complexity. Please refer to the matrixOS overlay for official Gentoo Portage ebuilds to handle installation and configuration.

## License

Unless otherwise noted, the artwork in this repository is licensed under the **MIT License**.
