# bunnyz_n_bitchez
 https://github.com/tukru/bunnyz'n'bitchez

Inspiration came from @Hak5/ReverseBunny v2.0
https://github.com/hak5/bashbunny-payloads/tree/master/payloads/library/remote_access/ReverseBunny
Author: Tukru

Description:
ReverseBunny is a tool that provides remote access to a target machine using an obfuscated PowerShell reverse shell. It works by starting a Python HTTP server on the attacker's machine, which serves a PowerShell script that is downloaded and executed by the target machine.

This version of ReverseBunny has been updated and rewritten to improve its functionality and efficiency.

Installation:

    Clone or download the ReverseBunny repository from GitHub: https://github.com/tukru/bunnyz_n_bitchez/

    Ensure that the following dependencies are installed on your system:
        Bash shell
        Python 3

    Connect a Rubber Ducky device to your computer and copy the contents of the "payloads" directory to the device.

Execution:

    Plug the Rubber Ducky device into the target machine and wait for it to be recognized.

    Open a terminal and navigate to the "ReverseBunny" directory.

    Run the following command to execute the script:

    bash

    ./reversebunny.sh

    The script will prompt you to enter the position of the Rubber Ducky switch and the IP address of your machine.

    Follow the instructions on the Rubber Ducky device's payload to execute the reverse shell.

    Once the reverse shell is established, you will be able to remotely control the target machine.

Note: This tool is intended for educational purposes only. It should not be used for illegal or malicious purposes. The author is not responsible for any damage caused by the use of this tool.
