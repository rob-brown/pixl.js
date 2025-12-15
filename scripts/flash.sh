#!/bin/sh

openocd -f interface/cmsis-dap.cfg -c "transport select swd" -f target/nrf52.cfg -d2 -c init -c "reset init" -c halt -c "program fw/_build/pixljs_all.hex verify" -c "reset" -c exit
