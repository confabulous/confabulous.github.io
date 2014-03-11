---
layout: default
---
## Messages
Messages consist of message data wrapped in a header. While both the `to` and `from` fields are used internally, only
`to` is used in messages to the server and only `from` is seen in messages from the server.

The `via` field is only present a message from the server that has been routed via a resource other than the one
that generated it.

{% highlight javascript %}
{
    to: "...",
    from: "...",
    via: "...",
    data: {
        ...
    }
}
{% endhighlight %}
