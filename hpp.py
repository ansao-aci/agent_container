xmlhpp = '''<fvTenant name="stress">
    <hostprotPol name="name_sg" descr="Blah Blah Blah">
       <hostprotSubj name="abcdef">
           <hostprotRule
                name="88c5e1ef-7745-4800-874d-de8f680612e4" direction="egress" ethertype="ipv4">
              <hostprotRemoteIp addr="7.7.7.1/24"/>
              <hostprotRemoteIp addr="11.2.3.1/24"/>
           </hostprotRule>
           <hostprotRule
                name="asdf" direction="egress" fromPort="80" toPort="80">
              <hostprotRemoteIp addr="121.2.3.1/24"/>
           </hostprotRule>
       </hostprotSubj>
   </hostprotPol>
</fvTenant>'''

list_name=["sg17", "sg16", "sg10", "sg7", "sg8", "sg3", "sg5", "sg9", "sg28","sg6", "sg4", "sg13", "sg15"]

for name in list_name:
     new_xml = xmlhpp.replace("name_sg", name)
     text_file = open(name, 'w')
     text_file.write(new_xml)
     text_file.close()


