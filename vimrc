""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration file for vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let skip_defaults_vim=1				
set modelines=0                                       " CVE-2007-2438
set nocompatible                                      " 去除vi一致性，必须要添加 
filetype off                                          " 必须要添加
set rtp+=~/.vim/bundle/Vundle.vim                     " 设置包括vundle和初始化相关的runtime path
call vundle#begin()                                   " 必须
" Github上的插件 格式为 Plugin '用户名/插件仓库名'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
" 插件在仓库的子目录中.正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突 Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'VundleVim/Vundle.vim'                         " 引入Vundel插件
Plugin 'scrooloose/nerdtree'                          " 引入NERDTree目录树
Plugin 'plasticboy/vim-markdown'                      " 语法高亮插件
Plugin 'yianwillis/vimcdoc'                           " vim中文文档
Plugin 'mhinz/vim-signify'                            " 修改标记
Plugin 'vim-airline/vim-airline-themes'               " 状态栏


call vundle#end()                                     " 必须 你的所有插件需要在这行之前
filetype plugin indent on                             " 必须 加在vim自带和插件相应的语法和文件类型相关脚本
" filetype plugin on                                  " 忽视插件改变缩进，也可以代替

" :PluginList                                         - 列出所有已配置的插件
" :PluginInstall                                      - 安装插件，追加`!`用以更新或使用 :PluginUpdate
" :PluginSearch foo                                   - 搜索 foo; 追加`!`清除本地缓存
" :PluginClean                                        - 清除未使用插件，需要确认; 追加`!`自动批准移出未使用插件


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on                                             " 自动语法高亮
set number                                            " 设置显示行号
set relativenumber                                    " 配合number，更高效的行间跳转
"set cursorline                                       " 突出显示当前行
set ruler                                             " 打开状态栏游尺
set mouse=a                                           " 打开鼠标 (所有模式)
color molokai                                         " 设置背景主题
"autocmd InsertLeave * se cul                         " 用浅色高亮当前行
set showcmd                                           " 在屏幕右下角显示未完成的指令输入 
set showmode                                          " 在左下角显示当前的模式名称
set scrolloff=3                                       " 滚动时屏幕上下至少留3行


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索相关
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch                                          " 搜索时高亮显示被找到的文本
set nowrapscan                                        " 禁止在搜索到文件两端时重新搜索
set incsearch                                         " 输入搜索内容时就显示搜索结果
set ignorecase smartcase                              " 搜索时忽略大小写, 但在有一个或以上大写字母时仍保持对大小写敏感


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=2                                         " 设定tab长度为2
set shiftwidth=2                                      " 设定 << 和 >> 命令移动时的宽度为2
set softtabstop=2                                     " 也是缩进 
set showmatch                                         " 输入括号时，短暂地跳转到匹配的对应括号
set matchtime=1                                       " 短暂跳转到匹配括号的时间
set smartindent                                       " 开启新行时使用只能自动缩进
set autoindent                                        " 自动缩进 (使用noautoindent取消设置)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本折叠
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable                                        " 开始折叠
set nowrap                                            " 指定不折行
set foldmethod=syntax                                 " 设置语法折叠
set foldcolumn=0                                      " 设置折叠区域的宽度
setlocal foldlevel=1                                  " 设置折叠层数为1
set foldclose=all                                     " 设置为自动关闭折叠


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 实用设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noeb                                              " 去掉输入错误的提示声音
set confirm                                           " 在处理未保存或只读文件的时候，弹出确认
set wildmenu                                          " 在命令模式下使用Tab以菜单形式显示补全命令
set guioptions+=b                                     " 添加水平滚动条
set history=1000                                      " 默认存储1000条历史记录
set nobackup                                          " 禁止生成临时文件
set expandtab                                         " 输入tab时自动将其转为空格


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-k> :NERDTree<CR>                  " 将F2设置未开关NERDTree的快捷键
nnoremap <C-b> :exe 'NERDTreeToggle'<CR>
let g:NERDTreeDirArrowExpandable = '+'                " 修改树的显示图标
let g:NERDTreeDirArrowCollapsible = '-'               " 修改树的显示图标
let g:NERDTreeWinPos='left'                           " 窗口位置
let g:NERDTreeSize=20                                 " 窗口尺寸
let g:NERDTreeShowLineNumbers=0                       " 窗口是否显示行号
let g:NERDTreeHidden=0                                " 不显示隐藏文件
autocmd vimenter * if !argc()|NERDTree|endif          " 打开vim时如果没有文件自动打开NERDTree
" 当NERDTree剩下唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"autocmd vimenter * NERDTree                           " 打开vim时自动打开NERDTree

" 常用命令
" 通过hjkl来移动光标
" o打开关闭文件或目录，如果想打开文件，必须光标移动到文件名
" t在标签页中打开
" s和i可以水平或纵向分割窗口打开文件












