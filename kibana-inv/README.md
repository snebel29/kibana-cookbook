kibana-inv Cookbook
====================
Installs kibana for inv

Requirements
------------
depends on kibana-base

Attributes
----------
Refer to kibana-base attributes

Usage
-----
#### kibana-inv::default
Just include `kibana-inv` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[kibana-inv]"
  ]
}
```

Contributing
------------

1. Fork the repository on git.ask.com
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using git.ask.com

License and Authors
-------------------
Authors: gonzalos
