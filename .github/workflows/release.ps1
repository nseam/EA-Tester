Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
scoop update
scoop install ruby python
scoop install shellcheck
Invoke-WebRequest -Uri https://github.com/EA31337/MetaEditor/raw/master/metaeditor64.exe -OutFile metaeditor64.exe
shellcheck --version
ruby --version
git submodule update --init
ruby -wc Vagrantfile
shellcheck -e "SC1004,SC1083,SC1090,SC1091,SC1117,SC2004,SC2005,SC2015,SC2027,SC2032,SC2033,SC2034,SC2035,SC2046,SC2068,SC2070,SC2071,SC2086,SC2091,SC2103,SC2116,SC2124,SC2128,SC2145,SC2154,SC2155,SC2162,SC2164,SC2166,SC2181,SC2188,SC2206,SC2221,SC2222,SC2230" ./scripts/eval.sh ./scripts/run_backtest.sh ./scripts/provision.sh ./scripts/.vars.inc.sh ./scripts/install_mt5.sh ./scripts/.aliases.inc.sh ./scripts/bt_data_get.sh ./scripts/get_gh_asset.sh ./scripts/push_repo.sh ./scripts/run_terminal.sh ./scripts/.funcs.inc.sh ./scripts/dl_ea.sh ./scripts/clone_repo.sh ./scripts/.funcs.cmds.inc.sh ./scripts/install_mt4.sh ./scripts/install_mt4x.sh
./metaeditor64.exe /mql4 /s /compile:"tests" /log:mql4.log > mql4.log.1
./metaeditor64.exe /mql5 /s /compile:"tests" /log:mql5.log > mql5.log.1
ls
type mql4.log
type mql5.log
ruby -e "if File.open('mql4.log', mode:'rb:BOM|UTF-16LE').readlines.grep(Regexp.new '[1-9] error'.encode(Encoding::UTF_16LE)) {exit 1}; end"
ruby -e "if File.open('mql4.log', mode:'rb:BOM|UTF-16LE').readlines.grep(Regexp.new '[1-9] warning'.encode(Encoding::UTF_16LE)) {exit 1}; end"
ruby -e "if File.open('mql4.log', mode:'rb:BOM|UTF-16LE').readlines.grep(Regexp.new '[1-9][0-9] error'.encode(Encoding::UTF_16LE)) {exit 1}; end"
ruby -e "if File.open('mql4.log', mode:'rb:BOM|UTF-16LE').readlines.grep(Regexp.new '[1-9][0-9] warning'.encode(Encoding::UTF_16LE)) {exit 1}; end"
ruby -e "if File.open('mql5.log', mode:'rb:BOM|UTF-16LE').readlines.grep(Regexp.new '[1-9] error'.encode(Encoding::UTF_16LE)) {exit 1}; end"
ruby -e "if File.open('mql5.log', mode:'rb:BOM|UTF-16LE').readlines.grep(Regexp.new '[1-9] warning'.encode(Encoding::UTF_16LE)) {exit 1}; end"
ruby -e "if File.open('mql5.log', mode:'rb:BOM|UTF-16LE').readlines.grep(Regexp.new '[1-9][0-9] error'.encode(Encoding::UTF_16LE)) {exit 1}; end"
ruby -e "if File.open('mql5.log', mode:'rb:BOM|UTF-16LE').readlines.grep(Regexp.new '[1-9][0-9] warning'.encode(Encoding::UTF_16LE)) {exit 1}; end"