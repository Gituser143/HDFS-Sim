Evaluation of Results
=====================

We used peteratt's simulator to simulate the HDFS architecture and later built on the same to implement our new algorithm. In the following section if there is a reference to the existing algorithm and the new algorithm that means we are refering the results of the unedited version of peteratt's HDFS simulator and the edited version of the peteratt's simulator respectively. 

Multiple-Iterations
-------------------
- Energy Vs Data Size
<img src="../Presentations/Data-Reports/Multiple-Iterations/output_6_0.png" height = "500" width = "500">
![](../Presentations/Data-Reports/Multiple-Iterations/output_6_0.png)

- Energy Vs Number of nodes

![](../Presentations/Data-Reports/Multiple-Iterations/output_13_0.png)

- Energy Vs Hot-Zone percentage
![](../Presentations/Data-Reports/Multiple-Iterations/output_16_0.png)



Single-Iteration
-----------------

### Total power consumption

This is the total energy consumed for the HDFS simulated with the following configurations.  
- Replication factor hot zone : 3  
- Replication factor cold zone : 2  
- Number of nodes : 100  
- Number of Blocks : 75000  
- Percentage of data going cold : 80%

![](../Presentations/Data-Reports/Single-Iteration/Total-Power-Consumtion.png)

### Split and comparision of different components of power consumption

- During boot

![](../Presentations/Data-Reports/Single-Iteration/output_7_0.png)

- First read and first write

![](../Presentations/Data-Reports/Single-Iteration/output_8_0.png)

- Maintaining the HDFS Infrastructure

![](../Presentations/Data-Reports/Single-Iteration/output_9_0.png)

- Data transfer between the zones

![](../Presentations/Data-Reports/Single-Iteration/output_10_0.png)

- Block balancing and continued reads

![](../Presentations/Data-Reports/Single-Iteration/output_11_0.png)

