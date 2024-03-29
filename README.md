# AkPBD
Compounds for Position Based Dynamics in bifrost

> **Created with:**  
> * Maya 2024.2
> * Bifrost 2.7.1.1

# Installation
Set the path to [`bifrost_lib_config.json`](bifrost_lib_config.json) as `BIFROST_LIB_CONFIG_FILES` in the environment variable. For example, to place the bifrost_AkPBD folder on the D drive, enter the following in Maya.env:
```
BIFROST_LIB_CONFIG_FILES=D:\bifrost_AkPBD\bifrost_lib_config.json
```

# Compounds
|Category|Name|Description|
|----|---|---|
|Core|`verlet`|Calculate next position (include gravity and spring)|
|Core|`keep_position`|Pull back to initial position|
|Core|`update_velocity`|Calculate velocity from change of position|
|Core|`reset`|Reset position and velocity|
|Constraint|`distance_constraint`|Distance constraint (one point fixed)|
|Constraint|`distance_constraint_2_points`|Distance constraints (2 points can move)|
|Constraint|`angle_limit`|Angle limit between two vectors|
|Collision|`ground_collision`|Horizontal infinite XZ plane collision|
|Collision|`sphere_collision`|Sphere collision|
|Collision|`capsule_collision`|Capsule collision (individual radius)|
|Collision|`infinite_plane_collision`|Infinite plane collision|
|Collision|`mesh_collision`|Mesh collision<br>(*only available in geometry)|
|Collision|`mesh_collision_with_bulge`|Mesh collision with bulge effects<br>(*only available in geometry)|
|Utils|`distance`|Distance between two vectors|
|Utils|`mass_to_weight`|Calculate weight from mass (w=1/m)|
|Utils|`normalize_weight`|Normalize two float values (total to 1)|
|Utils|`project_onto_plane`|Project a point or vector onto the XZ plane|
|Utils|`rotate_vector_around_axis`|Rotate a vector around axis by angle|

# Sample Graphs
Some samples can be accessed from the Bifrost Browser.  
![samples.png](.images/samples.png)

|Graph|Description|Compounds used|
|---|---|---|
|boneDynamics|Create the dynamics for one section of bone. One sphere collision and one capsule collision are included as samples.|`verlet` `keep_position` `update_velocity` `reset` `ground_collision` `sphere_collision` `capsule_collision` `distance_constraint` `distance`|
|boneDynamicsAngleLimit|It is a type of bone dynamics. Angle limit have been added to the constraint iterates, and changes have been made to use rotation values for input and output from Maya.|`verlet` `keep_position` `update_velocity` `reset` `sphere_collision` `angle_limit` `rotate_vector_around_axis` `distance_constraint` `distance`|
|hingeJoint|It is a type of bone dynamics. It is achieved by projecting the corrected position and external force vector onto a certain plane.|`verlet` `keep_position` `update_velocity` `reset` `project_onto_plane` `distance_constraint` `distance`|
|meshCollision|Mesh collision deforms the mesh. The area around the contact point will bulge. *Only available for mesh.|`verlet` `keep_position` `update_velocity` `reset` `mesh_collision_with_bulge`|
|rope|Create a rope with dynamics and distance constraints at 7 points. Points at both ends can be moved. Sphere and capsule collisions are included.|`verlet` `keep_position` `update_velocity` `reset` `ground_collision` `sphere_collision` `capsule_collision` `distance` `mass_to_weight` `distance_constraint` `distance_constraint_2_points` `normalize_weight`|
|softMesh|Create dynamics to the vertices of a mesh. There is weighting by vertex color. One sphere collision is included as a sample.|`verlet` `keep_position` `update_velocity` `reset` `sphere_collision`|

# Related Links  
* [Bifrostではじめる位置ベース物理シミュ 第1回 \~位置ベース法\~](https://qiita.com/akasaki1211/items/54f6009ed3389948f7f0)
* [Bifrostではじめる位置ベース物理シミュ 第2回 \~力を加える・位置を補正する\~](https://qiita.com/akasaki1211/items/d7272303d44d4823b39d)
* [Bifrostではじめる位置ベース物理シミュ 第3回 \~制約条件を追加する\~](https://qiita.com/akasaki1211/items/9d22075df1a51be1ed4c)
* [Bifrostではじめる位置ベース物理シミュ 第4回 \~コリジョンを追加する\~](https://qiita.com/akasaki1211/items/971ccad3c50d88749ba1)
* [Bifrostではじめる位置ベース物理シミュ 第5回 \~ジョイント、カーブ、メッシュ\~](https://qiita.com/akasaki1211/items/39440c98e54999673ecf)

# Related Posts
* [Mesh Collision with Bulge](https://x.com/akasaki1211/status/1758894802505249012?s=46&t=3hUc70jt72Ws5nGlWWELlw)
* [Mesh Collision with Bulge and Dynamics](https://x.com/akasaki1211/status/1762799556708729248?s=46&t=3hUc70jt72Ws5nGlWWELlw)
* [Angle Limit](https://twitter.com/akasaki1211/status/1767139185029509301)
* [Hinge Joint](https://twitter.com/akasaki1211/status/1767531425815990379)