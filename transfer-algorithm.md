Infrequent transfer
====================
```
cluster_Initialization(HZ_Percentage):

  initialize_hot_zone = (HZ_Percentage / 100) * totalNodes
  initialize_cold_zone = ((100 - HZ_Percentage) / 100) * totalNodes

inintial_block_write(Blocks):

  distribute_blocks_among_hot_nodes():

    for block in Blocks:

      Hot_Zone_Blocks.add(block)
      replicate(block, hot)


while(cluster.isActive):

  sleep(3 seconds)
  namenode.getHeartBeats(Hot_Zone_Nodes)

  for block in Hot_Zone_Blocks:

    if(block.lastAccess > threshold):

      Hot_Zone_Blocks.remove(block)
      Cold_Zone_Blocks.add(block)
      replicate(block, cold)

  for block in Cold_Zone_Blocks:

    if(block.lastAccess < threshold):

      Cold_Zone_Blocks.remove(block)
      Hot_Zone_Blocks.add(block)
      replicate(block, hot)
```

Frequent transfer
====================
```
cluster_Initialization(HZ_Percentage):

  initialize_hot_zone = (HZ_Percentage / 100) * totalNodes
  initialize_cold_zone = ((100 - HZ_Percentage) / 100) * totalNodes

inintial_block_write(Blocks):

  distribute_blocks_among_hot_nodes():

    for block in Blocks:

      Hot_Zone_Blocks.add(block)
      replicate(block, hot)


while(cluster.isActive):

  sleep(3 seconds)
  namenode.getHeartBeats(Hot_Zone_Nodes)

  for block in Hot_Zone_Blocks:

    if(block.lastAccess > threshold):

      Hot_Zone_Blocks.remove(block)
      Transition_Zone_Blocks.add(block)

      if(num(Transition_Zone_Blocks) * 128 > TransitionThreshold)

        Flush_Transition_Blocks():

          for block in Transition_Zone_Blocks:

            Transition_Zone_Blocks.remove(block)
            Cold_Zone_Blocks.add(block)
            replicate(block, cold)

  for block in Cold_Zone_Blocks:

    if(block.lastAccess < threshold):

      Cold_Zone_Blocks.remove(block)
      Hot_Zone_Blocks.add(block)
      replicate(block, hot)
```
