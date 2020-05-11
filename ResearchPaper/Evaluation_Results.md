Evaluation of Results
=====================


- Energy Vs Hot-Zone percentage
<img src="../Presentations/Data-Reports/Multiple-Iterations/output_16_0.png" height = "400" width = "500">
The above graph shows how the total energy consumed varies when we vary the Hot-Zone percentage in the cluster.Here there is a sudden drop in the energy consumption at about HZ% = 30 because, for the number of blocks that is being simulated, all of the blocks along with its replicas to fit completely into the hotzone compartment a minimum of about 30% of the cluster must belong to the hotzone and so the cold zone part of the cluster is not woken up during the first write which saves a lot of energy resulting in the huge dip. And the second dip at HZ% 100 is because there is no HDDs in the cluster, this also indirectly means that both the hot and cold zones are made up of SSDs again saving a significant amount of energy.
    

- Energy Vs Data Size
<img src="../Presentations/Data-Reports/Multiple-Iterations/output_6_0.png" height = "400" width = "500">

- Energy Vs Number of nodes
<img src="../Presentations/Data-Reports/Multiple-Iterations/output_13_0.png" height = "400" width = "500">



Single-Iteration
-----------------

### Total power consumption

This is the total energy consumed for the HDFS simulated with the following configurations.  
- Replication factor hot zone : 3  
- Replication factor cold zone : 2  
- Number of nodes : 100  
- Number of Blocks : 75000  
- Percentage of data going cold : 80%

<img src="../Presentations/Data-Reports/Single-Iteration/Total-Power-Consumtion.png" height = "400" width = "500">


### Split and comparision of different components of power consumption

- During boot



- First read and first write



- Maintaining the HDFS Infrastructure



- Data transfer between the zones




- Block balancing and continued reads



