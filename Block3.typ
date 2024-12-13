#set text(size: 15pt)
= 晶体管的分类:
$ "BJT:(双极晶体管)"cases("PNP","NPN") $
$ "FET:(场效应晶体管)"cases("JFET","MOSFET") $
= BJT
BJT在1948年于贝尔实验室发明, 主要作用是放大和当作开关.\
BJT可以视为由两个共有一个区域的PN结构成, 两边分别是Emiiter(发射极),Collector(集电极)和基级(Base).
#figure(caption: [BJT的结构])[#image("2024-12-13-10-20-58.png")]
#figure(caption: [NPN:从C到E,PNP:从E到C;箭头的一端始终是E极])[#image("2024-12-13-10-27-22.png")]
== BJT的工作模式
由$V_"BC"$和$V_"BE"$决定,组合起来是有四种?
#figure(caption: [四种工作模式])[#image("2024-12-13-10-34-24.png")]
== 放大区(Forward active)
- 条件:$V_"BE">V_t approx 0.7 V$,$V_"CB">0$
- 电流放大:$I_C=beta I_B=I_S (e^(V_"BE"/V_T)-1)$
  - $I_S=A_E q D_B/W_B n_"ib"^2/N_B$
  - $D_B$:中间P区少子(电子)的diffusion常数
  - $A_E$:发射极面积
  - $W_B$:基极的宽度
  - $n_"ib"$:基级的本征浓度
- 对于NPN管,Base和Collector是反向偏置的, $I_C$基本不受到这个电压的影响
#figure(caption: [放大qu])[#image("2024-12-13-10-38-10.png")]
#figure(caption: [以$V_"CE"$为轴])[#image("2024-12-13-10-54-55.png")]
#figure(caption: [对于Common Emiiter, 随着$V_"CE"$增加从饱和区到放大区再到击穿区])[#image("2024-12-13-10-57-34.png")]
=== 关于电流增益(以npn为例子)
$ I_C=beta I_B $
$ I_E=I_B+I_C $
$ I_C/I_E=alpha=beta/(beta+1) $
#figure(caption: [用物理公式计算])[#image("2024-12-13-15-08-01.png")]
== BJT的耗能
$ P=V_"BE"I_B+V_"CE"I_C $
== 基级宽度调制效应(Base-Width Modulation)
会导致在放大区, 随着$V_"CE"$的增大, $I_C$也增大的效应
#figure(caption: [基极宽度调制效应])[#image("2024-12-13-18-40-06.png")]
$ I_C=beta I_B (1+V_"CE"/V_A) $
#figure(caption: [随着$V_"CE"$增加,集电极和基极之间的耗尽层会增大])[#image("2024-12-13-18-46-59.png")]
如何减小这种效应?
- 增加基极宽度
- 增加基极的参杂浓度(concentration)
- 减少集电极参杂浓度
这种效应又叫做:Early effect(Early是人名)
== BJT的效率(efficiency)
$ gamma=(I_E-I_B)/I_E=I_C/(I_C+I_B) $
= JFET(Junction field transistor,场效应晶体管)
#figure(caption: [JFET也有三个极(漏级,源极还有栅极)])[#image("2024-12-13-19-27-54.png")]
是一种控制电压的器件(BJT用于控制电流)
#figure(caption: [n沟道JFET的结构])[#image("2024-12-13-19-31-56.png")]
== pinch-off voltage(夹断电压)
随着$V_"DS"$的增加,Drain极的两个耗尽区会逐渐接近, 直到挨到一起,这个节点的电压
是夹断电压, 夹断了之后, $I_D$不随着$V_"DS"$而增加\
#figure(caption: [JFET的原理])[#image("2024-12-13-20-05-37.png")]
比如沟道是n型的,那么其中的电子会被迅速拉入D, 这个过程收到$V_"DS"$和$v_"GS"$的限制\
在饱和区,$I_D$满足$I_D=V_p/(R_"AP")$, 和从A到P的沟道电阻有关(S接地)\
#figure(caption: [决定p的位置的重要关系$V_"GP"=-V_p$])[#image("2024-12-13-20-28-59.png")]
$I_D=V_"DS"/R_"AB"$,在饱和区,增加$V_"DS"$由于PN-结的效应, $R_"AB"$也增加了,
最终电流不会随着$V_"DS"$线性增加了
== $V_"GS"$的影响(之前的都是G和S一起接地的情况)
加了正的$V_"GS"$,一开始就扩展了耗尽区的厚度, 达到饱和区跟容易了
#figure(caption: [加了$V_"GS"$])[#image("2024-12-13-20-41-53.png")]
新的饱和区条件:$v_"DS"=V_"GS"+V_p$\
还是满足:$V_"GP"=-V_p$
== $V_"GS"$Turn-off的情况
$ V_"GS"=-V_p $
$V_"DS"=0$就完全夹断了, 完全成了耗尽层,加上$V_"DS"$也只能由热激发的电子导电,这个电流非常小
#figure(caption: [Turn off])[#image("2024-12-13-21-03-55.png")]
== JFET的电流电压特征
#figure(caption: [$V_"DS"$是常数,由$V_"GS"$控制$I_"DS"$])[#image("2024-12-13-21-10-01.png")]
=== 饱和区
$ I_D=I_"DSS" (1-V_"GS"/V_P)^2 $
$I_"DSS"$指的是$V_"GS"=0$的时候的$I_D$
=== 线性区(欧姆区)
$ I_"D"=k dot V_"DS" $
k由$V_"GS"$和沟道常数等因素决定
== JFET Commons Source Amplifier---用JFET构造放大器 
#figure(caption: [共源放大器])[#image("2024-12-13-21-29-20.png")]
直流偏置$V_"GG"<0$,上面加一个交流小信号, 