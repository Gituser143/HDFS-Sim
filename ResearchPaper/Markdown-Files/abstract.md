
The growth of big data is on the rise and the need for 
distributed computing and clusters is now higher than ever. By
making use of distributed computing, tasks can be split and
processed in parallel resulting in higher computational
efficiency. Additionally, the energy consumed by these clusters is very high.
Majority of the energy is consumed due to servers being in an
idle state and servers use of cheap, energy hungry hardware.
This is what we aim to optimize.

Our proposal is a more dynamic approach to HDFS that
provides an energy efficient paradigm for clusters using HDFS.
The approach to saving energy is to split the cluster into two
“Zones”, a “Hot-Zone”, and a “Cold-Zone”. The Hot-Zone
would have energy efficient storage devices (SSDs) and would
store data that is used frequently. The Cold-Zone would have
lesser energy efficient devices (HDDs) and would be used to
store data that is not frequently used. The Hot-Zone would be
active 24/7 to compute while the cold zone would be in a low
power state.