# Dotfiles

## 1. Install chezmoi
```zsh
sudo pacman -S chezmoi
```

## 2. Initialize from this repo
```zsh
chezmoi init https://github.com/Shaurm1sa/dotfiles.git
```

## 3. Review changes

This command shows the difference between the files in the source directory managed by chezmoi and the files currently applied to the target system.

```zsh
chezmoi diff
```

Important: the source files are stored in `~/.local/share/chezmoi/`. This is the directory created after `chezmoi init`, and it is the place where the managed dotfiles live before `chezmoi apply` copies them to the real config locations.

So if you want to change a config, edit the source file in `~/.local/share/chezmoi/`, not the already installed file in the target folder.

Examples:
- `~/.local/share/chezmoi/dot_config/hypr/configs/monitors.lua`
- `~/.local/share/chezmoi/dot_config/waybar/scripts/.env`

You can also open managed files with:

```zsh
chezmoi edit ~/.config/hypr/configs/monitors.lua
chezmoi edit ~/.config/waybar/scripts/.env
```

If the file does not exist yet on the target system, that is normal before `chezmoi apply`; it will be created during the apply step.

After editing, review the diff again:

```zsh
chezmoi diff
```

Then apply the changes:

```zsh
chezmoi apply
```

---

## 4. Setup on a new device (English)

Before using the config on a new machine, update the monitor layout and weather widget settings.

### 4.1 Configure monitors
Edit the managed file:

```zsh
chezmoi edit ~/.config/hypr/configs/monitors.lua
```

Example:
```lua
hl.monitor({
  output = "DP-1",
  mode = "1920x1080@240",
  position = "0x0",
  scale = "1",
})
```

Check actual monitor names with:
```zsh
hyprctl monitors
```

Official Hyprland reference:
https://wiki.hypr.land/Configuring/Basics/Monitors/

### 4.2 Configure the weather widget
Create or edit the managed file:

```zsh
chezmoi edit ~/.config/waybar/scripts/.env
```

Example:
```env
API_KEY=YOUR_OPENWEATHERMAP_API_KEY
CITY_ID=703448
```

Where to get `CITY_ID`:
https://openweathermap.org/find

Open the city page and use the number after `/city/` in the URL.
Example:
```text
https://openweathermap.org/city/689558
```

So:
```env
CITY_ID=689558
```

### 4.3 Install weather dependencies
```zsh
cd ~/.config/waybar/scripts
pnpm install
```

### 4.4 Reload the config
```zsh
hyprctl reload
```

If needed, restart Waybar:
```zsh
pkill waybar
waybar &
```

---

## 5. Налаштування на новому пристрої (українська)

Перед використанням конфігурації на новому пристрої потрібно відредагувати налаштування моніторів і погодного віджета.

### 5.1 Налаштування моніторів
Відкрий файли через chezmoi:

```zsh
chezmoi edit ~/.config/hypr/configs/monitors.lua
```

Приклад:
```lua
hl.monitor({
  output = "DP-1",
  mode = "1920x1080@240",
  position = "0x0",
  scale = "1",
})
```

Перевір назви моніторів:
```zsh
hyprctl monitors
```

Офіційна документація:
https://wiki.hypr.land/Configuring/Basics/Monitors/

### 5.2 Налаштування погодного віджета
Відкрий або створи файл через chezmoi:

```zsh
chezmoi edit ~/.config/waybar/scripts/.env
```

Приклад:
```env
API_KEY=YOUR_OPENWEATHERMAP_API_KEY
CITY_ID=703448
```

Де знайти `CITY_ID`:
https://openweathermap.org/find

Відкрий сторінку міста і використай число після `/city/` в URL.
Наприклад:
```text
https://openweathermap.org/city/689558
```

Тобто:
```env
CITY_ID=689558
```

### 5.3 Встановлення залежностей погодного скрипта
```zsh
cd ~/.config/waybar/scripts
pnpm install
```

### 5.4 Перезапуск конфігурації
```zsh
hyprctl reload
```

Якщо потрібно, перезапусти Waybar:
```zsh
pkill waybar
waybar &
```

---

## Notes
- `monitors.lua` is device-specific and should be adjusted for each monitor layout.
- `.env` is local configuration and should not be shared in public repositories.
- The weather widget works correctly only with the correct `API_KEY` and `CITY_ID` in the managed `.env` file.

## Примітки
- `monitors.lua` є специфічним для пристрою і має бути налаштований під кожну розкладку моніторів.
- `.env` — це локальна конфігурація, її не варто публікувати у відкритих репозиторіях.
- Погодний віджет працює коректно лише з правильними значеннями `API_KEY` і `CITY_ID` у керованому файлі `.env`.
