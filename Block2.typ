#set text(size: 15pt)
#import "@preview/whalogen:0.2.0": ce
= PN Junction(PN结)
== 半导体制造(Semiconductor Manufacturing Process)
#figure(caption: [半导体制作过程])[#image("2024-12-10-20-54-16.png")]
一些名词的解释
- Oxidation: 为了保护晶片(wafer)
- Photolithography(光刻):在晶片上画电路
- Etching(蚀刻):完成电路形状的刻画
- Deposition & Ion Implantation(离子注入与沉积):改变电学性质
- Metal Wiring:加用金属连接
- EDS:测试是否达到标准
== pn结的形成
=== 浓度梯度所造成的漂移
由于电子和空穴分别在n和p区域内浓度大, 因此向相反的类型区域飘逸, 与相反电荷的载流子结合(recommendation),形成了Depletion Region,或者叫做Space Charge,这两个术语是一个意思, 可以认为这个区域内没有载流子. 同是, 参杂的离子比如$#ce("P-")$或者$#ce("B+")$不能动的, 没有载流子了, 就单独在那里, n区的$#ce("P-")$还有p区的$#ce("B+")$, 所以耗尽区又叫做空间电荷区(Space Charge region)
== Build-in voltage
由于漂移过去的载流子, 形成了内建电场.
$ V_"bi"=V_t ln ((N_A N_D)/(n_i^2)) $
$ V_t=(k T)/q ("热电压") $
- k:玻尔兹曼常数
- T:热力学温度
- q:元电荷
- $N_A$:P型半导体的参杂浓度
- $N_B$:N型半导体的参杂浓度
- Intrinsic Carrier Concentration:本征载流子浓度(没有参杂的情况下载流子的浓度)
#figure(caption: "内建电场")[#image("2024-12-11-20-06-48.png")]
== 耗尽区的宽度
$ W=sqrt((2 epsilon_0 epsilon_r V_"bi")/q (1/N_A+1/N_D)) $
$epsilon_0 epsilon_r$是主体材料的介电常数,$epsilon_0=8.854 times 10^(-14) F\/m$,是真空中的介电常数.\
可以用两边的电荷平衡得到
$N_A W_p=N_D W_n$,也就是说浓度大的一边耗尽区的宽度比较小,
浓度更高的区域又叫做heavily doped regions, $#ce("p+")$表示p
型重掺杂区, $#ce("n+")$表示n型重掺杂区.
== pn结的偏置(biasing)
偏置就是外加电压, 效果是改变了耗尽区的厚度
- zero bias:没有外接电压
- Forward biase:正电压接p区域,负电压接n区域, 会使得耗尽区的厚度变小
- Reverse bias:反接, 会使得耗尽区的厚度变小
偏置相当于在作用在内建电压上面, 所以
$ W=sqrt((2 epsilon_0 epsilon_r (V_"bi"-V_"bias"))/q (1/N_A+1/N_D)) $
== 电流公式
$ I=I_s (e^((q v)/(n k T))-1) $
- $I_s$:saturation current(饱和电流)
- $q$:元电荷
- $V$:家在两端的偏置电压
- $n$理想因子, 理想的情况下是1
- k:玻尔兹曼常数
- T:热力学温度
#figure(caption: "I_V图")[#image("2024-12-11-20-44-45.png")]
== Junction Capacitance(结电容)
$ C=(epsilon A)/W $
$W$是厚度,$A$是p-n结的有效面积, $epsilon=epsilon_0 epsilon_r$,是主体材料的介电常数.
== 载流子的迁移模式
- Drift:由于电场导致的:电场产生的速度和载流子自由移动的速度叠加,在导体中可以认为又一个固定的速度$V_d$
- Diffusion:由于浓度梯度导致的/由于温度梯度导致的.
=== Drift:
没有阻力的时候:
$ F=q E $
$ F=m a $
Drift的速度:$v_d=mu E$,其中$mu$叫做"载流子移动能力(mobility of the charge carriers)".电子和空穴的分别表示为$mu_e$,$mu_h$.由温度,参杂浓度和其他因素所决定.\
Drift电流的密度(J:$A\/m^2$)
$ J=q n v_d=q n mu E $
$n$是载流子的体积密度,如果是正载流子,也可以记作$p$.
p-n结中,两种载流子都有, 要分别算$J$然后相加:
$ J=J_n+J_p $
$ sigma("conductivity")=l/s I/(E l)=q(n mu_n+p mu_p) $
$ rho=1/sigma $
=== Diffusion
$ J_n=-q D_n (d n)/(d x) $
$ J_p=q D_p (d p)/(d x) $
$D_n$,$D_p$:diffusion coefficients\
$(d n)/(d x)$代表了浓度的梯度(对距离微分)
$ D_n=mu_n (k T)/q $
$ D_p=mu_p (k T)/q $
#figure(caption: "总体电流密度")[#image("2024-12-11-21-56-21.png")]
== 电子和空穴的密度计算
要涉及到之前的density of states, probability
of a state being occupied, 对于n型, 在导带上积分, 对于p型, 在
价带积分.
$ n_n=integral_(E_c)^(E_c+chi) g_"cb"(E)f(E) d E $
 