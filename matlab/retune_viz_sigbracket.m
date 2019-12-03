function sigbracket(tex,bars,y,FontSize)
% 
%    tex = e.g. '*' or '**' (default = '*')
%    bars  = e.g. bars that are significantly different (default = [1 2]) 
%    y =  height in plot (default = 'auto') 
%    FontSize...
%
%     '��''.=+UJ_�''��''.'''.'''''''''._|?]_...'..
%     '',.[Y�?TG:....................|kT??>_,....
%     ,..f!=�>j|�?:_.�''-��'.'...._|UT!:]"f>.''..
%     ..-;.f@|"�-"?++==_=______=|%TT!-|kJ=jfj''''
%     ...]..YG;.-.|#RRTkGUIIUUbBJ|U|=;f%G>f|;'...
%     ...]_-[#�__�RJ>]|<YR##RAYTTYA@�:=kGj-|?.''.
%     ''->j=<##UIT??!*!][TRBkY>[�?YTTT�#B|=<G ..'
%     ...J|+ARYRG;��._"*!!TY?!?!j-��*<RYRRG+G....
%     ..-bAT>|kG]--_-;j_*|[G?[]=;=__.-�G+IkR@....
%     '.%�?<kb@]__._=��"f]<?;|]*�f=___|YRRJ+�>..'
%     .f]:[Ib@G:�+>[+= .f?[+|:j..|]!TG:[TIIU+?j..
%     .%|[�k@G>k@?I�G?+_f?[G[?--+%?��[R@%bB@?<]..
%     .k>[@RbGIbB||RYk#]<]|@;�fk#k��!!�RVbbBIk]..
%     -?�[RbbbbARG:==f%><�[@|?|Y�;f;-.-<AAAb@<J,.
%     .?<%bRRR�??-""|]"f%Tk@TT]_f]-"__f�!"[R@�] .
%     .f�?<G]j''��__:;_f!?%G>;-*:|j ''��'-f<J?-..
%     ..-?[�;,  ..'">|*-||<�?:=.*[]      _:<?�  .
%     ...."!�:_.. . *- -�II+II+=.*-   ..=�?*,   .
%     ....,.�"!?�+:=-  fKPPPPPWG,.:==|??*�,     .
%     ''..,.....-*�Y_ .-R#W####J..|T!"�..,  .   .
%     .......''..,,.*_..f�YTYY]..-*....'.........
%     ''''..,...''''.'�"***!!*"""�...........'...'
if ~exist('tex','var')
    tex='*';
end
if ~exist('bars','var')
    bars = [1,2];
end

lim=get(gca,'ylim');
if exist('y','var')
    lim(2) = y;
else
    y = lim(2)*1.2;
end

if ~exist('FontSize','var')
    FontSize=14;
end

hold on;
if numel(bars)>1
plot(bars,[lim(2),lim(2)],'color','k')
plot([bars(1) bars(1)],[lim(2)-0.02*lim(2) lim(2)],'color','k')
plot([bars(2) bars(2)],[lim(2)-0.02*lim(2) lim(2)],'color','k')
end
if strcmp(tex(1),'*')
%     keyboard
    if y>0
        t=text(mean(bars),lim(2)+0.015*lim(2),tex);
    else
        t=text(mean(bars),lim(2)+0.1*lim(2),tex);
    end
else
    if y>0
        t=text(mean(bars),lim(2)+FontSize/100*lim(2),tex);
    else
        t=text(mean(bars),lim(2)+0.1*FontSize/100*lim(2),tex);
    end
end
set(t,'FontSize',FontSize,'HorizontalAlignment','center')
try
    ylim([lim(1) lim(2)+0.2*lim(2)])
end

hold off;