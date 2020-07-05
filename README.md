# ansible-role-cardano-node
Ansible role to install Cardano binaries from source. This is a best practice guide on how to 
install a Cardano for people who are interested to run a professional ADA Staking Poo

## Requirements

None.

## Role Variables

The following variables are also availble with defaults:

    ### Server settings
    #  Cardano username (cannot be 'admin' or 'root')
    server_username: cardano
    server_hostname: cardano-eu-central-1
    
    # Cabal
    cabal_install_version: 3.2.0.0
    cabal_base_url: "https://downloads.haskell.org"
    cabal_install_url: "{{ cabal_base_url }}/~cabal/cabal-install-{{ cabal_install_version }}/cabal-install-{{ cabal_install_version }}-x86_64-unknown-linux.tar.xz"
    
    # GHC
    ghc_install_version: 8.6.5
    ghc_install_url: "https://downloads.haskell.org/~ghc/{{ ghc_install_version }}/ghc-{{ ghc_install_version }}-x86_64-deb9-linux.tar.xz"
    
    # Libsodium
    libsodium_github_url: "https://github.com/input-output-hk/libsodium"
    libsodium_version_tag:  "66f017f1"
    
    # Cardano
    cardano_github_url: "https://github.com/input-output-hk/cardano-node.git"
    cardano_version_tag: "tags/1.14.2"
    cardano_install_dir: "/opt/cardano/cnode"
    cardano_config_dir: "{{ cardano_install_dir }}/configuration"
    cardano_scripts_dir: "{{ cardano_install_dir }}/scripts"
    cardano_default_port: "3000" # Amend if running relay and producer on same box
    
    # Shelly Testnet Configuration
    cardano_shelly_test_config: "https://hydra.iohk.io/build/3246637/download/1/shelley_testnet-config.json"
    cardano_shelly_test_genesis: "https://hydra.iohk.io/build/3246637/download/1/shelley_testnet-genesis.json"
    cardano_shelly_test_topology: "https://hydra.iohk.io/build/3246637/download/1/shelley_testnet-topology.json"
    
## Dependencies

None.

## Example Playbook

    ---
    - hosts: all
      become: yes
      gather_facts: yes
      vars:
        # Cordano build tag
        cardano_version_tag: "tags/1.14.2"
      roles:
        - role: sionsmith.cardano_node
    