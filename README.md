# sti-LabJackPython

Cross-platform (Windows, Linux, Mac OS X) Python modules and
examples for the LabJack U3, U6, UE9 and U12.

2019-01-23

support@labjack.com

# Requirements

LabJackPython requires Python 2.6, 2.7 or 3.x. For Python 3.x, most
functionality has been tested but not all yet. Please report bugs to
support@labjack.com or on GitHub:

https://github.com/labjack/LabJackPython

To use Modbus first check that your LabJack device meets the minimum required
firmware version listed on this page:

https://labjack.com/support/software/api/modbus/ud-modbus

To upgrade firmware look at this page:

https://labjack.com/support/firmware

To use Modbus on a UE9 over Ethernet, install Comm firmware 1.50 or higher.

# Install:

To install for a user

```shell
$ python -m pip install --user --upgrade sti-LabjackPython
```

To install systemwide (not recommended)

```shell
$ python -m pip install --upgrade sti-LabjackPython
```

If there are multiple versions Python installed, run the install command with
the Python version you want to install to. For example, on Linux if both
Python 2.7 and 3.5 are installed, you can install to Python 3.5 with:

```shell
$ python3.5 -m pip install sti-LabjackPython
```



# Run

From there, interacting with your devices is easy.

For U3:
```python
>>> import u3
>>> d = u3.U3()
>>> d.configU3()
{'BootloaderVersion': '0.27',
 'CIODirection': 0,
 ...,
}
>>> d.close()
```

For U6:
```python
>>> import u6
>>> d = u6.U6()
>>> d.configU6()
{'BootloaderVersion': '6.15',
 'FirmwareVersion': '0.88',
 ...,
}
>>> d.close()
```

For UE9:
```python
>>> import ue9
>>> d = ue9.UE9()
>>> d.commConfig()
{'IPAddress' : '192.168.1.209'
 ...,
}
>>> d.close()
```

For U12:
```python
>>> import u12
>>> d = u12.U12()
>>> d.eAnalogIn(0)
{'overVoltage': 0,
 'idnum': 0,
 'voltage': 1.42578125
}
>>> d.close()
```

For examples, check the Examples/ directory. For additional information, go to
the LabJackPython page on LabJack's website:

https://labjack.com/support/software/examples/ud/labjackpython


# LICENSE

All LabJackPython library and example source code are licensed under MIT X11.

