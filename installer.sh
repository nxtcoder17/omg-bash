#! /bin/bash

# This will store the path to our omg-bash folder,
# No, matter how we are executing the scripts

SCRIPTS_DIR=$(dirname $(realpath $0))

# Following command will replace the value of variable OMG_BASH_DIR
# Need to use | in sed because $SCRIPTS_DIR contains /
sed -i -E "s|(OMG_BASH_DIR=).*|\1\"$SCRIPTS_DIR\"|g" $SCRIPTS_DIR/bashrc

if ([[ -f ~/.bashrc ]] || [[ -L ~/.bashrc ]])
then
  echo "WARNING: ~/.bashrc already exists, moving to ~/.bashrc.bkp"
  mv ~/.bashrc ~/.bashrc.bkp
fi

# Link the $SCRIPTS_DIR/bashrc to the ~/.bashrc
ln -s $SCRIPTS_DIR/bashrc ~/.bashrc
