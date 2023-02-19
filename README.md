# mac-vnc-autofill (mac OS)

When remotely accessing the Mac via vnc, you must enter the password twice.

While the first ID and password can be entered automatically using the keychain, according to Apple's security policy, you must enter the password one more time when accessing the Mac through VNC.

Unfortunately, you cannot paste the password at this time, and you must type it.
If your password is complex, this can be stressful.

mac-vnc-autofill solves this ploblem.

## What is mac-vnc-autofill

It is a simple shell script that executes an Apple script.

By Running the script with the remote machine address, ID, and password, it run Screen Share app and automatically fills in all fields using a macro to connect to the remote machine.

At this time, not only the Screen Share app but also the remotely accessed Mac machine's password is automatically entered.

## How to use
Copy `mac-vnc-autofill.sh`

In termenal, run the below command
```
sh mac-vnc-autofill.sh {address} {id} {pw}
```

### Bug
Sometimes when automatically entered password to access Mac, 
it says that the password is incorrect.

In this case, just run the script again.


## Todo
- [ ] Add Address, ID, Password input dialog
- [ ] Load ID and password from Keychain
- [ ] Bug fix for incorrect password