node 'slave1.puppet'{
  include slave1_static
}

node 'slave2.puppet'{
  include slave2_dynamic
}
  
node 'master.puppet' {
 include master_init
}

node 'minecraft.puppet' {
 include mcft_init
}