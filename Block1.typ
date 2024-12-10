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
