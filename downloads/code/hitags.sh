#!/bin/bash  
#ctags -R --fields=+l ;  
#ctags -R --languages=c++ --langmap=c++:+.inl -h +.inl --c++-kinds=+px--fields=+aiKSz --extra=+q --exclude=lex.yy.cc --exclude=copy_lex.yy.cc
#ctags -I __THROW -I __attribute_pure__ -I __nonnull -I __attribute__ --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+px --fields=+aiKlSz --extra=+q -R --langmap=c++:+.inl -h +.inl --exclude=lex.yy.cc --exclude=copy_lex.yy.cc --excmd=number
ctags -I __THROW -I __attribute_pure__ -I __nonnull -I __attribute__ --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+px --c++-kinds=+px --fields=+afliS --extra=+q --langmap=c:+.inl -h +.inl --exclude=lex.yy.cc --exclude=copy_lex.yy.cc --excmd=number -R 
awk -F '"' '$2 ~ /^\tf/    {print $1 "\n"}' tags | awk '$1 ~ /^[a-zA-Z]/ {print "syn keyword cFunction " $1}' 1>  tags.vim ; 
awk -F '"' '$2 ~ /^\t[de]/ {print $1 "\n"}' tags | awk '$1 ~ /^[a-zA-Z]/ {print "syn keyword cMacro " $1}'    1>> tags.vim ; 
awk -F '"' '$2 ~ /^\tt/    {print $1 "\n"}' tags | awk '$1 ~ /^[a-zA-Z]/ {print "syn keyword cTypedef " $1}'  1>> tags.vim ; 
awk -F '"' '$2 ~ /^\tv/    {print $1 "\n"}' tags | awk '$1 ~ /^[a-zA-Z]/ {print "syn keyword cGlobal " $1}'   1>> tags.vim ; 
awk -F '"' '$2 ~ /^\te/    {print $1 "\n"}' tags | awk '$1 ~ /^[a-zA-Z]/ {print "syn keyword cEnum " $1}'  	  1>> tags.vim ; 
