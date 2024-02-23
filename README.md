# EUREKA

This repository has a single class `David` and a module `Golias`. They are necessary and sufficient conditions to reproduce the odd behavior on
this [open food network commit](https://github.com/openfoodfoundation/openfoodnetwork/pull/12183/files#diff-289b69a1c4fbfad6b9f2eb27097f2b173b9f80d8243f7aca10cd88f6903e3059).

`David` includes `Golias` inside its instance only. The class per si does not include and implements `#pretty_number` function. 

# Steps to reproduce the bug

1. create a class with its `def initiazer`;
2. include a module on it;
3. create a class method;
4. try to call any method from the included module as a class method.
```
david_class = David
david_class.decorate_number => no method error David::Class # since David class does not include Golias

number = 10
david_instance = David.new(number)  => #<David:0x00007f986569b888 @number=10> # argument number just to keep problems similar
david_instance.decorate_number => "This is a beautiful number: S2 10 S2" 


```