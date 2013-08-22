xen-blanket
===========

blanket drivers to run Xen on clouds (e.g. Amazon EC2)

The Xen-Blanket aims to give cloud users hypervisor-level control on
public or private clouds by running a second-layer (Xen)
hypervisor. This code release contains patches to Xen and Linux
drivers to allow a second-layer guest to interact with underlying
paravirtualized device interfaces essential for performance and
deployability.

We are just beginning to explore the potential applications enabled by
the Xen-Blanket. The Xen-Blanket delivers an unprecedented level of
control to users of public clouds so that they can implement or run
innovative or essential hypervisor-level functionality. Furthermore,
we envision that the traditionally difficult or impossible task of
deploying applications that span multiple clouds will become
easy. With the Xen-Blanket, a user can homogenize various clouds by
running Xen as a second layer hypervisor. Only one set of VM image
formats and management tools will be needed across a diverse set of
clouds. To follow our ongoing research or to read research papers on
the subject, check out the research project Webpage at
http://xcloud.cs.cornell.edu.

Unlike emerging nested virtualization projects (e.g. the Turtles
Project) that require modifications to the underlying hypervisor, our
goal is immediate user-centric deployability. We do not want to wait
for cloud providers to adopt these mechanisms, and so we rely on
paravirtualization for the second layer hypervisor. So far, we have
implemented blanket drivers to run Xen on top of an unmodified Xen (as
an HVM guest) or KVM. Blanket drivers are necessary to interact with
paravirtualized device interfaces, which are commonly used in clouds
(e.g. Amazon's HVM Linux instances use PV-on-HVM device drivers). As
we extend the Xen-Blanket to run on more clouds, we intend to develop
more blanket drivers.

With this code, you can run Xen inside an EC2 instance today! To get
started, check out the detailed instructions on how to install Xen
within an EC2 instance.
