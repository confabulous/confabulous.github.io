---
title: Wire protocol
layout: default
---
[Resources](resources/) and the [messages](messages/) they receive and send are documented here.

The protocol consists of a bidirectional stream of asynchronous frames, which are BSON-encoded with a small header.

### Frame layout
    +-------------------------------+---------------+---------------+
    |         Payload size          |    Reserved   |  Frame type   |
    +-------------------------------+---------------+---------------+
    |                            Payload                            |
    |                               .                               |
    |                               .                               |
    |                               .                               |

### Frame types

| #      | Type                               |
| ------ | ---------------------------------- |
| 1      | [Notification](notifications/)     |
| 2      | [Client Hello](handshake.html)     |
| 3      | [Server Hello](handshake.html)     |
| 4      | [Server Goodbye](handshake.html)   |
| 5      | [Heartbeat](heartbeat.html)        |
| 7      | [Request](requests/)               |
| 9      | [Command Invocation](command.html) |
| 10     | [Output](templates/)               |
| 11     | [Input](input.html)                |
