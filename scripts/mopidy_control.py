#!/usr/bin/env python

import subprocess

import psutil
def checkIfProcessRunning(processName):
    '''
    Check if there is any running process that contains the given name processName.
    '''
    #Iterate over the all the running process
    for proc in psutil.process_iter():
        try:
            # Check if process name contains the given name string.
            if processName.lower() in proc.name().lower():
                return True
        except (psutil.NoSuchProcess, psutil.AccessDenied, psutil.ZombieProcess):
            pass
    return False;

state = "";
volume = "";
time = ["",""]

if checkIfProcessRunning("mpd"):
    # status
    process = subprocess.run(["mpc", "status", "%state%"], capture_output=True)
    if process.stdout.decode().strip() == 'paused':
        state = "Paused"
    elif process.stdout.decode().strip() == 'playing':
        state = "Playing"
    else:
        state = "Starting"

    # volume
    process = subprocess.run(["mpc", "status", "%volume%"], capture_output=True)
    volume = process.stdout.decode()

    # remaining time
    process = subprocess.run(["mpc", "status", "%currenttime%"], capture_output=True)
    time[0] = process.stdout.decode()

    process = subprocess.run(["mpc", "status", "%totaltime%"], capture_output=True)
    time[1] = process.stdout.decode()

    time_counter = time[0].strip()+"/"+time[1].strip()

    if time[0].strip() == "0:00" and time[1].strip() == "0:00":
        time_counter = ""

    
    print(f"{state} [{volume.strip()}] {time_counter}")


else:
    print("")
