[Source] (http://www.corejavaguru.com/bigdata/hadoop/introduction)

inodes represent files and directories in namenode.
namenode consists of namespace and edit.log


Datanode:
=========
	Block replica on a datanode represented by 2 files:
	----------------------------------------------------
		* data
		* generation stamp

	During startup:
	----------------
		* performs handshake with the namenode:
		 	1. verifies namespace ID
		 	2. (n ID is assigned on making of FS and persistently stored)
		* Datanode registers with the NN:
			1. DNs persistently store their storage IDs
			2. Storage ID is a unique identifier of DN.

	Block reports:
	---------------
		* contains block ID,generation stamp and length
		* sent every x amount of time.

	Heartbeats:
	-------------
		* By default a datanode is chucked out after 10 mins of not sending a heartbeat. New replicas are then scheduled.
		* Carry info about storage capacity, number of data tansfers currently in progress.

	Instruction sending from namenode :
	------------------------------------
		Namenode uses replies to heartbeats to send instructions.( commands to replicate blocks to other nodes, remove local block replicas, re-register and send an immediate block report, and shut down the node)


Communications protocols :
===========================
	* TCP/IP
	* RPC abstraction wraps both the client protocol and the datandode protocol

Image:
======
	* Namespace image kept in RAM of the namenode.
	* Consists of the inodes and the list of blocks that deifne the metadata of the name system.

Block placement:
=================
	network bandwidth measured by the 'distance'.
	distance from a node to its parent node is assumed to be 1.
	Distance between two nodes can be calculated by summing the distances to their closest common ancestor .
	Rack identificaton done with a user defined script.
	Configurable block placement policy interface

	Default block placement policy:
	-------------------------------
	* When a new block is created, HDFS places the first replica on the node where the writer is located.
	* Second and third are placed on a different rack.
	* The rest are placed randomly with the restrition that no more than one replica is placed on the same node and no more than 2 on the same rack.

	After all target nodes are selected, nodes are organized as a pipeline in the order of their proximity to the first replica. Data are pushed to nodes in this order. For reading, the NameNode first checks if the client's host is located in the cluster.

	Replication management :
	------------------------
		Removes over replicated blocks when a report from a datanode arrives.
		If underreplicated
