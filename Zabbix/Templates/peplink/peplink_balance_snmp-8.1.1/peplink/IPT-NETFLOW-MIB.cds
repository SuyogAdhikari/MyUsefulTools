 -- IPT-NETFLOW-MIB.my
   "Fixed point, two decimals."                                                                                     "MIB module for IPT-NETFLOW." ""       -- 11 12, 2020 at 12:00 GMT
               "Name of the module."                       !"Software version of the module."                       "Binary version of the module."                       "Load date time of the module."                       '"Module usage by other kernel objects."                           $"Protocol version (5, 9, 10=IPFIX)."                       !"Hash table size of flows cache."                       9"Max flows limit. This limit is used for DoS protection."                       "Active flows timeout value."                       "Inactive flows timeout value."                       "Sockets SNDBUF size."                       "Export destination parameter."                       "Aggregation parameters."                       j"Sampler parameters: sampling mode:sampling interval.
	Where sampling modes: deterministic, random, hash."                       ("Natevents (NEL) controlling parameter."                       %"Promisc hack controlling parameter."                       "SNMP-index translation rules."                       "scan-min parameter."                               !"Total incoming bits per second."                       $"Total incoming packets per second."                       !"Total observed (metered) flows."                       7"Total metered packets(Not including dropped packets)."                       $"Total metered bytes of in packets."                       �"Measure of performance of hash table.
	When optimal will be attract to 1.0.
        When non-optimal will be highly above of 1."                       '"System memory used by the hash table."                       C"Flows currently residing in the hash table and not
	exported yet."                       8"Packets in flows currently residing in the hash table."                       6"Bytes in flows currently residing in the hash table."                       ,"Total packets dropped by metering process."                       5"Total bytes in packets dropped by metering process."                       )"Total exporter output bytes per second."                       #"Total exported flow data records."                       2"Total exported packets of netflow stream itself."                       0"Total exported bytes of netflow stream itself."                       �"Total of accounted flows that are lost by exporting process
	 due to socket errors. This value will not include asynchronous
	 errors (cberr), these will be counted in errTotal."                       O"Total metered packets lost by exporting process.
	 See lostFlows for details."                       P"Total bytes in packets lost by exporting process.
	 See lostFlows for details."                       3"Total exporting sockets errors (including cberr)."                       F"Global maximum value of socket sndbuf. Sort of output
	queue length."                       "Per-CPU statistics."                       -"Defines an entry in the iptNetflowCpuTable."                       "Index of this CPU."                       +"Incoming packets per second for this CPU."                       "Flows metered on this CPU."                       "Packets metered for cpuIndex."                       "Bytes metered on this CPU."                       3"Measure of performance of hash table on this CPU."                       2"Packets dropped by metering process on this CPU."                       '"Bytes in cpuDropPackets for this CPU."                       )"Truncated packets dropped for this CPU."                       *"Fragmented packets dropped for this CPU."                       2"Packets dropped due to memory allocation errors."                       6"Packets dropped due to maxflows limit being reached."                       "Per socket statistics."                       ."Defines an entry in the iptNetflowSockTable."                       "Exporting socket index."                       -"Exporting connection destination of socket."                       "Connection state of socket."                       �"Connections attempt count.
	High value usually mean that network is not set up properly,
	or module is loaded before network is up."                       M"Socket full errors on this socket. Usually mean sndbuf
	value is too small."                       �"Asynchronous callback errors on this socket. Usually mean
	that there is 'connection refused' errors on UDP socket
	reported via ICMP messages."                       +"All other possible errors on this socket."                       \"Sndbuf value for this socket.
	Higher value allows accommodate (exporting) traffic bursts."                       n"Amount of data currently in socket buffers.
	When this value will reach size sndbuf, packet loss will occur."                       x"Historical peak amount of data in socket buffers.
	Useful to evaluate sndbuf size, due to sockSndbufFill is transient."                               "iptNetflowCompliance"                   "Module info."                 ("Read-write objects accessed via sysctl"                 "Statistics totals."                 "Per CPU statistics."                 "Per socket statistics."                    