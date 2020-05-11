Evaluation of Results
=====================


Energy Vs Hot-Zone percentage
-----------------------------

<img src="../Presentations/Data-Reports/Multiple-Iterations/output_16_0.png" height = "400" width = "500">

The above graph shows how the total energy consumed varies when we vary the Hot-Zone percentage in the cluster. Here there is a sudden drop in the energy consumption at about HZ% = 30 because, a minimum of about 30% of the cluster must belong to the hotzone to handle peak workloads, else it defaults to the default hadoop configuration (no hot/cold zone). The second dip at HZ% 100 is because there are no HDDs in the cluster, this indicates that all the nodes in the cluster make use of SSDs, thus saving a significant amount of energy.


Energy Vs Data Size
--------------------
<img src="../Presentations/Data-Reports/Multiple-Iterations/output_6_0.png" height = "400" width = "500">

Energy Vs Number of nodes
-------------------------
<img src="../Presentations/Data-Reports/Multiple-Iterations/output_13_0.png" height = "400" width = "500">


Total power consumption
-----------------------

This is the total energy consumed for the HDFS over one life-cycle. This life-cycle has the following stages:

* Initial Boot: This is the energy consumed in bringing up all the nodes in the cluster. This tends to increase with increase in number of HDDs as storage devices, as HDDs consume more power during boot than SSDs.

* First read and write: This simulates the blocks being created and placed into the cluster. Majority of data is placed into the cluster is used within a small period of time after which it goes cold. The first read and write simulates data being read as soon as it is first written into the cluster.

* Transfer to cold zone: After a certain period of time, the blocks that were written are not used as frequently. Their usage becomes minimal and thus they turn cold. This stage simulates energy consumed when transferring blocks from the hot zone to the cold zone. This occurs only in the case where a Hot and Cold zone exist. This transfer does not occur with 0% or 100% SSD as the former lacks a Hot Zone while the latter lacks a Cold Zone.

* Block  balancing: This stage refers to balancing of blocks after transfer. In both cases (use of hot/cold zone and without), blocks are corrupted/moved frequently. Thus a block balancer distributes these blocks evenly across a cluster. Energy consumed during these writes are higher when done on HDDs. Movement of these blocks are reduced when they are separated as hot and cold. The new block balancer kicks in and tries to accumulate blocks within lesser number of SSDs so as to keep lesser number of nodes active. This maintains redundancy and data integrity while saving on unnecessary wastage of node active time and space.

* Continued read: This stage refers to the continued read of data after majority of blocks have gone cold and been transferred to the cold zone. This involves read of hot data along with the occasional minimal read of cold data.

Simulated with the following configurations.  
- Replication factor hot zone : 3  
- Replication factor cold zone : 2  
- Number of nodes : 100  
- Number of Blocks : 75000  
- Percentage of data going cold : 80%

<img src="../Presentations/Data-Reports/Single-Iteration/Total-Power-Consumtion.png" height = "400" width = "500">
