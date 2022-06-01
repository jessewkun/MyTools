filetype on                                               " 侦测文件类型
filetype plugin on                                        " 载入文件类型插件
filetype indent on                                        " 为特定文件类型载入相关缩进文件
syntax on                                                 " 语法高亮
set t_Co=256                                              " 开启256色支持
set laststatus=2                                          " 总是显示状态行
set cmdheight=2                                           " 命令行（在状态行下）的高度，默认为1，这里是2
set showcmd                                               " select模式下显示选中的行数
set ruler                                                 " 总是显示光标位置
set mouse=a                                               " 可以在buffer的任何地方使用鼠标
set selection=exclusive
set selectmode=mouse,key
set nu                                                    " 显示行号
set cursorline                                            " 当前行下划线
" hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white  " 当前行颜色
set autoindent                                            " 继承前一行的缩进方式，特别适用于多行注释
filetype indent on                                        " 自适应不同语言的智能缩进
set expandtab                                             " 将制表符扩展成空格
set tabstop=4                                             " 制表符为4
set softtabstop=4                                         " 统一缩进为4
set shiftwidth=4                                          " 设置格式化时制表符占用空格数
set wildmenu                                              " 增强模式中的命令行自动完成操作
set completeopt-=preview                                  " 补全时不显示窗口， 只显示补全列表
set hlsearch                                              " 高亮时显示搜索结果
set showmatch                                             " 高亮显示匹配的括号
set incsearch                                             " 开启实时搜索功能
set ignorecase                                            " 搜索时大小写不敏感
set smartcase                                             " 如果同时打开了ignorecase, 那么对于只有一个大写字母的搜索词, 将大小写敏感; 其他情况都是大小写不敏感"
set formatoptions=tcrqn                                   " 自动格式化
set nowrap                                                " 不要换行
hi identifier cterm=NONE                                  " 去掉关键字的粗体效果
set scrolloff=3                                           " 光标移动到buffer的顶部和底部时保持3行距离
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White
set virtualedit=onemore
hi Comment ctermfg=blue
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,big5,latin1
set termencoding=utf-8
set encoding=utf-8
set paste                                                 " 黏贴的时候保持原有格式