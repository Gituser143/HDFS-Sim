#Introduction  
==============  
  
The exponential growth of scientific and business data has resulted in the evolution of the cloud computing . The Cloud computing has gained rapid popularity from quite some time and it's usage has been quadrupled in the last 4 years. According to a research by Nasuni in 2013 there was just over 1 Exabyte or 1024 Petabytes of data stored in the cloud, and now  Google Cloud Storge alone has about 30 Exabytes of data and While there exists even bigger gaints in the industry like the Amazon Web Services (AWS) , Microsoft Azure and many more equally efficient cloud storage providers like the Alibaba Cloud , IBM Cloud ..etcetera etcetera.. . But what exactly is the cloud storage and processing used for? The cloud companies currenty provide the resources the data-intensive computing needs which includes advertising optimizations, user interest predictions, mail anti-spam detection and many such similar data analytics it is also currenty being used for live streaming of data which turned out to be the main reason for the success story of one of the most famous media-services provider, the Netflix.  
  
The implementation that the current cloud providers have adoped to structure their datacenters for the best effeciency of data storage/retrival is the HDFS architecture i.e ,the Hadoop Distributed File System and parallel processing of data for the effective processing of data. However, this implementation faces tremendous energy consumption, carbon dioxide emission and associated costs concerns. With energy consumption becoming key issue for the operation and maintenance of cloud datacenters, cloud computing providers are becoming profoundly concerned .So most of the cloud enterprises today are focusing their attention on energy efficient computing, motivated by high operational costs for their large scale clusters and warehouses. This power related cost includes investment, operating expenses, cooling costs and environmental impacts.  


*Edit the following to suit our algoritm*  
<><><><><>  
>A majority of existing techniques to improve energy efficiency of MapReduce dynamically configure the cluster into active and in-active set of nodes based on different criteria of replicationfactor, workload and data access pattern. Use of these methods negatively impact the performance,availability and fault-tolerance of the cluster. We want to develop methods which reduce energy consumption of a cluster without having such negative side-effects.
<><><><><><><>  
  
##HDFS  
====

Hadoop Distributed File System briefly know as HDFS is a key part of the many cloud eco systems, as it provides a reliable means for managing pools of big data and supporting related big data analytics applications.HDFS supports the rapid transfer of data between compute nodes.When HDFS takes in data, it breaks the information down into separate blocks and distributes them to different nodes in a cluster, thus enabling highly efficient parallel processing.Moreover, the Hadoop Distributed File System is specially designed to be highly fault-tolerant. The file system replicates, or copies, each piece of data multiple times and distributes the copies to individual nodes, placing at least one copy on a different server rack than the others. As a result, the data on nodes that crash can be found elsewhere within a cluster. This ensures that processing can continue while data is recovered.HDFS uses master/slave architecture. In its initial incarnation, each Hadoop cluster consisted of a single NameNode that managed file system operations and supporting DataNodes that managed data storage on individual compute nodes.  
>"""The Hadoop Distributed File System arose at Yahoo as a part of that company's ad serving and search engine requirements. Like other web-oriented companies, Yahoo found itself juggling a variety of applications that were accessed by a growing numbers of users, who were creating more and more data. Facebook, eBay, LinkedIn and Twitter are among the web companies that used HDFS to underpin big data analytics to address these same requirements.But the file system found use beyond that. HDFS was used by The New York Times as part of large-scale image conversions, Media6Degrees for log processing and machine learning, LiveBet for log storage and odds analysis"""  
Because HDFS is typically deployed as part of very large-scale implementations, support for low-cost commodity hardware is a particularly useful feature. Such systems, running web search and related applications, for example, can range into the hundreds of petabytes and thousands of nodes. They must be especially resilient, as server failures are common at such scale.  
  
SSD and HDD  
===========  
#HDD  
------
An HDD uses magnetism, which allows you to store data on a rotating platter. It has a read/write head that floats above the spinning platter for Reading and Writing of the data. The faster the platter spins, the quicker an HDD can perform. HDD also consists of an I/O controller and firmware, which tells the hardware what to do and communicates with the remaining system. The full form of HDD is Hard Disk Drive.  
The hard disk is made up of a number of spinning magnetic platters that store data and a number of reading/write heads on mechanical arms that move on the surface of the platters.
To read or write data at a certain sector of a platter, the head requires to move to the appropriate position and then need to wait for the sector to pass underneath it when the platter rotates.

#SSD  
------
Solid State Drives (SSDs) are a non-volatile storage device that stores and retrieves data constantly on solid-state flash memory. However, this data is stored on interconnected flash memory chips instead of platters, which makes them faster than HDDs. It provides better performance compared to HDD.
SSD drive works completely different than a HDD. It uses a solid state medium, typically NAND (often known as flash). Data is written to or read from the NAND by a controller, which is consider the brains of the device.
With SSD, there is no variable seek time or rotational latency because all the parts of the SSD can be accessed in the same amount of time. SSD read and write speeds are uneven, so data reads are very fast, but SSD write speeds are quite slower. That is because SSD storage is made up of individual NAND cells, which helps you to store one bit of data, and groups of cells are organized into pages. Moreover, groups of pages are organized into blocks.

#Difference between HDDs and SSDs
---------------------------------
HDD has a slower speed for reading and writing data and SSD is faster at reading and writing data. 
HDD has higher latency whereas SSD has a lower latency.
HDD supports fewer I/O operations per second (IOPS) while SSD supports more I/O operations per second(IOPS).
HDD can produce noise due to mechanical movements on the other hand, SSD does not produce such noise.
The moving parts of HDDs make them vulnerable to crashes and damages but SSD drives can tolerate vibration up to 2000Hz.

The Key Difference between HDDs and SSDs that effects the algorithm
===================================================================
SSDs Consumes less energy and and is much more efficient than the HDDs but the cost of SSD is Approximately 5 times the cost of the HHDs for the same amount of storage.