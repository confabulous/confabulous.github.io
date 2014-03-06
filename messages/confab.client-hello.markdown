---
layout: message
name: confab.client-hello
---
This is the first message of the protocol, sent from the client to the server immediately after successful connection.

<h3>Example</h3>

{% highlight javascript %}
{
    kind: "confab.client-hello",
    to: "/",
    data: {
        foo: "bar"
    }
}
{% endhighlight %}
