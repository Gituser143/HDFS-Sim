We attempt to reduce power consumption in our cluster by reconfiguring its block placement policy for a more qualitative approach suited to the needs of our modified cluster which operates based on zones. Our block placement policy is derived from the default approach and enhanced to work under conditions we have set up for our energy efficient model. Furthermore, our policy is divided into two types: frequent and infrequent transfer.

Heartbeat information
---------------------

Let H(d) be the heartbeat information sent out by each datanode. H(d) for a datnode would contain information about the amount of blocks in the datanode which have turned cold based on a last accessed time parameter l for the particular block of data. Thus the information a heartbeat sends H(d) is modified to contain an array(B) of binary values 0,1,0.......n (b1,b2,b3....bn) where n is the total number of blocks in the datanode. 

* 1 implies the block has turned cold based on the last accessed parameter l. Here 
* 0 implies the data block is still hot.

The binary values are determined by the value of lt set globally over the cluster and can be overriden for particular servers.
If l > lt then the block is deemed cold.
If l < lt the block is still hot.


Transition Script
-------------------

This script running in the namenode would process the heartbeat information H(d) from each datanode and instruct the namenode to shift blocks accordingly based on the approach chosen(frquent/infreqent).
Thus heartbeats from all the datanodes are analyzed and cold blocks are then transferred to the cold zone via the namenode. This could be thought of as a heartbeat checker daemon specific to the parameter B.
The namenode would be instructed to transfer cold blocks which have been marked for transfer(by one of the two algorithms) and handle the replication factor in each zone after the transfer.   

Infrequent transfer
====================

Insert pic here and call it fig[heck1]

(This part describes the figure, would be written below the figure in small font)
Figure[heck1] : Customized block placement policy- infrequent transfer
This figure represents a cluster set-up. The nodes marked in red comprise the hot zone whereas the nodes marked in blue comprise the cold zone. Each zone has its own block balancer due to the different replication factor in each zone. A transition script runs in the namenode marked by the color red.


Algorithm
----------

This algorithm is based on the value of cold blocks in a particular datanode in the hot zone at a given time. Blocks turn cold based off the condition l>lt and thus cold blocks accumulate on each datanode with time. The transition script checks if the percentage of cold blocks which have been accumulated on a particular datanode have crossed a threshold value(T).

If this globally set threshold value becomes lesser than the percentage of blocks accumulated over a certain datanode, the cold blocks are then flushed to the cold zone. The cold blocks being transferred lose their replicas in the hot zone and are then replicated in the cold zone as required. Thus when the amount of cold blocks in any datanode in the hot zone reaches the threshold value T, the cold blocks are flushed to the cold zone. This happens continously to each datnode in the hot zone as more and more cold blocks form.

The flushing process wakes up the cold zone servers and the namenode assigns the cold blocks coming from the hot zone its respective places in the cold zone servers. The resulting blocks are then balanced in both the zones using block balancers.

This is termed as infrequent method since 


Frequent transfer
==================

fig[heck2]

fig[heck2] : Customized block placement policy - frequent transfer
This set-up has a similar configuration to the one in fig[heck2] but with an extra transition node for cold data accumulation before flushing it to the cold zone. The transition node is represented in green.

The transition node
-------------------

The transition node is unique based on its functional aspect. It only stores cold blocks of data and is comprised of HDD(s).
It is an intermediary node for the flushing of data from the hot to the cold zone. HDDs are used here as it only consists of cold data to improve cost efficiency.


Algorithm
----------

Blocks which turn cold are transferred to the transition node immediately. The transition node accumulates cold blocks until it reaches a threshold value Tt. Once the threshold value is reached, the node flushes all cold data it contains into the cold zone.
It wakes up the required amount of servers in the cold zone according to the number of blocks in the transition node for data transfer. Thus, data transfer happens through an intermediary transition node.







