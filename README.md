# Sxrf_noidlecam

A lightweight FiveM client script that disables the GTA V idle (cinematic) camera, both on foot and in vehicles. Works on ESX, QBCore, or standalone, since it only uses client natives.

## Installation

1. Place the `Sxrf_noidlecam` folder in your server's `resources` directory.
2. Add this line to `server.cfg`:

   ```
   ensure Sxrf_noidlecam
   ```

3. Restart the server, or run `refresh` then `ensure Sxrf_noidlecam` in the server console.

## Configuration

All settings are in `config.lua`. Restart the resource after changing anything (`restart Sxrf_noidlecam`).

| Option | Type | Default | Description |
| `Config.Enabled` |  `true` | Master switch. If `false`, the script starts with idle cam blocking turned off. Can be changed in game with the toggle command. |
| `Config.Interval` |  `20000` | How often the idle timers are reset. Must stay under 30000 (the game triggers the idle cam after about 30 seconds). Lower values are safer but slightly less efficient. 10000 to 20000 is recommended. |
| `Config.OnFoot` |  `true` | Blocks the idle camera while the player is on foot. |
| `Config.InVehicle` |  `true` | Blocks the idle camera while the player is in a vehicle. |
| `Config.AllowToggleCommand` |  `true` | Registers the `/idlecam` command so players can toggle blocking on or off in game. Set to `false` to remove the command. |

## Usage

- **Automatic:** once the resource is started, the idle camera is blocked with no further action needed.
- **Toggle command:** if `Config.AllowToggleCommand` is `true`, type `/idlecam` in chat to switch blocking on or off. The new state prints to the F8 console. The toggle resets to the `Config.Enabled` value when the resource restarts.

## Troubleshooting

- **Idle cam still appears:** make sure `Config.Interval` is well under 30000, and check that `Config.Enabled`, `Config.OnFoot` and `Config.InVehicle` are `true`.
- **Resource not starting:** check the server console for errors, confirm the folder name matches the `ensure` line, and confirm `fxmanifest.lua` lists `config.lua` and `client.lua`.
- **Another script interferes:** other resources that trigger cinematic or custom cameras may conflict. Try stopping them one at a time to find the cause.
- **Command not working:** confirm `Config.AllowToggleCommand = true` and that the resource restarted after the change.

## Notes

- This script is client-side only. It does not need any server script or database.
