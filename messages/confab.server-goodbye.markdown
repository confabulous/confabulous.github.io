---
layout: message
name: confab.server-goodbye
---
Indicates that an error condition has occurred that requires the connection to be closed.

### Fields
* `error`: A string from the following list: auth-failure
* `message`: A human-readable description of the error condition

### Example

{% highlight javascript %}
{
    error: "auth-failure",
    message: "Authentication failed"
}
{% endhighlight %}
