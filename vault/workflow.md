---
id: u0cTolPVpojHcsPHuV3wA
title: Workflow
desc: ''
updated: 1640241430795
created: 1639924627613
---

# Bluetooth profile fix

So, what's the problem?
My wireless bluetooth headset always connects to the horrible profile that makes
everything sound like garbage.
That horrible profile I dislike so much is `Headset Head Unit (HSP/HFP)`.
The profile I want is `High Fidelity Playback (A2DP Sink)`.
And even when I tried changing to the good profile, I kept getting the `failed
to change profile to a2dp_sink` error.

I fixed it with the following:

Get the headset MAC address by running the following commands:
-  `sudo systemctl restart bluetooth`
-  `bluetoothctl`
Then enter `devices` at the bluetooth prompt (`[bluetooth]# `)

At this point, you should see the paired devices and their MAC addresses, grab
the MAC address you need and enter `connect <MAC Address>`

This should solve it. If it doesn't, you might need to google for a proper fix!
