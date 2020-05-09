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
------------

This script running in the namenode would process the heartbeat information H(d) from each datanode and instruct the namenode to shift blocks accordingly based on the approach chosen(frquent/infreqent).
Thus heartbeats from all the datanodes are analyzed and cold blocks are then transferred to the cold zone via the namenode. This could be thought of as a heartbeat checker daemon specific to the parameter B.
The namenode would be instructed to transfer cold blocks which have been marked for transfer(by one of the two algorithms) and handle the replication factor in each zone after the transfer.   



