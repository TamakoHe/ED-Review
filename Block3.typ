#set text(size: 15pt)
#set math.equation(numbering: "1")
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
$ I_C/I_E=alpha=beta/(beta+1) "base transport factor" $
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
== BJT的发射效率(emiiter efficiency)
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
新的饱和区条件:$V_"DS"=V_"GS"+V_p$\
还是满足:$V_"GP"=-V_p$
== $V_"GS"$Turn-off的情况
$ V_"GS"=-V_p $
$V_"DS"=0$就完全夹断了, 完全成了耗尽层,加上$V_"DS"$也只能由热激发的电子导电,这个电流非常小
#figure(caption: [Turn off])[#image("2024-12-13-21-03-55.png")]
== JFET的电流电压特征
#figure(caption: [$V_"DS"$是常数,由$V_"GS"$控制$I_"DS"$])[#image("2024-12-13-21-10-01.png")]
=== 饱和区
$ I_D=I_"DSS" (1+V_"GS"/V_P)^2 $<bis-jfet>
$I_"DSS"$指的是$V_"GS"=0$的时候的$I_D$
=== 线性区(欧姆区)
$ I_"D"=k dot V_"DS" $
k由$V_"GS"$和沟道常数等因素决定
== JFET Commons Source Amplifier---用JFET构造放大器 
#figure(caption: [共源放大器])[#image("2024-12-13-21-29-20.png")]
直流偏置$V_"GG"<0$,上面加一个交流小信号, 
$ g_m=(i_d (i_d"的微小变化"))/(v_"gs" (v_"gs""的微小变化")) $
对#ref(<bis-jfet>)求$(diff I_D)/(diff V_p)=(2 I_"DSS")/V_p (1+V_"GS"/V_p)=(2 sqrt(I_"DSS"I_"DS")/V_p)$
$ A_v=-g_m R_D $,
由于非线性性质, 放大较大的信号的时候增益会比较低
= MOSFET
#figure(caption: [电容器连接负极的换成了p型半导体])[#image("2024-12-14-09-36-32.png")]
会在p型半导体表面形成一个反转层,然后是耗尽区,
使得反转层电子浓度和p型本体空穴浓度相等的电压就是$V_t$.

#figure(caption: [n沟道MOSFET,S和D极是高浓度参杂的])[#image("2024-12-14-09-41-58.png")]
$V_"GS">V_t$的话, 会形成反转层使得S和D之前能够导通,再加上一个$V_"DS"$就能形成电流
$I_D=v_"DS"/R_n$
#figure(caption: [$V_"GS">V_t$])[#image("2024-12-14-09-47-08.png")]
#figure(caption: [增加$V_"DS"$,沟道又会出现缩小直到饱和的效应])[#image("2024-12-14-09-53-55.png")]
饱和条件:$V_"DS">=V_"GS"-V_"th"$
#figure(caption: [饱和区电流主要由$V_"GS"$决定])[#image("2024-12-14-09-57-54.png")]
== 传输公式
=== 线性区($V_"GS">V_"th"$,$V_"DS"<V_"GS"-V_t$)
$ I_D=(k^' (V_"GS"-V_"th")V_"DS"-1/2 k^' V_"DS"^2)(1+ lambda V_"ds") $
#figure(caption: [$k^'=1/2 k$. Z是MOSFET的宽度,L是沟道长度,$mu_e$是电子迁移率,$epsilon/t_"ox"$是氧化层电容])[#image("2024-12-14-10-09-14.png")]
=== 饱和区
$ I_D=1/2 k^' (V_"GS"-V_"th")^2(1+lambda V_"DS") $
== PMOS
- 线性区:$V_"SG">|V_"th"|,V_"SD"<V_"SG"-|V_"th"|$,$I_D=k^' [(V_"SG"-|V_"th"|V_"SD")-1/2 V_"SD"^2]$
- 饱和区:$I_D=1/2 k^' (V_"SG"-|V_"th"|)^2$
#image("2024-12-14-10-18-47.png")
$ V_"ov"=V_"GS"-V_"th" ("override voltage") $
$ g_m=k^' V_"ov"=2I_D/V_"ov" $
真空介电常数:$epsilon_0=8.85times 10^(-12) F\/m$
= Depletion MOSFET(一种和增强型MOSFET不一样的设备)
$V_"GS"=0$的时候,就已经形成了沟道, 不需要大于$V_t$,
#figure(caption: [耗尽型MOSFET])[#image("2024-12-14-14-56-51.png")]
它有两种模式
- 耗尽模式 $V_"GS"<0$, 只需要更小的$V_"DS"$就可以达到饱和\
- 增强模式 $V_"GS">0$, 需要更大的$V_"DS"$才能达到饱和
== MOSFET反向器
#figure(caption: [简单MOSFET反向器])[#image("2024-12-14-15-07-15.png")],
再输出为低电平的时候有直流电流,所以这种门耗能大
= COMS(Complementary MOS, 互补MOS)
#figure(caption: [CMOS的反向器的结构,没有什么电流通过])[#image("2024-12-14-15-11-34.png")]
#figure(caption: [CMOS NAND门])[#image("2024-12-14-15-22-01.png")]
= Appendix
```md
**Given Data:**
- Gate width: \( Z = 150\,\mu m = 150 \times 10^{-6} \,m \)
- Channel length: \( L = 10\,\mu m = 10 \times 10^{-6} \,m \)
- Oxide thickness: \( t_{ox} = 500\,\text{Å} = 500 \times 10^{-10} \,m = 5 \times 10^{-8}\,m \)
- Electron mobility: \(\mu_e = 700\,\text{cm}^2/\text{V·s} = 700 \times 10^{-4} \,m^2/\text{V·s} = 0.07\,m^2/\text{V·s}\)
- Threshold voltage: \( V_{th} = 2\,V \)
- Gate-source voltage: \( V_{GS} = 5\,V \)
- Drain-source voltage: \( V_{DS} = 5\,V \)
- Channel-length modulation parameter: \(\lambda = 0.01\)

The relative permittivity of SiO₂: \( \varepsilon_r = 3.9 \)  
Permittivity of free space: \(\varepsilon_0 = 8.85 \times 10^{-12}\,F/m\)

**Step-by-step Solution:**

### (a) Calculate the drain current \(I_D\)

**1. Compute the oxide capacitance per unit area \(C_{ox}\):**  
\[
C_{ox} = \frac{\varepsilon_{ox}}{t_{ox}}, \quad \text{where } \varepsilon_{ox} = \varepsilon_0 \varepsilon_r.
\]

\[
\varepsilon_{ox} = 8.85 \times 10^{-12} \times 3.9 = 3.4515 \times 10^{-11}\,F/m.
\]

\[
C_{ox} = \frac{3.4515 \times 10^{-11}}{5 \times 10^{-8}} = \frac{3.4515 \times 10^{-11}}{5 \times 10^{-8}} = 6.9 \times 10^{-4} \,F/m^2.
\]

**2. Aspect ratio \(Z/L\):**  
\[
\frac{Z}{L} = \frac{150 \times 10^{-6}}{10 \times 10^{-6}} = 15.
\]

**3. Overdrive voltage \(V_{OV} = V_{GS} - V_{th}\):**  
\[
V_{OV} = 5\,V - 2\,V = 3\,V.
\]

**4. MOSFET saturation current without channel-length modulation:**
In saturation (assuming \( V_{DS} > V_{OV} \), which is true since 5 V > 3 V):
\[
I_{D0} = \frac{1}{2}\mu_e C_{ox} \frac{Z}{L} (V_{OV})^2.
\]

Plugging in numbers:
\[
I_{D0} = \frac{1}{2}(0.07)(6.9 \times 10^{-4})(15)(3^2).
\]

First, calculate the product \(\mu_e C_{ox} \frac{Z}{L}\):
\[
\mu_e C_{ox} \frac{Z}{L} = 0.07 \times 6.9 \times 10^{-4} \times 15.
\]

\[
6.9 \times 10^{-4} \times 15 = 1.035 \times 10^{-2}.
\]

\[
0.07 \times 1.035 \times 10^{-2} = 7.245 \times 10^{-4}.
\]

Now multiply by \((V_{OV})^2 = 9\):
\[
7.245 \times 10^{-4} \times 9 = 6.5205 \times 10^{-3}.
\]

Then multiply by \(1/2\):
\[
I_{D0} = \frac{6.5205 \times 10^{-3}}{2} = 3.26025 \times 10^{-3} A = 3.26\,mA.
\]

**5. Include channel-length modulation:**
The current with channel-length modulation:
\[
I_D = I_{D0}(1 + \lambda V_{DS}) = 3.26025 \times 10^{-3}(1 + 0.01 \times 5).
\]

\[
1 + 0.01 \times 5 = 1 + 0.05 = 1.05.
\]

\[
I_D = 3.26025 \times 10^{-3} \times 1.05 \approx 3.423 \times 10^{-3} A = 3.42\,mA.
\]

**Answer for (a):**  
\[
I_D \approx 3.42\,mA.
\]

---

### (b) Small-signal voltage gain with a 2.2 kΩ load

When the NMOS is used as a common-source amplifier with a resistor \(R_D\) in the drain, the small-signal voltage gain is approximately:
\[
A_v \approx -g_m R_D.
\]

**1. Compute \(g_m\):**  
For a MOSFET in saturation,
\[
g_m = \frac{2 I_D}{V_{OV}}.
\]

We have \(I_D = 3.42\,mA\) and \(V_{OV} = 3\,V\):
\[
g_m = \frac{2 \times 3.42 \times 10^{-3}}{3} = \frac{6.84 \times 10^{-3}}{3} = 2.28 \times 10^{-3}\,S = 2.28\,mS.
\]

**2. Voltage gain:**
\[
A_v = -g_m R_D = -(2.28 \times 10^{-3})(2200) = -5.016 \approx -5.
\]

So the small-signal voltage gain is about -5.

**Determining \(V_{DD}\):**  
We know at the operating point \(V_{DS} = 5\,V\). The drain current is \(3.42\,mA\), and the drain resistor is \(2.2\,k\Omega\).

\[
I_D R_D = 3.42 \times 10^{-3} A \times 2200\,\Omega = 7.524\,V \approx 7.53\,V.
\]

The drain voltage at Q-point is:
\[
V_D = V_{DS} + V_S = 5\,V + 0\,V = 5\,V.
\]

Since \(V_D = V_{DD} - I_D R_D\):
\[
5\,V = V_{DD} - 7.53\,V \implies V_{DD} = 12.53\,V.
\]

If the drain supply \(V_{DD}\) is smaller than 12.5 V, the transistor cannot maintain \(V_{DS}=5\,V\) at the chosen operating point. The transistor might move out of saturation or the Q-point will shift, resulting in a lower gain or a distorted output swing.

**Answer for (b):**  
Small-signal gain \(\approx -5\).  
To achieve \(V_{DS}=5\,V\) at the given bias current and resistor, \(V_{DD}\approx 12.5\,V.\)  
If the drain supply is smaller, the transistor may leave saturation and the gain would drop.

---

### (c) Maximum input signal swings

We have a quiescent point at \(V_D = 5\,V\) and \(V_{DD} = 12.5\,V\). The MOSFET remains in saturation as long as:
\[
V_{DS} \ge V_{OV} = 3\,V.
\]

The drain quiescent voltage is 5 V. The minimum drain voltage to stay in saturation is 3 V. Thus, the output can swing down from 5 V to about 3 V, a 2 V downward swing.

On the positive side, the drain can go up toward \(V_{DD}\). The maximum upwards swing is from 5 V to about 12.5 V, which is ~7.5 V. Thus, the negative swing is the limiting factor for symmetrical linear operation.

Since the voltage gain is about -5, a 2 V output swing corresponds to about 0.4 V input swing (because \( \Delta v_{out} = A_v \Delta v_{in} \implies \Delta v_{in} = \Delta v_{out}/|A_v| = 2/5 = 0.4\,V\)).

**Answer for (c):**  
- Maximum negative input swing to stay in saturation is about ±0.4 V (around the Q-point) to avoid pushing the output below 3 V.  
- On the positive side, there is more headroom, but the limiting factor is the lower saturation boundary. Thus, about ±0.4 V input signal can be cleanly amplified if a symmetrical swing is desired.

---

### (d) Factors leading to higher voltage amplification

The voltage gain of a common-source stage is approximately:
\[
A_v \approx -g_m R_{load}.
\]

To increase the gain:
1. **Increase \(g_m\):**
   - Increase the bias current \(I_D\).
   - Increase the device transconductance by using a larger W/L ratio.
   - Use a higher mobility transistor or reduce threshold to increase \(V_{OV}\) for given bias.
   
2. **Increase load resistance \(R_D\):**
   - Use a larger resistor.
   - Replace the resistor with an active load (current mirror load), increasing the effective load impedance.
   
3. **Increase supply voltage \(V_{DD}\):**
   - Allows for larger \(R_D\) while maintaining the transistor in saturation, thus increasing gain.
   
4. **Reduce channel-length modulation (\(\lambda\)):**
   - Using longer channel devices or cascoding increases the output impedance, effectively boosting gain.

**Answer for (d):**  
Higher voltage amplification can be achieved by increasing transconductance (larger \(I_D\), larger W/L, higher \(\mu_e\)), increasing load resistance (or using active loads), increasing \(V_{DD}\) to allow higher load resistance while keeping the transistor in saturation, and reducing \(\lambda\) through device geometry or cascoding.

---

**Final Answers:**
- (a) \( I_D \approx 3.42\,mA \)
- (b) Gain \(\approx -5\), \(V_{DD} \approx 12.5\,V\). If \(V_{DD}\) is smaller, the transistor may leave saturation, reducing gain.
- (c) About ±0.4 V input swing for symmetrical undistorted output swing given the determined Q-point and gain.
- (d) Higher gain is achieved by increasing \(g_m\), increasing \(R_D\) or using active loads, increasing \(V_{DD}\), and reducing \(\lambda.\)
```
为什么基极很窄?
- 避免载流子被复合, 提高从发射极到集电极的传输效率, 增大电流增益
- 