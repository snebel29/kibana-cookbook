kibana-base Cookbook
====================
This cookbook installs kibana 3 or 4 and is designed to be wrapped around by specific BU kibana cookbooks

Requirements
------------
ark cookbook
centos >= 7.2 with systemd

Attributes
----------

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['kibana']['version']</tt></td>
    <td>String</td>
    <td>Major.Minor.Build version</td>
    <td><tt>4.5.0</tt></td>
  </tr>
  <tr>
    <td><tt>['kibana']['checksum']</tt></td>
    <td>String</td>
    <td>SHA256sum hash</td>
    <td><tt>fa3f675febb34c0f676f8a64537967959eb95d2f5a81bc6da17aa5c98b9c76ef</tt></td>
  </tr>
  <tr>
    <td><tt>['kibana']['download_url']</tt></td>
    <td>String</td>
    <td>Artifact url</td>
    <td><tt>https://download.elastic.co/kibana/kibana/kibana-4.5.0-linux-x64.tar.gz</tt></td>
  </tr>
  <tr>
    <td><tt>['kibana']['user']</tt></td>
    <td>String</td>
    <td>The owner for the kibana files</td>
    <td><tt>kibana</tt></td>
  </tr>
  <tr>
    <td><tt>['kibana']['group']</tt></td>
    <td>String</td>
    <td>The group for the kibana files</td>
    <td><tt>kibana</tt></td>
  </tr>
  <tr>
    <td><tt>['kibana']['unit-name']</tt></td>
    <td>String</td>
    <td>Systemd unit name</td>
    <td><tt>$['kibana']['version']</tt></td>
  </tr>
  <tr>
    <td><tt>['kibana']['install-dir']</tt></td>
    <td>String</td>
    <td>The path where kibana will be installed</td>
    <td><tt>/opt/$['kibana']['user']}/$['kibana']['unit-name']</tt></td>
  </tr>
  <tr>
    <td><tt>['kibana']['config-file']</tt></td>
    <td>String</td>
    <td>Path to the kibana config file</td>
    <td><tt>$['kibana']['install-dir']/config/kibana.yml</tt></td>
  </tr>

</table>

Note that any of the kibana.yml configuration parameters can also be overwrited
example:
```
default['kibana']['config']['port'] = 5601
```
Usage
-----
#### kibana-base::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `kibana-base` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[kibana-base]"
  ]
}
```

Or 
```
include_recipe "kibana-base::default"
```
within your wrapper cookbook and overwrite attribute values 

Contributing
------------

e.g.
1. Fork the repository on git.ask.com
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using git.ask.com

License and Authors
-------------------
Authors: gonzalos
