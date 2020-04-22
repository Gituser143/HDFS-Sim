Abstract
=========

With the growth of big data, the need for distributed computing and clusters is now higher than ever. By making use of distributed computing, tasks can be split and processed in parallel resulting in higher computational efficiency. But the energy consumed by these clusters is very high. Majority of the energy is wasted due to servers being in an idle state and servers use of cheap, energy hungry hardware. Our proposal is a smarter and more dynamic HDFS that provides an energy efficient approach for clusters using HDFS.    

The approach to saving energy is to split the cluster into two “Zones”, a “Hot-Zone”, and a “Cold-Zone”. The Hot-Zone would have energy efficient storage devices (SSDs) and would store data that is used frequently. The Cold-Zone would have lesser energy efficient devices (HDDs) and would be used to store data that is not frequently used. The Hot-Zone would be active 24/7 to compute while the cold zone would be in a low power state.

------------------------------------------

Introduction
=============

TBA

* Mention apache hadoop and hdfs
* Delve deeper into the project's purpose, following on from the abstract
* Basically put stuff here which are prereqs to understand the paper too
* Describe SSD, HDD power efficiencies and modes in detail(Move to another heading? could be said to various entries in intro)

------------------------------------------

Hybrid multi-zone layout
=========================

TBA

* Describe the cluster layout in detail.
* Describe hot zone, cold zone,etc

------------------------------------------

Simulator details
==================

TBA

* Include basic working of the simulator abstracted to a certain extent (should be relevant to the point of the paper)
* Include various modifiable and relevant parameters of the simulator, link it with the previous point
* Include how power is calculated internally for a cluster run.

------------------------------------------

Implementation details(Algorithm)
==================================

TBA

* Discuss block placement policies
* Transfer with transition node
* Transfer without transition node
* Add some math stuff here for extra confusement

------------------------------------------

Evaluation Results
==================

* Transfer with transition node
* Transfer without transition node
* Would contain statistical data and its pictorial representations
* Add comparisions to normal vs our method (important)

------------------------------------------

Conclusion and Future Work
===========================

TBA

------------------------------------------

Acknowledgements
-----------------

References
===========

* [1] Rini T. Kaushik, Milind Bhandarkar. GreenHDFS: Towards An Energy-Conserving, Storage-Efficient, Hybrid Hadoop Compute Cluster.

* [2] Ivanilton Polato, Fabio Kon, Denilson Barbosa and Abram Hindle. Hybrid HDFS: Decreasing Energy Consumption and
Speeding up Hadoop using SSDs.

* [3] Nitesh Maheshwari, Radheshyam Nanduri, Vasudeva Varma. Dynamic Energy Efficient Data Placement and Cluster
Reconfiguration Algorithm for MapReduce Framework.

* [4] Hieu Hanh LE, Satoshi Hikida, Haruo Yokota. An Evaluation of Power-proportional Data Placement for
Hadoop Distributed File Systems.

* [5] B. Ramesh, R. Balu. Cloud Computing : An Analysis of the previous decade