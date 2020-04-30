Custom Zone Layout
===================

In this section we shall describe the zonal layout of our [PROJECT-NAME]. The cluster has been divided into two well defined zones, the Hot zone and the cold zone. The zones are divided on the basis of frequency of data access.

Data is again divided as hot and cold data. Hot data resides in the hot zone. This is data that is frequently accessed. Cold data resides in the cold zone. This is data that is rarely accessed.

Hot-Zone
--------

This zone makes use of SSDs as the storage device. Nodes in this zone store data that is used frequently (Hot Data). Due to the use of SSDs, reads and writes are faster and each of these read/write operations consume lesser power.
