# API Test Tool

> Rewrite whole apps with safe & ease

Acceptance and Regression Testing support for your API. Implementation agnostic. Written in Ruby.

## What problem does it solve?

* You have an application with any form of HTTP based API (rest, mvc, json, xml, ..)
* You are in a need to perform a **major rewrite** of the application (you can read: *refactor*)


* Your **existing unit tests** within the application **won't help** much if you
change a platform (i.e. Java -> Python) or a framework (Rails -> Sinatra)

* or if **non existing tests** don't exist

Would be great if new, rewritten app **works the same** way as the old one. This is what your **end users expect** to.

Would be great if all the endpoints (*URLs*) return same output given same input (read: *regression 
testing*)

### How can one safely re-implement an app without breaking its functionality?

What you need are **black box tests**. Tests that do not need to know internals of an application.
They might also be called **acceptance tests**. 

These kind of tests can be easily reverse engineered based on how 
the application works.

> When the only way is to rely on public interfaces..
>
> If an application can be driven by simple *curl* requests..
>
> Then *Api Test Tool* **will assist you in less painful transformation** of the application.


## How exactly it works?

It is based on *Ruby* *Rspec* testing framework. Single test addresses one use case.

Supports top of the [Testing Pyramid] [1]

A use case would be a definition of steps *(requests)* and their output *(responses)*.

Such use case is **run against 2 systems: old and new**. Then a verification is being made if both
systems act and _respond_ in the same way.

## An algorithm would solve the problem this way:

    having system A identified by endpoint A
    having system B identified by endpoint B
    
    for usecase in all usecases
      for step in all steps of (usecase)
        response of A = execute step (endpoint(A), parameters)
        response of B = execute step (endpoint(B), parameters)
        
        if response of A != response of B
          fail "Your systems differ on #{step}"
        end
      end
    end
    write "Your systems looks like twins"

## Is that so simple?

Eee.. No :-)

* Responses can contain unique data - like session identifiers
* Existing system might not work
* Some features might be only available in 1 of the systems
* You might want to record few scenarios in order to speed up the process
* A *step* can have different endpoints in both systems
* .. etc etc ..

That's why this tool to support you in the process

## Current state

Implementation is not yet publicly available

## Usage

This is a console tool based on Ruby. No GUI.

## Contributing

1. Fork it ( http://github.com/nthx/api_test_tool/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[1]: http://martinfowler.com/bliki/TestPyramid.html        "Testing Pyramid"

