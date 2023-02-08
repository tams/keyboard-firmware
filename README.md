# Keyboard firmware

## ErgoDox

### Build

```bash
$ nix develop
$ cd  ergodox
$ make
```

### Flash

Use [Teensy Loader](https://www.pjrc.com/teensy/loader.html) to flash
`firmware.hex`.


#### Invoking the bootloader

There are two ways.

A) Press the flash button on the Teensy, buried under the housing

B) Invoke with the keyboard

For `qwerty-kinesis-mod`:

1. Press `k46` (and release)
2. Press `k26`+`k50` (simultaenously)

See [matrix.h](ergodox/keyboard/ergodox/matrix.h) for key positions.
