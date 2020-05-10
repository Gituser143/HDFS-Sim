Simulator
=========

The simulator is built over Pedro Álvarez-Tabío's HDFS-Replication simulator[6].
The simulator handled default policies of HDFS and accurately simulated HDFS functioning and failure responses. In addition, modules were added to better fit our modified policies and features like block placement, block transfer and balancing, etc. Modules added include:

* A class ```power``` which contains implementations of power measurements. This helps measure power during reads, writes, boot-up, sleep, etc. for both types of nodes SSDs and HDDs.
* Modified ```datanode``` class which implements the use of SSDs and HDDs.
* Custom block placement policies.
* Custom block balancers.
* Modified ```block``` and ```blockInfo``` which allows us to record and utilize metadata of blocks.
* Transition scripts to handle conversion of hot data to cold data and transfer between zones.

By making said modifications to the simulator, we were able to accurately test functionality and measure energy consumption for various workloads and cluster configurations. The results of these evaluations are described in the following section.
