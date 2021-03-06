############################################################
#
# RESPONSIBLE: Erwan Marec
#
############################################################

structure template hardware/machine/200/49/Hp1/32;

"location" = "Room 200-48 Rack HP1 Shelf 32";
"serialnumber" = "a remplir";
 
"cpu" = list(create("hardware/cpu/amd/opteron_248"),
             create("hardware/cpu/amd/opteron_248"));

"harddisks" = nlist("hda", create("hardware/harddisk/ide", "capacity", 40*GB));

"ram" = list(create("hardware/ram/generic", "size", 4096*MB));

"cards/nic" = nlist("eth0",create("hardware/nic/tg3"),
                    "eth1",create("hardware/nic/tg3"));

"cards/nic/eth1/hwaddr" = "00:00:1A:1A:3B:DB"; #me NIC2
"cards/nic/eth0/hwaddr" = "00:00:1A:1A:3B:DA"; #me NIC1
"cards/nic/eth0/boot" = true; # me
