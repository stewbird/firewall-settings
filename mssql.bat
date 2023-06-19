::This script sets Firewall settings for SQL Named instances
::Script was put together from the following resource: https://blog.codeinside.eu/2019/07/31/sql-server-named-::instances-and-the-windows-firewall/

::SQL Named instances use dynamic ports by default. Set static port to 1435 before running script

netsh advfirewall firewall add rule name = SQLPort dir = in protocol = tcp action = allow localport = 1433 remoteip = localsubnet profile = DOMAIN,PRIVATE,PUBLIC

netsh advfirewall firewall add rule name = SQLPortUDP dir = in protocol = udp action = allow localport = 1434 remoteip = localsubnet profile = DOMAIN,PRIVATE,PUBLIC

netsh advfirewall firewall add rule name = SQLPortInstance dir = in protocol = tcp action = allow localport = 1435 remoteip = localsubnet profile = DOMAIN,PRIVATE,PUBLIC
