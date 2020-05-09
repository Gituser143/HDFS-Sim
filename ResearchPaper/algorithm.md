We attempt to reduce power consumption in our cluster by reconfiguring its block placement policy for a more qualitative approach suited to the needs of our modified cluster which operates based on zones. Our block placement policy is derived from the default approach and enhanced to work under conditions we have set up for our energy efficient model. Furthermore, our policy is divided into two types: frequent and infrequent transfer.

Heartbeat information
---------------------

Let H(d) be the heartbeat information sent out by each datanode. H(d) for a datnode would contain information about the amount of blocks in the datanode which have turned cold based on a last accessed time parameter l for the particular block of data. Thus the information a heartbeat sends H(d) is modified to contain an array of binary values 0,1,0.......n where n is the total number of blocks in the datanode. 

* 1 implies the block has turned cold based on the last accessed parameter l. Here 
* 0 implies the data block is still hot.

The binary values are determined by the value of lt set globally over the cluster and can be overriden for particular servers.
If l > lt then the block is deemed cold.
If l < lt the block is still hot.


