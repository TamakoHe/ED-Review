#set text(size: 15pt)
#set math.equation(numbering: "[1]")
= Optoelectronic Devices(光电子器件)
检测光子和释放光子的电子器件

Photoconductors:会因为光照改变导电性的材料
== Photodiodes(光二极管)
吸收一个能量大于$E_g$的光子, 就能产生一对空穴-电子对, 由于内建电场的作用,
电子流向n区,空穴流向p区, 反向偏置能加速这个过程,增大光电流
#figure(caption: [吸收能量大于$E_g$的光子])[#image("2024-12-14-15-31-06.png")]
=== 光电流大小
$ I_"op"=q A g_"op"(L_p+L_n+W) $
$g_"op"$:optical generation rate\
$A$:P-N结截面积\
$L_p$:空穴diffusion长度\
$L_n$:电子diffusion长度\
$W$:耗尽区宽度
=== 总体电流(反向偏置)
$ I=I_"th" (e^((q V)/(k T))-1)-I_"op" $
#figure(caption: [光电流影响下的反向偏置])[#image("2024-12-14-15-52-26.png")]
短路:$V=0$, $I=-I_"op"$\
断路路:$I=0$,用公式可以推出$V_"oc"=(k T)/q ln[I_"op"/I_"th"+1]$
#figure(caption: [不同情况下的工作点])[#image("2024-12-14-16-06-37.png")]
注意第三个图, 自驱动的话虽然有光电压, 但电流和内建电场方向一致.
耗尽层增大,能产生更大的光电流(灵敏度增大), 但是呢由于漂移时间长, 导致
响应时间变长, 所以实际耗尽层厚度选择是采用的折中的方案, 所以一般是要建立一个p-i-n光二极管对耗尽层宽度进行控制.
#figure(caption: [p-i-n光二极管,i极宽度约等于是耗尽层宽度,黑暗下电流小,能侦测的波长范围更大])[#image("2024-12-14-16-16-54.png")]
=== Avalanche Photodiode(雪崩光二极管)
- 具有很高的灵敏度(很大的光电流)
=== Responsivity(用于衡量光二极管的效能)
$ R=I_"op"/P (A\/W) $#<r1>
$I_"op"$:光电流\
$P$:光照的功率\
实际上#ref(<r1>)是定义式, 实际上这个值是由波长等因素决定的,
$ R=eta q/(planck f)=eta (lambda_(mu m))/1.23985 $ 
$eta$:是量子效率(quantum efficiency).\
$planck$是普朗克常数\
#figure(caption: [不同材料对特定的波长响应比较好])[#image("2024-12-14-16-48-24.png")]
$ eta="产生的电子-空穴对的数量"/"吸收的光子数量" $
=== 无光照电流(dark current)
- 增加反偏电压,能增加dark current
- Si的dark current比Ge的小
=== 工作区(只有两种选择)
#figure(caption: [光二极管的工作区])[#image("2024-12-14-16-56-01.png")]
- Photoconductive(反偏), 电流和光照功率线性相关
- Photovoltaic(零偏置), 有最小的dark current 
= LED(Light-Emitting Diode) 发光二极管
== 发光原理
LED是由直接带隙晶体管组成, 在p-n结的交界处，电子和空穴复合，释放出能量，以光子的形式发射出来，这种过程称为辐射复合($E_g=planck v$)
#figure(caption: [直接带隙与间接带隙])[#image("2024-12-14-18-07-22.png")]
#figure(caption: [LED的优点])[#image("2024-12-14-18-08-24.png")]
== 类型
- Standard Visible LEDs:发出可见光的
- Infrared (IR) LEDs:发出红外线(例如遥控器,夜视仪)
- High-Power LED:发出光的能量特别高,例如航空照明
- RGB LEDs:包括RBG三种灯,用于显示各种颜色, 例如LED屏
#figure(caption: [LED的组成,包括半导体芯片,内反射腔...])[#image("2024-12-14-18-16-03.png")]
#figure(caption: [没有加偏置的时候,P和N区的费米能级是一样大的, 加上了偏置之后, $E_"Fn"-E_"Fp"=e V("偏置电压")$])[#image("2024-12-14-18-19-48.png")]
LED的发光方式是Electroluminescence(由于少数载流子注入导致复合).
- spontaneous photon emission(自发光子发射):由于电子和空穴之间复合过程的统计性质，发射的光子是随机方向的；它们是由电子和空穴之间的自发复合过程产生的。
=== 依据材料分类
-  Homojuction（同质结）质结是由同一种半导体材料构成的p-n结，尽管p区和n区的掺杂浓度不同，但两边的材料具有相同的能带结构（即相同的带隙能量 $E_g$）, 复合,产生光的效率低.
- Heterojunction(异质结) ：异质结是由两种不同带隙的半导体材料构成的结区域。例如，GaAs和AlGaAs是常见的组合。
-  Double-Heterostructure (DH，双异质结构)
#figure(caption: [DH，双异质结构])[#image("2024-12-14-18-36-44.png")]
== Quantum Well High Intensity LEDs(量子阱高强度led)
#figure(caption: [改成最接近的两个能级处复合])[#image("2024-12-14-18-41-17.png")]
通过改变量子阱的厚度和材料组成,LED的波长可以改变.\
=== 发光材料
#figure(caption: [材料和波长])[#image("2024-12-14-18-45-58.png")]
#figure(caption: [材料的发射光谱,平均波长越小的材料,越窄])[#image("2024-12-14-18-47-24.png")]
要获得可见光,带隙要大于$1.8 e V$(基本公式:$E_g=planck v= planck c/lambda$)
=== Quantum Efficiency(量子效率)
$ eta_"EQE" ("外部量子效率")=eta_"IQE" ("内部量子效率") eta_"EXT" ("萃取效率")  $
$ eta_"IQE"=("激发区域单位时间发出的光子数目")/("激发区域注入的电子数目") $
$ eta_"EXT"=("单位时间内进入外部自由空间的光子数目")/("激发区域单位时间发出的光子数目") $
=== Light Escape Cone in LED(避光锥)
#figure(caption: [入射角必须少于避光准的角度,才能避免全反射,有机会折射入外部])[#image("2024-12-14-19-02-14.png")]
$ theta=sin^(-1) (n_2/n_1) $
#image("2024-12-14-19-06-06.png")
$ "Area"=2pi^2 (1-cos theta_c) $
$ "可以逃逸的比例,用表面积计算:"=(2pi^2 (1-cos theta_c))/(4 pi r^2)=1/2 (1-cos theta_c) $
由于半导体材料的反射率大, 能逃逸的比例很小,一半会加一个$n=1.5$的塑料封装.
= Solar Cells
大多数太阳能电池使用晶体硅，因为硅基半导体制造现在是一种成熟的技术，可以制造出具有成本效益的设备。(效率18%:多晶硅,22-24%:单晶硅), 都是homojunctions.
#figure(caption: [就是再这种情况下才能把光能转换为电能])[#image("2024-12-14-19-21-54.png")]
== 发电原理
n区是狭窄而且重参杂的, guang
#figure(caption: [发电原理])[#image("2024-12-14-19-26-31.png")]
#figure(caption: [发电原理])[#image("2024-12-14-19-31-53.png")]
由于n侧非常窄，大部分光子在耗尽区和p区被吸收, 再耗尽区产生的电子-空穴对立即被
内建电场分离,
=== 电极设计
连接到n侧的电极必须允许照明进入器件，同时具有小的电阻, 一般采用指状电极设计，它们排列成细长条状，并覆盖n区的表面。
#figure(caption: [指纹电极设计])[#image("2024-12-14-19-42-00.png")]
=== Antireflective Layer(抗反射涂层)
主要用于减少光的反射损失，提高光的透射，从而增加进入半导体的光量，提升光电转换效率。位于半导体材料和空气之间.
#figure(caption: [反射光强占入射光强的比例])[#image("2024-12-14-19-45-39.png")]
#figure(caption: [0.6微米是太阳光功率最大的波长,要设计为这个波长的反射率最低])[#image("2024-12-14-19-49-06.png")]
小面积芯片产生的能量比较小, 要提高表面积.
光伏电池以串联和/或并联电路连接，以产生更高的电压、电流和功率水平,
光伏组件由密封在环保层压板中的光伏电池电路组成，是光伏系统的基本组成部分.\
规模较小的称为Panel, 较大的叫做Array.
- 分类
  - Monocrystalline Silicon Solar Cells(单晶硅太阳能电池片,更加高效[包括空间占用高效],但是成本更高)
  - Polycrystalline Silicon Solar Cells(多晶硅太阳电池)
  - Thin-Film Solar Cells(薄膜太阳能电池,虽然薄,可以变形,但是效率比晶体硅低)
#figure(caption: [在不同的光照条件下的I-V曲线, $I_"ph"$:短路电流,$V_"oc"$:开路电压])[#image("2024-12-14-20-18-44.png")]
#figure(caption: [换个方向画,可以找到功率最大的点])[#image("2024-12-14-20-21-00.png")]
最大功率矩形面积占$V_"oc"$,$I_"sc"$面积叫做fill factor FF
$ "FF"=(I_m V_m)/(I_"sc" V_"oc") $
如果I-V曲线越接近矩形,就越理想,这个FF就是衡量这个的
