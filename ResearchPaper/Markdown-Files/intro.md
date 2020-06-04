Introduction  
==============  

The exponential growth of scientific and business data has resulted in the evolution of cloud computing.  

Cloud computing has been rising in popularity and it's usage has been quadrupled in the last 4 years. According to [5] there was just over 1 Exabyte or 1024 Petabytes of data stored in the cloud. Now, Google Cloud Storage alone has about 30 Exabytes of data and there exists even bigger giants in the industry like Amazon Web Services(AWS), Microsoft Azure and many more equally efficient cloud storage providers like Alibaba Cloud, IBM Cloud, etc.  

These cloud companies currently provide the resources that data-intensive computing needs which include advertising optimizations, user interest predictions, mail anti-spam detection and many such similar data analytics. It's also currently being used for live streaming of data which turned out to be the main reason for the success story of one of the most famous media-services provider, Netflix.  

The implementation that the current cloud providers have adopted to structure their data-centers for maximum efficiency of data storage/retrieval is using the HDFS architecture i.e, the Hadoop Distributed File System and parallel processing of data for the effective data processing. However, this implementation faces tremendous energy consumption and associated cost concerns. With energy consumption becoming key issue for the operation and maintenance of cloud data-centers, cloud computing providers are becoming profoundly concerned.  

So most of the cloud enterprises today are focusing their attention on energy efficient computing, motivated by high operational costs for their large scale clusters and warehouses. This power related cost includes investment, operating expenses, cooling costs and environmental impacts.  

A majority of existing techniques to improve energy efficiency of HDFS clusters is to configure the cluster into active and in-active set of nodes based on different criteria of replication factor, workload and data access pattern. Use of these methods negatively impact the performance, availability and fault-tolerance of the cluster as these cannot be varied later. We aim to implement methods which reduce energy consumption of a cluster without having such negative side-effects.


HDFS  
====

Hadoop Distributed File System (HDFS) is a key part of many cloud Eco-systems, as it provides a reliable means for managing pools of big data and supporting related big data analytics based applications. HDFS supports the rapid transfer of data between compute nodes.  

When HDFS takes in data, it breaks the information down into separate blocks and distributes them to different nodes in a cluster, thus enabling highly efficient distributed processing. Moreover, the Hadoop Distributed File System is specially designed to be highly fault-tolerant. The file system replicates each block multiple times and distributes them across several nodes, placing at least one copy on a different server rack than the others. As a result, the data on nodes that crash can be found elsewhere within a cluster. This ensures that processing can continue while data is recovered.  

HDFS uses master/slave architecture. In its initial incarnation, each Hadoop cluster consisted of a single NameNode that managed file system operations and supporting DataNodes that managed data storage on individual compute nodes.  

Because HDFS is typically deployed as part of very large-scale implementations, support for low-cost commodity hardware is a particularly useful feature. Such systems, running web search and related applications, for example, can range into the hundreds of petabytes from thousands of nodes. They must be especially resilient, as server failures are common at such a large scale.  

--------------------------------------------------------------------

Storage devices in cluster servers
========================================  

Hard Disk Drive (HDD)  
---------------------

Hard disk is a basic storage device which uses magnetism, allowing one to store data on a rotating platter. It has a read/write head that floats above the spinning platter for reading and writing of data. The faster the platter spins, the quicker an HDD can perform. Its power draw depends on various charactersticts such as heat dissipation, form factor, rotational latency, spin speeds,etc.

 Most hard disk drives today support some form of power management which uses a number of specific power modes that save energy by reducing performance. When implemented, an HDD will change between a full power mode to one or more power saving modes as a function of drive usage. Recovery from the deepest mode, typically called Sleep where the drive is stopped or spun down, may take as long as several seconds to be fully operational thereby increasing the resulting latency. Drive manufacturers are also now producing green drives that include some additional features that do reduce power, but can adversely affect the latency including lower spindle speeds and parking heads off the media to reduce friction.

-------------------------------------------------------------------

Solid State Drive (SSD)  
-----------------------
Solid State Drives (SSDs) are a non-volatile storage device that stores and retrieves data constantly on solid-state flash memory. However, this data is stored on interconnected flash memory chips instead of platters, which makes them faster than HDDs. It provides better performance compared to HDD. SSD read and write speeds are uneven, so data reads are very fast, but SSD write speeds are quite slower. SSDs draw less power and have significantly faster read and write speeds. It however, being a new technology is around five times more expensive than traditional hard disks.

-------------------------------------------------------------------

Key differences

---------------------------------

 In terms of read and write speeds, HDDs have a slower speed for reading and writing data and SSDs are significantly faster . Hard disks have a higher latency whereas SSDs have lower latencies. In addition to supporting more I/O operations per seconds, SSDs are less prone to crashes and damages. The main Difference between HDDs and SSDs that affects the algorithm is *SSDs Consumes less energy and and is much more efficient than the HDDs but the cost of SSD is Approximately 5 times the cost of the HDDs for the same amount of storage.* Thus, there needs to be a compromise between cost efficiency and power efficiency.


