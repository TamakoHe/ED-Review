#set text(size: 15pt)
#import "@preview/whalogen:0.2.0": ce
= Crystal Properties and Growth of Semiconductors
== electrical conductivities(电导率)
电导率($sigma$)与电阻率($rho$) conductivity resistivity
$ sigma=1/rho $
$sigma$的量纲是$s\/ m$
$ R=l/(sigma A)"电导率基本公式" $
= 半导体的分类
- elemental semiconductors:仅由硅族(column IV)元素组成的单质,包括 silicon and germanium.
- 如果还包括了来自其他族的元素，那么就叫做compound(化合物) semiconductors
- #figure(caption: "不一定要有硅族")[#image("2024-12-09-08-27-53.png")]
= Crystal Lattices(晶体点阵)
== 固体的三种类型
+ crystalline(晶体) 具有长程有序的原子序列
+ amorphous(非晶体) 原子排列无序
+ polycrystalline(多晶的) 由多个小的单晶区域组成，每个区域内原子排列有序，但不同区域的排列方向可能不同。 are composed of many small regions of single-Crystal material
== 晶体结构的定义
晶体的周期性是通过空间中对称排列的点阵来定义的，这些点阵叫做晶格(lattice),
把基元(basis,可以是一个原子或者一组原子)放在晶格上,就形成了晶体.
#figure(caption: [在晶格中的点可以用$bold(r)= p bold(a)+q bold(b)+s bold(c)$来表示])[#image("2024-12-09-08-46-46.png")]
#figure(caption: [常见的三种晶格])[#image("2024-12-09-08-48-21.png")]
如果是Close Packing(密堆积的情况),原子半径和晶胞参数(lattice constant)就有一定关系了.
#figure(caption: [最密堆积])[#image("2024-12-09-08-57-08.png")]
体心的是体对角线接触,面心的是面对角线接触,六方的是
$ a=2 r, c= 2 r dot sqrt(8/3) $
六分是一层一层的四面体结构形成的(ABABAB...)
== 用Miller indices来表示晶体结构中的一个平面
+ 找到晶面和三个主轴(x,y,z)相交的位置, 设截距为a,b,c 
+ 计算截距的倒数$1/a$,$1/b$,$1/c$, 截距为无穷大,那么倒数就认为是0就好
+ 通过乘以一部分,转换为最小整数比$h,k,l$,表示为$(h,k,l)$
Miller indices集合:\
比如{1,0,0}就代表[1,0,0][0,1,0][0,0,1]这组平面, 在这个例子中,会形成一个长方体
因为晶轴的选取的原因, 导致这个长方体的每一个面的具体表示不同,但是总是这个集合中的.
#figure(caption: [钻石的晶体结构])[#image("2024-12-09-09-18-32.png")]
里面占据了一半的四面体空隙,也可以认为是所有fcc原子都朝同一方向平移$(bold(a)/4,bold(b)/4,bold(c)/4)$之后和原来的叠加在一起了.
#figure(caption: [fcc空隙])[#image("2024-12-09-09-21-16.png")]
== Atomic packing factor(堆积参数,APF)
$ "APF"="晶胞体积"/"原始体积" $
- 简单立方:一个晶胞一个原子$"APF"=(4/3 pi (0.5a)^3)/a^3 approx 0.524$
- 体心立方:一个晶胞两个原子,体对角线接触:$"APF"=((4pi)/3 dot 2 dot (sqrt(3)/4 a)^3)/a^3 approx 0.680 $
- 面心立方:一个晶胞四个原子,面对角线接触:$"APF"=(4 dot (4pi)/3 (sqrt(2)/4 a)^3)/a^3 approx 0.740$
== 晶体硅制造的化学过程
=== 粗硅
$ #ce("SiO2 + 2C->Si + 2CO") $
在$1800$摄氏度以上的高温中制作,得到冶金级的硅(metallurgical grade Si)
=== 半导体级的硅(EGS)
$ #ce("Si + 3HCl -> SiHCl3 + H2") $
$ #ce("2SiHCl3 + 2H2->2Si + 6HCl") $
经过这一步,可以得到那个高纯的多晶硅, 然后要把多晶硅转换为单晶硅.
一般通过Czochralski method.
#figure(caption: "Czochralski method")[#image("2024-12-09-14-22-33.png")]
= 原子物理
== 光电效应(The Photoelectric Effect)
- 光子的能量$E=h v$,$v$是频率,$h$是普朗克常数
#figure(caption: [被激发出来的光电子最大动能和光的频率的关系])[#image("2024-12-09-14-30-33.png")]
== 原子结构(波尔模型/shell model)
- 电子在分立的半径固定的轨道上运行
- 点阵通过释放(emission)和释放(absorbing)能量来在轨道上跳跃
- proton(质子);neutron(中子)
#figure(caption: [Shell model])[#image("2024-12-09-14-34-13.png")]
== 量子数
- principal number: $n=1,2,3...$ 越大,距离原子核越远
- 角量子数($l$):orbital angular momentum quantum number(轨道的角动量量子数): 决定轨道的形状,取0到n-1
- 磁量子数($m_l$):Magnetic quantum number 描述电子角动量在$ZZ$轴投影的量子数(当原子受外磁场作用时，原子光谱中谱线会由原来一条分为多条，称为能级分裂[1]。这是由于电子的磁量子数决定的电子磁矩空间取向的不同造成的.),取值$-l$到$l$
- 自旋量子数($m_s$):描述电子自旋方向,只能取$plus.minus 1/2$
每一个角量子数对应一个亚层(subshell), 可以装下$2(2l+1)$个电子,用spdf表示
一个由固定主量子数决定的shell可以装下$2n^2$个电子.
#figure(caption: "能级顺序")[#image("2024-12-09-14-52-53.png")]
= Energy Bands and Charge Carriers in Semiconductors
== 离子键(ionic bonding)
可以认为一个原子把一个或者多个电子完全给另外一种电子
== 共价键(covalent bond)
依靠公用电子对
== 能带(Energy Band)
波尔理论中原子的能级就是能带.\
原子间的相互作用会使得能带分裂.
#figure(caption: [能带分裂])[#image("2024-12-10-09-00-10.png")]
When atoms combine to form substances, the outermost shells, subshells and orbitals
merge, providing a greater number of available energy levels for electrons to assume.
\ --- 大概就是说的是杂化轨道吧
扩展一下, 如果是大量原子相互作用, 能带就可以看作是连续的能带了\
Equilibrium interatomic spacing--原子平衡间距, 对应键能最小的时候\
能带的分类:
+ Valence band 最外层的被电子占满的带(价带)
+ 下一个带可能是空的, 或者被电子部分填充, 叫做conduction band(导带)
#figure(caption: [更准确的解释])[#image("2024-12-10-09-16-19.png")]
#figure(caption: [可能是重叠的])[#image("2024-12-10-09-17-04.png")]
别把所谓能带和1s 2s 2p之类的对应, 是有一些区别的. Valence band, conduction 
band都是价电子才有的.\
#figure(caption: [导体,半导体,绝缘体的区别在于能带的间隙])[#image("2024-12-10-09-21-28.png")]
价电子从Valence到conduction变成自由电子就能实现导电, 这两个能带之间的能量差
就是Forbidden Energy Gap$E_g$, 没有电子的能量会在这个禁带之中!
== 直接和间接能带间隙
#figure(caption: "直接和间接能带")[#image("2024-12-10-09-30-17.png")]
简单来说, 就是导带的最低和价带的最高是不是在相同的晶体动量(一个复杂的东西).
== 化合物半导体
除了用Ⅳ族元素之外, 可以用Ⅲ+Ⅴ或者Ⅱ加Ⅵ(总之平均下来是4)来组成半导体,
化合物半导体的doping可以采用微调其中一种元素的方法,不用再加入其他元素
== 半导体的载流子
- hole: 由于一部分价带中的电子迁移到了导带, 导致留下了空隙, 这个空隙就是hole
- electron affinity(电子亲合能):从导带的最低点$E_C$到最电子在真空中的能量用$chi$表示
电子在导带中的移动可以对应空穴在价带中的移动,由于在价带受到的
原子核约束力更大,所以移动能力上, 空穴比电子更差.
= 半导体的一些性质:
- 当温度增加, 半导体的导电能力增加, 会更加接近导体, 导电性是指数增加, 也就是电阻减小.
- 半导体材料的体积和重量更小?
= 半导体材料的分类
- instrinsic 
指的是像纯硅,纯Ge之类(单质)的电子和空穴相等的半导体

又叫做undoped或者叫做i-type半导体
- extrinsic
参杂了的半导体, 参杂的东西叫做impurities(杂质),过程叫做doping.
这种半导体又叫做impurity semiconductor or doped semiconductor.

比如参杂磷, 磷可以提供电子, 那么就叫做donar.\
比如参杂硼, 硼可以接受电子, 那么就叫做acceptor.
= 泡利不相容原理(Pauli exclusion principle)
不可能有两个电子的四个量子数相同$arrow.r.long$一个轨道只能
装两个自旋不相同的电子(opposite spins).或者"antiparallel", 这两个英文单词是同一个意思呀\
= 杂化轨道:hybrid orbitals
例如硅晶体中的$s p^3$hybridization,
四个$s p^3$杂化轨道, 有一半占据了电子, 剩下一半的空隙意味着可以和
其他硅原子组成共价键, 然后每个$s p^3$杂化轨道会分裂成成键轨道和反键轨道(基于分子轨道理论).
= 费米能级(The Fermi level)
它代表了在绝对零度（0 K）下，电子在材料中的能量分布的最高能级。\
电子是一种费米子(fermions), 费米能级是一个能量阈值.\
在0K的条件下,所有低于费米能级的状态都被电子占据,而所有高于费米
能级的状态则为空, 温度升高的时候, 电子可以跨过费米能级, 所以移动能力上
费米能级是一个电子分布的重要参考值.
== 费米-狄拉克分布函数(Fermi-Dirac distribution function)
描述了在热力学平衡条件下, 电子占据某一特定能级E的概率
$ f(E)=1/(1+e^(E-E_F)/(K T)) $
- $E$:电子的能量
- $E_F$:费米能级, 可以是认为被电子占据概率为$50%$的能量
- k:玻尔兹曼常数($k approx 1.38 times 10^(-23) J\/K$)
- T:绝对温度
- 可以从这个公式中看出, 0k的时候,没有电子的能量可以超过$E_F$
=== 对于i-type半导体, 费米能级处于能带间隙的中心
#figure(caption: "i-type的对称性")[#image("2024-12-10-15-05-07.png")]
$ f(E_v)+f(E_c)=1 $
=== 对于n-type半导体, 费米能级更靠近$E_c$, 也就是说, 电子更有可能在导带
#figure(caption: [n-type])[#image("2024-12-10-15-08-46.png")]
=== 对于p-type半导体, 费米能级更靠近$E_v$, 空穴对电子亲和力更高
#figure(caption: [p-type])[#image("2024-12-10-15-11-51.png")]
= 关于电子和空穴的密度
$ n_0=integral_(E_c)^infinity f(E)N(E)d E $
$N(E)$叫做态密度(可供占据的状态的密度),态密度告诉我们在某个特定能量$E$附近,有多少个可供电子占据的量子态.
其实超过了$E_c$之后, 被积函数的收敛是非常快的, 也就是很少的电子能得到那么高
的能量.计算空穴用$1-f(E)$,同样的, $E_v$收敛非常快, 大部分空穴能量倾向于
在$E_v$附近.
= 单位
$ 1 mu m=10^(-6)m $
$ 1 n m=10^(-9)m $
$ 1 p m=10^(-12)m $
= 电导率的理想公式
$ sigma=n q mu_e $
$sigma$是电导率\
$q$是元电荷\
$n$是价电子密度(单位:个/$m^3$)\
$mu_e$是电子移动能力
#image("2024-12-11-22-27-23.png")
#image("2024-12-11-22-27-38.png")
对于电子, 计算出来的结果是:
#image("2024-12-11-22-30-06.png")
#image("2024-12-11-22-30-51.png")
#image("2024-12-11-22-33-15.png")