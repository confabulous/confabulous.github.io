---
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

| #      | Type    | Description                       |
| ------ | ------- | --------------------------------- |
| 1      | Message | BSON-encoded [message](messages/) |
