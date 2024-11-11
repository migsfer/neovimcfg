# neovim-cfg-based-on-primeagen-0toLSP-video

## install from sources
```curl --location https://github.com/neovim/neovim/archive/refs/tags/stable.zip --output nvim-v0.9.5.zip```

```unzip nvim-v0.9.5.zip -d nvim-v0.9.5/```

```cd nvim-linux/neovim-master/```

```make CMAKE_BUILD_TYPE=Release -j $(nproc)```

On Debian/Ubuntu, instead of installing files directly with 
```sudo make -j $(nproc) install```, 
you can run 

```cd build && cpack -G DEB```

```&& sudo dpkg -i nvim-linux64.deb```

## clone this repo directly to cfg
```git clone https://github.com/migsfer/neovimcfg ~/.config/nvim```
