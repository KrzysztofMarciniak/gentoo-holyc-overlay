# Gentoo HolyC Overlay

`gentoo-holyc-overlay` supplies ebuild for the Holy C compiler (holyc).
Holyc is developed upstream at [James Barford's holyc-lang](https://github.com/Jamesbarford/holyc-lang).

## version
```
beta-v0.0.10
```

## 1. Add the Overlay

1. **Clone the overlay repository**
   You can clone it into your home directory (or another preferred location):

   ```bash
   git clone git@github.com:KrzysztofMarciniak/gentoo-holyc-overlay.git ~/gentoo-holyc-overlay
   ```

2. **Create a repo configuration**
   Create the file `/etc/portage/repos.conf/gentoo-holyc-overlay.conf` with the following content:

   ```ini
   [gentoo-holyc-overlay]
   location = /home/<YOUR_USER>/gentoo-holyc-overlay
   masters = gentoo
   auto-sync = no
   ```

   **Notes:**

   * Replace `<YOUR_USER>` with your actual username.
   * Setting `auto-sync = no` prevents automatic syncing of this overlay.

3. **Sync the overlay**

   After adding the repo configuration, sync the overlay manually:

   ```bash
   emaint sync --repo gentoo-holyc-overlay
   ```

---

## 2. Install the `holyc` Package

Once the overlay is synced, you can install the latest version of `holyc`:

```bash
emerge -av =dev-lang/holyc-9999
```

