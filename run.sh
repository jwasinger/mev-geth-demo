rm -rf datadir

$(pwd)/geth init --datadir datadir genesis.json

$(pwd)/geth --datadir datadir --rpc --rpcapi debug,personal,eth,net,web3,txpool,admin,miner,minercollator --miner.etherbase=0xd912aecb07e9f4e1ea8e6b4779e7fb6aa1c3e4d8 --mine --miner.threads=8 --miner.enablecollatorplugin --miner.collatorpluginfile $(pwd)/mev.plugin --miner.collatorpluginconfigfile $(pwd)/config.toml --nodiscover
