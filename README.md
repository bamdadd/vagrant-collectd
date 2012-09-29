### Document Conventions

$SOMENAME - variable

### tw.com - Puppet Structure

<pre>
etc
 +puppet
   |-- extdata
   |    |-- nodes
   |    |    +-- 412976-vm3.thoughtworks.com.csv
   |    |-- application.csv
   |    +-- defaults.csv
   |-- manifests
   |    |-- nodes.pp
   |    +-- site.pp
   +-- modules
        +-- $MODULENAME
             |-- files
             |-- manifests
             +-- templates
</pre>


### tw.com - Puppet Description

__extdata__
- contains csv files for extlookup data.

__extdata/application.csv__
- contains the deployable application versions.

__extdata/defaults.csv__
- contains any shared default values, ideally all values should reflect production. 

__manifests/nodes.pp__
- list of all hosts and their associated class of server (e.g. publisher, editor, etc).

__manifests/site.pp__
- list of all server classes and the *main* entry point for puppet apply.
- contains the definition of precedence ordering for extlookup.

__modules/modulename/files/$FILE__
- static files that do not vary between hosts.

__modules/modulename/manifests/init.pp__
- primary entry point for the module (e.g. include modulename references init.pp).

__modules/modulename/templates/$TEMPLATE.erb__
- an erb template file that allows variable subtitution in configuration files.

### Reference Materials

[2.7.18 Release Reference](http://docs.puppetlabs.com/references/2.7.18/)
Index for all things puppet 2.7.18.

[Core Types Cheat Sheet](http://docs.puppetlabs.com/puppet_core_types_cheatsheet.pdf)
Good reference for some of the core types associated with puppet.

[Function Reference](http://docs.puppetlabs.com/references/stable/function.html)
Good reference for functions available while writing manifests.

[Puppet Forge](http://forge.puppetlabs.com/)
Sample modules for lots of stuff, theoretically "cut & paste", practically not so much.
