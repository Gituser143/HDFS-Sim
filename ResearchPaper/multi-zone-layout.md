Custom Zone Layout
===================

In this section we shall describe the zonal layout of our [PROJECT-NAME]. The cluster has been divided into two well defined zones, the Hot zone and the Cold zone. The zones are divided on the basis of frequency of data access.

Data is again divided as hot and cold data. Hot data resides in the hot zone. This is data that is frequently accessed. Cold data resides in the cold zone. This is data that is rarely accessed.

The purpose of dividing the cluster into hot and cold zones is to optimize the performance and reduce energy consumption by the cluster. Since only hot data is used frequently and cold data is often untouched, we need not keep the servers containing cold data active. They can be put to a low power state to save energy. The hot data is concentrated within nodes of the hot zone. These hot nodes perform all the computation necessary when the cluster is active. Only the required few nodes of Hot Zone are active while the rest of the hot nodes are shut down. These active nodes thus run at higher levels of computation.

By keeping fewer nodes running at higher levels of computation, we avoid wastage of both CPU power and Energy due to idle time. More hot nodes are brought up as and when more computation is required.

We also use two separate block balancers, one for each zone. Since blocks stored in the cold zone are not frequently accessed, they are less prone to data loss. Considering the above statement with the fact that cold nodes use HDDs which consume more power and time for read/write operations, we can optionally choose to reduce the replication factor in the cold zone.

The default replication factor of 3 can be used in the hot zone while the cold zone could use a replication factor of 2. Thus, the two configured block balancers can implement different replication factors for blocks according to the zone the block belongs to.


Hot-Zone
--------

This zone makes use of SSDs as the storage device. Nodes in this zone store data that is used frequently (Hot Data). Due to the use of SSDs, reads and writes are faster and each of these read/write operations consume lesser power.

This zone is always active, Hot data is concentrated among nodes in this zone. The nodes in the hot zone are built for high computation and lower energy consumption. But this comes at the cost of price. SSDs are more expensive with respect to the alternative of HDDs. Thus the Hot Zone is structured (percentage of cluster nodes to be considered as Hot) in such a way so as to be able to handle computation of Hot Data without storing unnecessary data that would waste precious SSD space. Thus, the least percentage of nodes possible are made into Hot Nodes to avoid excessive cost overruns.

Statistically, almost 80% of data stored in clusters is almost never used after a certain period of time (approximately 1 month after creation). Data is used mostly close to the time period since it was created. Thus, our implementation of Hot zone will store this data as it is being used frequently and as soon as it goes cold, it is transferred over to the cold zone. This avoids wastage of space in the hot zone. The cold zone on the other hand is built precisely to store data that is not frequently used.


Cold-Zone
---------

This zone comprises of HDDs being used as storage devices. Infrequently accessed data or cold data is stored in this zone as 
performance is traded off for higher energy conservation in this zone. This zone would have the servers stay in an inactive power-saving state whenever possible.

This zone is mostly inactive and has lower computational capacity than the hot zone. Power management schemes applied here will be gravitating towards transitioning the cold-zone servers towards a low power consuming and inactive power mode. Various volumes of cold data would be stored in the HDDs in this zone. The main idea here is to reduce server idle times and transition most of the servers into the inactive power-saving mode. This zone maximizes use of already powered-on servers by a placement policy which places most of the cold blocks in the initial servers defined by an order.

Blocks of data are moved to the cold-zone(from the hot-zone) as the block inactivity decreases to save energy. Upon transfer/access of a block, only the target server will wake up from its inactive power-saving state. Data inside the cold zone will have a lower replication factor than the hot-zone. 

