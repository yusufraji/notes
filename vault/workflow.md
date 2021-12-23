---
id: u0cTolPVpojHcsPHuV3wA
title: Workflow
desc: ''
updated: 1640240867728
created: 1639924627613
---

# Bluetooth profile fix

So, what's the problem.
My wireless bluetooth headset alwas connects to the horrible profile that makes
everything sound like garbage.
That horrible profile I dislike so much is `Headset Head Unit (HSP/HFP)`.
The profile I want is the `High Fidelity Playback (A2DP Sink)`.
And even when I tried changing the the good profile, I kept getting the `failed
to change profile to a2dp_sink` error.

I fixed it with the following:

1. Get the headset MAC address by running 