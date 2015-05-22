
#Aliases
alias ls="ls --color"
alias grep="grep --color"  # show color
alias mkdir="mkdir -p"  # make all directories in provided path
alias rm="rm -i"
alias ..="cd .."
alias vi="vim"
alias open="evince"

# Prompt
PS1="\n\[\e[0;32m\]\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \n\t > "

# Environment
export TERM="xterm-256color"
export FTP_PASSIVE_MODE=yes

shopt -s cdspell
shopt -s checkwinsize
shopt -s expand_aliases

export EDITOR=vim
export SVN_EDITOR=vim

# Setup Path
export STOW_ARCH="x86_64-ubuntu10"

export STOW_ROOT="/scratch/sdtwigg/install"
export STOW_USR_PREFIX="${STOW_ROOT}/${STOW_ARCH}"

# Connect all the RISC-V tools
export PATH="/opt/riscv/bin:${PATH}"

# Connect all my other tools
export PATH="${STOW_USR_PREFIX}/bin:${PATH}"
export PATH="${STOW_USR_PREFIX}/ocaml/bin:${PATH}"
export PATH="${STOW_USR_PREFIX}/coq/bin:${PATH}"
export PKG_CONFIG_PATH="${STOW_USR_PREFIX}/share/pkgconfig:${PKG_CONFIG_PATH}"

# Connect my RISC-V tools
export RISCV="${STOW_USR_PREFIX}/riscv" #x86 stuff
export PATH="${RISCV}/bin:${PATH}"

export RISCV_TARGET="${STOW_USR_PREFIX}/riscv/target" #riscv
export RISCV_PKG_CONFIG_PATH="${RISCV_TARGET}/share/pkgconfig:${RISCV_PKG_CONFIG_PATH}"

export LOCAL_SCRATCH="/scratch/sdtwigg"

if [ -f /ecad/tools/vlsi.bashrc ]; then
  source /ecad/tools/vlsi.bashrc
  unset LD_LIBRARY_PATH #Fix issue with Xilinx installing an old version of GCC here
fi

export LD_LIBRARY_PATH="${STOW_USR_PREFIX}/lib:${LD_LIBRARY_PATH}"
export LIBRARY_PATH="${STOW_USR_PREFIX}/lib:${LIBRARY_PATH}"
export C_INCLUDE_PATH="${STOW_USR_PREFIX}/include:${C_INCLUDE_PATH}"

export SNPSLMD_LICENSE_FILE="1709@parcad.millennium.berkeley.edu"

# OPAM configuration
. /home/eecs/sdtwigg/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
