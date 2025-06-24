{config, lib, pkgs, ... }:

{


programs.firefox = {
    enable = true;
    profiles.default = {
        id = 0;
        name = "Default";
        settings = {
            # Browser settings go here
            "browser.startup.homepage" = "https://shen.hong.io/";
            
        };
    };
};





}
