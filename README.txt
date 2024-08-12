                           +-------------+
                           | umon manual |
                           +-------------+

Operation
---------

When the monitor is started, it shows the PC the monitor will return to when
the quit command is used.

The prompt shows the current address for operations.

    $08ff>

The current address under this prompt would be 0x08ff.


Commands
--------

General commands
    q          : Quit monitor mode

Monitoring commands
    s(####):** : Show ** bytes starting at address #### or current address
    w(####):** : Write byte ** at address ####, or current address
    [0-9a-f]   : Write byte at next address, increasing address
    %          : Show the debug output from the system

Execution commands
    g          : JSR2 to current address
    g****      : JSR2 to given address

Stack operations
    +W**       : Push byte to WST
    +R**       : Push byte to RST
    -W         : Pop byte from WST
    -R         : Pop byte from RST

