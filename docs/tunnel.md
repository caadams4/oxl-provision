# site-to-site tunnel

oxl on-call reach the managed hosts through the site-to-site tunnel. This repo only
creates the vpn VMs, the tunnel config itself lives with the customer platform team
(it is in their runbooks repo, not ours).

Peer range on the customer side: 10.40.8.0/28 (vpn-prod-01/02).
Oxl side: 10.72.0.0/16.
