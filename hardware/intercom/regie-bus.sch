<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.3">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tPadExt" color="7" fill="1" visible="no" active="no"/>
<layer number="54" name="bPadExt" color="1" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="100" name="mySilk" color="14" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="-5V">
<wire x1="-1.27" y1="1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="-5V" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="-5V" prefix="P-">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="-5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="anyma-lib">
<description>10 point smd solder jumper</description>
<packages>
<package name="52207-1285">
<wire x1="0" y1="0" x2="8.3" y2="0" width="0.127" layer="51"/>
<wire x1="8.3" y1="0" x2="8.3" y2="-5.5" width="0.127" layer="51"/>
<wire x1="8.3" y1="-5.5" x2="8.3" y2="-6.9" width="0.127" layer="51"/>
<wire x1="8.3" y1="-6.9" x2="-8.3" y2="-6.9" width="0.127" layer="51"/>
<wire x1="-8.3" y1="-6.9" x2="-8.3" y2="-5.5" width="0.127" layer="51"/>
<wire x1="-8.3" y1="-5.5" x2="-8.3" y2="0" width="0.127" layer="51"/>
<wire x1="-8.3" y1="0" x2="0" y2="0" width="0.127" layer="51"/>
<wire x1="0" y1="0" x2="0" y2="-0.1" width="0.127" layer="51"/>
<wire x1="-8.3" y1="-5.5" x2="-9.5" y2="-5.5" width="0.127" layer="51"/>
<wire x1="-9.5" y1="-5.5" x2="-9.5" y2="-7.2" width="0.127" layer="51"/>
<wire x1="-9.5" y1="-7.2" x2="9.5" y2="-7.2" width="0.127" layer="51"/>
<wire x1="9.5" y1="-7.2" x2="9.5" y2="-5.5" width="0.127" layer="51"/>
<wire x1="9.5" y1="-5.5" x2="8.3" y2="-5.5" width="0.127" layer="51"/>
<wire x1="-8" y1="-4.2" x2="-6.9" y2="-4.2" width="0.127" layer="51"/>
<wire x1="-6.9" y1="-4.2" x2="-6.9" y2="-1.9" width="0.127" layer="51"/>
<wire x1="-6.9" y1="-1.9" x2="-6.2" y2="-1.9" width="0.127" layer="51"/>
<wire x1="-6.2" y1="-1.9" x2="-6.2" y2="-5.4" width="0.127" layer="51"/>
<wire x1="-6.2" y1="-5.4" x2="5.9" y2="-5.4" width="0.127" layer="51"/>
<wire x1="5.9" y1="-5.4" x2="5.9" y2="-2" width="0.127" layer="51"/>
<wire x1="5.9" y1="-2" x2="6.5" y2="-2" width="0.127" layer="51"/>
<wire x1="6.5" y1="-2" x2="6.5" y2="-4.5" width="0.127" layer="51"/>
<wire x1="6.5" y1="-4.5" x2="7.9" y2="-4.5" width="0.127" layer="51"/>
<wire x1="7.9" y1="-4.5" x2="7.9" y2="-4.4" width="0.127" layer="51"/>
<smd name="P$1" x="-5.5" y="1" dx="0.6" dy="1.9" layer="1"/>
<smd name="P$2" x="-4.5" y="1" dx="0.6" dy="1.9" layer="1"/>
<smd name="P$3" x="-3.5" y="1" dx="0.6" dy="1.9" layer="1"/>
<smd name="P$4" x="-2.5" y="1" dx="0.6" dy="1.9" layer="1"/>
<smd name="P$5" x="-1.5" y="1" dx="0.6" dy="1.9" layer="1"/>
<smd name="P$6" x="-0.5" y="1" dx="0.6" dy="1.9" layer="1"/>
<smd name="P$7" x="0.5" y="1" dx="0.6" dy="1.9" layer="1"/>
<smd name="P$8" x="1.5" y="1" dx="0.6" dy="1.9" layer="1"/>
<smd name="P$9" x="2.5" y="1" dx="0.6" dy="1.9" layer="1"/>
<smd name="P$10" x="3.5" y="1" dx="0.6" dy="1.9" layer="1"/>
<smd name="P$11" x="4.5" y="1" dx="0.6" dy="1.9" layer="1"/>
<smd name="P$12" x="5.5" y="1" dx="0.6" dy="1.9" layer="1"/>
<rectangle x1="-10.5" y1="-2.8" x2="-7.6" y2="0" layer="1"/>
<rectangle x1="7.6" y1="-2.8" x2="10.5" y2="0" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="PIN">
<wire x1="0" y1="0.254" x2="0" y2="-0.254" width="0.1524" layer="94"/>
<wire x1="0" y1="-0.254" x2="1.016" y2="-0.254" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-0.254" x2="1.27" y2="0.254" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0.254" x2="0" y2="0.254" width="0.1524" layer="94"/>
<text x="2.032" y="-0.762" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MOLEX-52207-1285">
<gates>
<gate name="-1.1" symbol="PIN" x="-7.62" y="17.78" addlevel="always"/>
<gate name="-2.1" symbol="PIN" x="-7.62" y="15.24" addlevel="always"/>
<gate name="-3.1" symbol="PIN" x="-7.62" y="12.7" addlevel="always"/>
<gate name="-4.1" symbol="PIN" x="-7.62" y="10.16" addlevel="always"/>
<gate name="-5.1" symbol="PIN" x="-7.62" y="7.62" addlevel="always"/>
<gate name="-6.1" symbol="PIN" x="-7.62" y="5.08" addlevel="always"/>
<gate name="-7.1" symbol="PIN" x="-7.62" y="2.54" addlevel="always"/>
<gate name="-8.1" symbol="PIN" x="-7.62" y="0" addlevel="always"/>
<gate name="-9.1" symbol="PIN" x="-7.62" y="-2.54" addlevel="always"/>
<gate name="-10.1" symbol="PIN" x="-7.62" y="-5.08" addlevel="always"/>
<gate name="-11.1" symbol="PIN" x="-7.62" y="-7.62" addlevel="always"/>
<gate name="-12.1" symbol="PIN" x="-7.62" y="-10.16" addlevel="always"/>
</gates>
<devices>
<device name="" package="52207-1285">
<connects>
<connect gate="-1.1" pin="1" pad="P$1"/>
<connect gate="-10.1" pin="1" pad="P$10"/>
<connect gate="-11.1" pin="1" pad="P$11"/>
<connect gate="-12.1" pin="1" pad="P$12"/>
<connect gate="-2.1" pin="1" pad="P$2"/>
<connect gate="-3.1" pin="1" pad="P$3"/>
<connect gate="-4.1" pin="1" pad="P$4"/>
<connect gate="-5.1" pin="1" pad="P$5"/>
<connect gate="-6.1" pin="1" pad="P$6"/>
<connect gate="-7.1" pin="1" pad="P$7"/>
<connect gate="-8.1" pin="1" pad="P$8"/>
<connect gate="-9.1" pin="1" pad="P$9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="P+1" library="supply1" deviceset="+5V" device=""/>
<part name="P-1" library="supply1" deviceset="-5V" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="P+2" library="supply1" deviceset="+5V" device=""/>
<part name="P-2" library="supply1" deviceset="-5V" device=""/>
<part name="GND13" library="supply1" deviceset="GND" device=""/>
<part name="GND18" library="supply1" deviceset="GND" device=""/>
<part name="P+4" library="supply1" deviceset="+5V" device=""/>
<part name="P-4" library="supply1" deviceset="-5V" device=""/>
<part name="GND19" library="supply1" deviceset="GND" device=""/>
<part name="GND20" library="supply1" deviceset="GND" device=""/>
<part name="P+7" library="supply1" deviceset="+5V" device=""/>
<part name="P-7" library="supply1" deviceset="-5V" device=""/>
<part name="GND21" library="supply1" deviceset="GND" device=""/>
<part name="U$1" library="anyma-lib" deviceset="MOLEX-52207-1285" device=""/>
<part name="U$2" library="anyma-lib" deviceset="MOLEX-52207-1285" device=""/>
<part name="U$3" library="anyma-lib" deviceset="MOLEX-52207-1285" device=""/>
<part name="U$4" library="anyma-lib" deviceset="MOLEX-52207-1285" device=""/>
<part name="U$5" library="anyma-lib" deviceset="MOLEX-52207-1285" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="P+3" library="supply1" deviceset="+5V" device=""/>
<part name="P-3" library="supply1" deviceset="-5V" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="104.14" y="137.16" size="1.778" layer="91">no video in</text>
<text x="147.32" y="137.16" size="1.778" layer="91">no video in</text>
</plain>
<instances>
<instance part="GND2" gate="1" x="101.6" y="132.08" rot="R270"/>
<instance part="P+1" gate="1" x="101.6" y="116.84" rot="R90"/>
<instance part="P-1" gate="1" x="101.6" y="124.46" rot="R270"/>
<instance part="GND1" gate="1" x="101.6" y="109.22" rot="R270"/>
<instance part="GND5" gate="1" x="144.78" y="132.08" rot="R270"/>
<instance part="P+2" gate="1" x="144.78" y="116.84" rot="R90"/>
<instance part="P-2" gate="1" x="144.78" y="124.46" rot="R270"/>
<instance part="GND13" gate="1" x="144.78" y="109.22" rot="R270"/>
<instance part="GND18" gate="1" x="185.42" y="132.08" rot="R270"/>
<instance part="P+4" gate="1" x="185.42" y="116.84" rot="R90"/>
<instance part="P-4" gate="1" x="185.42" y="124.46" rot="R270"/>
<instance part="GND19" gate="1" x="185.42" y="109.22" rot="R270"/>
<instance part="GND20" gate="1" x="223.52" y="132.08" rot="R270"/>
<instance part="P+7" gate="1" x="223.52" y="116.84" rot="R90"/>
<instance part="P-7" gate="1" x="223.52" y="124.46" rot="R270"/>
<instance part="GND21" gate="1" x="223.52" y="109.22" rot="R270"/>
<instance part="U$1" gate="-1.1" x="106.68" y="104.14" rot="MR180"/>
<instance part="U$1" gate="-2.1" x="106.68" y="106.68" rot="MR180"/>
<instance part="U$1" gate="-3.1" x="106.68" y="109.22" rot="MR180"/>
<instance part="U$1" gate="-4.1" x="106.68" y="111.76" rot="MR180"/>
<instance part="U$1" gate="-5.1" x="106.68" y="114.3" rot="MR180"/>
<instance part="U$1" gate="-6.1" x="106.68" y="116.84" rot="MR180"/>
<instance part="U$1" gate="-7.1" x="106.68" y="119.38" rot="MR180"/>
<instance part="U$1" gate="-8.1" x="106.68" y="121.92" rot="MR180"/>
<instance part="U$1" gate="-9.1" x="106.68" y="124.46" rot="MR180"/>
<instance part="U$1" gate="-10.1" x="106.68" y="127" rot="MR180"/>
<instance part="U$1" gate="-11.1" x="106.68" y="129.54" rot="MR180"/>
<instance part="U$1" gate="-12.1" x="106.68" y="132.08" rot="MR180"/>
<instance part="U$2" gate="-1.1" x="149.86" y="104.14" rot="MR180"/>
<instance part="U$2" gate="-2.1" x="149.86" y="106.68" rot="MR180"/>
<instance part="U$2" gate="-3.1" x="149.86" y="109.22" rot="MR180"/>
<instance part="U$2" gate="-4.1" x="149.86" y="111.76" rot="MR180"/>
<instance part="U$2" gate="-5.1" x="149.86" y="114.3" rot="MR180"/>
<instance part="U$2" gate="-6.1" x="149.86" y="116.84" rot="MR180"/>
<instance part="U$2" gate="-7.1" x="149.86" y="119.38" rot="MR180"/>
<instance part="U$2" gate="-8.1" x="149.86" y="121.92" rot="MR180"/>
<instance part="U$2" gate="-9.1" x="149.86" y="124.46" rot="MR180"/>
<instance part="U$2" gate="-10.1" x="149.86" y="127" rot="MR180"/>
<instance part="U$2" gate="-11.1" x="149.86" y="129.54" rot="MR180"/>
<instance part="U$2" gate="-12.1" x="149.86" y="132.08" rot="MR180"/>
<instance part="U$3" gate="-1.1" x="190.5" y="104.14" rot="MR180"/>
<instance part="U$3" gate="-2.1" x="190.5" y="106.68" rot="MR180"/>
<instance part="U$3" gate="-3.1" x="190.5" y="109.22" rot="MR180"/>
<instance part="U$3" gate="-4.1" x="190.5" y="111.76" rot="MR180"/>
<instance part="U$3" gate="-5.1" x="190.5" y="114.3" rot="MR180"/>
<instance part="U$3" gate="-6.1" x="190.5" y="116.84" rot="MR180"/>
<instance part="U$3" gate="-7.1" x="190.5" y="119.38" rot="MR180"/>
<instance part="U$3" gate="-8.1" x="190.5" y="121.92" rot="MR180"/>
<instance part="U$3" gate="-9.1" x="190.5" y="124.46" rot="MR180"/>
<instance part="U$3" gate="-10.1" x="190.5" y="127" rot="MR180"/>
<instance part="U$3" gate="-11.1" x="190.5" y="129.54" rot="MR180"/>
<instance part="U$3" gate="-12.1" x="190.5" y="132.08" rot="MR180"/>
<instance part="U$4" gate="-1.1" x="228.6" y="104.14" rot="MR180"/>
<instance part="U$4" gate="-2.1" x="228.6" y="106.68" rot="MR180"/>
<instance part="U$4" gate="-3.1" x="228.6" y="109.22" rot="MR180"/>
<instance part="U$4" gate="-4.1" x="228.6" y="111.76" rot="MR180"/>
<instance part="U$4" gate="-5.1" x="228.6" y="114.3" rot="MR180"/>
<instance part="U$4" gate="-6.1" x="228.6" y="116.84" rot="MR180"/>
<instance part="U$4" gate="-7.1" x="228.6" y="119.38" rot="MR180"/>
<instance part="U$4" gate="-8.1" x="228.6" y="121.92" rot="MR180"/>
<instance part="U$4" gate="-9.1" x="228.6" y="124.46" rot="MR180"/>
<instance part="U$4" gate="-10.1" x="228.6" y="127" rot="MR180"/>
<instance part="U$4" gate="-11.1" x="228.6" y="129.54" rot="MR180"/>
<instance part="U$4" gate="-12.1" x="228.6" y="132.08" rot="MR180"/>
<instance part="U$5" gate="-1.1" x="38.1" y="132.08" rot="MR0"/>
<instance part="U$5" gate="-2.1" x="38.1" y="129.54" rot="MR0"/>
<instance part="U$5" gate="-3.1" x="38.1" y="127" rot="MR0"/>
<instance part="U$5" gate="-4.1" x="38.1" y="124.46" rot="MR0"/>
<instance part="U$5" gate="-5.1" x="38.1" y="121.92" rot="MR0"/>
<instance part="U$5" gate="-6.1" x="38.1" y="119.38" rot="MR0"/>
<instance part="U$5" gate="-7.1" x="38.1" y="116.84" rot="MR0"/>
<instance part="U$5" gate="-8.1" x="38.1" y="114.3" rot="MR0"/>
<instance part="U$5" gate="-9.1" x="38.1" y="111.76" rot="MR0"/>
<instance part="U$5" gate="-10.1" x="38.1" y="109.22" rot="MR0"/>
<instance part="U$5" gate="-11.1" x="38.1" y="106.68" rot="MR0"/>
<instance part="U$5" gate="-12.1" x="38.1" y="104.14" rot="MR0"/>
<instance part="GND3" gate="1" x="43.18" y="132.08" rot="R90"/>
<instance part="GND4" gate="1" x="43.18" y="109.22" rot="R90"/>
<instance part="P+3" gate="1" x="43.18" y="116.84" rot="R270"/>
<instance part="P-3" gate="1" x="43.18" y="124.46" rot="R90"/>
</instances>
<busses>
</busses>
<nets>
<net name="+5V" class="0">
<segment>
<pinref part="P+1" gate="1" pin="+5V"/>
<pinref part="U$1" gate="-6.1" pin="1"/>
</segment>
<segment>
<pinref part="P+2" gate="1" pin="+5V"/>
<pinref part="U$2" gate="-6.1" pin="1"/>
</segment>
<segment>
<pinref part="P+4" gate="1" pin="+5V"/>
<pinref part="U$3" gate="-6.1" pin="1"/>
</segment>
<segment>
<pinref part="P+7" gate="1" pin="+5V"/>
<pinref part="U$4" gate="-6.1" pin="1"/>
</segment>
<segment>
<pinref part="U$5" gate="-7.1" pin="1"/>
<pinref part="P+3" gate="1" pin="+5V"/>
</segment>
</net>
<net name="-5V" class="0">
<segment>
<pinref part="P-1" gate="1" pin="-5V"/>
<pinref part="U$1" gate="-9.1" pin="1"/>
</segment>
<segment>
<pinref part="P-2" gate="1" pin="-5V"/>
<pinref part="U$2" gate="-9.1" pin="1"/>
</segment>
<segment>
<pinref part="P-4" gate="1" pin="-5V"/>
<pinref part="U$3" gate="-9.1" pin="1"/>
</segment>
<segment>
<pinref part="P-7" gate="1" pin="-5V"/>
<pinref part="U$4" gate="-9.1" pin="1"/>
</segment>
<segment>
<pinref part="U$5" gate="-4.1" pin="1"/>
<pinref part="P-3" gate="1" pin="-5V"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<pinref part="U$1" gate="-3.1" pin="1"/>
</segment>
<segment>
<pinref part="GND2" gate="1" pin="GND"/>
<pinref part="U$1" gate="-12.1" pin="1"/>
</segment>
<segment>
<pinref part="GND13" gate="1" pin="GND"/>
<pinref part="U$2" gate="-3.1" pin="1"/>
</segment>
<segment>
<pinref part="GND5" gate="1" pin="GND"/>
<pinref part="U$2" gate="-12.1" pin="1"/>
</segment>
<segment>
<pinref part="GND19" gate="1" pin="GND"/>
<pinref part="U$3" gate="-3.1" pin="1"/>
</segment>
<segment>
<pinref part="GND18" gate="1" pin="GND"/>
<pinref part="U$3" gate="-12.1" pin="1"/>
</segment>
<segment>
<pinref part="GND21" gate="1" pin="GND"/>
<pinref part="U$4" gate="-3.1" pin="1"/>
</segment>
<segment>
<pinref part="GND20" gate="1" pin="GND"/>
<pinref part="U$4" gate="-12.1" pin="1"/>
</segment>
<segment>
<pinref part="U$5" gate="-1.1" pin="1"/>
<pinref part="GND3" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$5" gate="-10.1" pin="1"/>
<pinref part="GND4" gate="1" pin="GND"/>
</segment>
</net>
<net name="MIC+" class="0">
<segment>
<wire x1="218.44" y1="96.52" x2="177.8" y2="96.52" width="0.1524" layer="91"/>
<wire x1="177.8" y1="96.52" x2="139.7" y2="96.52" width="0.1524" layer="91"/>
<wire x1="139.7" y1="96.52" x2="91.44" y2="96.52" width="0.1524" layer="91"/>
<wire x1="91.44" y1="96.52" x2="91.44" y2="129.54" width="0.1524" layer="91"/>
<wire x1="91.44" y1="129.54" x2="104.14" y2="129.54" width="0.1524" layer="91"/>
<wire x1="147.32" y1="129.54" x2="139.7" y2="129.54" width="0.1524" layer="91"/>
<wire x1="139.7" y1="129.54" x2="139.7" y2="96.52" width="0.1524" layer="91"/>
<wire x1="187.96" y1="129.54" x2="177.8" y2="129.54" width="0.1524" layer="91"/>
<wire x1="177.8" y1="129.54" x2="177.8" y2="96.52" width="0.1524" layer="91"/>
<wire x1="226.06" y1="129.54" x2="218.44" y2="129.54" width="0.1524" layer="91"/>
<wire x1="218.44" y1="129.54" x2="218.44" y2="96.52" width="0.1524" layer="91"/>
<pinref part="U$1" gate="-11.1" pin="1"/>
<pinref part="U$2" gate="-11.1" pin="1"/>
<pinref part="U$3" gate="-11.1" pin="1"/>
<pinref part="U$4" gate="-11.1" pin="1"/>
<pinref part="U$5" gate="-2.1" pin="1"/>
<wire x1="40.64" y1="129.54" x2="91.44" y2="129.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MIC-" class="0">
<segment>
<wire x1="215.9" y1="93.98" x2="175.26" y2="93.98" width="0.1524" layer="91"/>
<wire x1="175.26" y1="93.98" x2="137.16" y2="93.98" width="0.1524" layer="91"/>
<wire x1="137.16" y1="93.98" x2="93.98" y2="93.98" width="0.1524" layer="91"/>
<wire x1="93.98" y1="93.98" x2="93.98" y2="127" width="0.1524" layer="91"/>
<wire x1="93.98" y1="127" x2="104.14" y2="127" width="0.1524" layer="91"/>
<wire x1="147.32" y1="127" x2="137.16" y2="127" width="0.1524" layer="91"/>
<wire x1="137.16" y1="127" x2="137.16" y2="93.98" width="0.1524" layer="91"/>
<wire x1="187.96" y1="127" x2="175.26" y2="127" width="0.1524" layer="91"/>
<wire x1="175.26" y1="127" x2="175.26" y2="93.98" width="0.1524" layer="91"/>
<wire x1="226.06" y1="127" x2="215.9" y2="127" width="0.1524" layer="91"/>
<wire x1="215.9" y1="127" x2="215.9" y2="93.98" width="0.1524" layer="91"/>
<pinref part="U$1" gate="-10.1" pin="1"/>
<pinref part="U$2" gate="-10.1" pin="1"/>
<pinref part="U$3" gate="-10.1" pin="1"/>
<pinref part="U$4" gate="-10.1" pin="1"/>
<pinref part="U$5" gate="-3.1" pin="1"/>
<wire x1="93.98" y1="127" x2="40.64" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="HP+" class="0">
<segment>
<wire x1="213.36" y1="76.2" x2="172.72" y2="76.2" width="0.1524" layer="91"/>
<wire x1="172.72" y1="76.2" x2="134.62" y2="76.2" width="0.1524" layer="91"/>
<wire x1="134.62" y1="76.2" x2="78.74" y2="76.2" width="0.1524" layer="91"/>
<wire x1="147.32" y1="121.92" x2="134.62" y2="121.92" width="0.1524" layer="91"/>
<wire x1="134.62" y1="121.92" x2="134.62" y2="76.2" width="0.1524" layer="91"/>
<wire x1="104.14" y1="121.92" x2="78.74" y2="121.92" width="0.1524" layer="91"/>
<wire x1="78.74" y1="121.92" x2="78.74" y2="76.2" width="0.1524" layer="91"/>
<wire x1="187.96" y1="121.92" x2="172.72" y2="121.92" width="0.1524" layer="91"/>
<wire x1="172.72" y1="121.92" x2="172.72" y2="76.2" width="0.1524" layer="91"/>
<wire x1="226.06" y1="121.92" x2="213.36" y2="121.92" width="0.1524" layer="91"/>
<wire x1="213.36" y1="121.92" x2="213.36" y2="76.2" width="0.1524" layer="91"/>
<pinref part="U$1" gate="-8.1" pin="1"/>
<pinref part="U$2" gate="-8.1" pin="1"/>
<pinref part="U$3" gate="-8.1" pin="1"/>
<pinref part="U$4" gate="-8.1" pin="1"/>
<pinref part="U$5" gate="-5.1" pin="1"/>
<wire x1="40.64" y1="121.92" x2="78.74" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="HP-" class="0">
<segment>
<wire x1="210.82" y1="73.66" x2="170.18" y2="73.66" width="0.1524" layer="91"/>
<wire x1="170.18" y1="73.66" x2="132.08" y2="73.66" width="0.1524" layer="91"/>
<wire x1="132.08" y1="73.66" x2="76.2" y2="73.66" width="0.1524" layer="91"/>
<wire x1="147.32" y1="119.38" x2="132.08" y2="119.38" width="0.1524" layer="91"/>
<wire x1="132.08" y1="119.38" x2="132.08" y2="73.66" width="0.1524" layer="91"/>
<wire x1="104.14" y1="119.38" x2="76.2" y2="119.38" width="0.1524" layer="91"/>
<wire x1="76.2" y1="119.38" x2="76.2" y2="73.66" width="0.1524" layer="91"/>
<wire x1="187.96" y1="119.38" x2="170.18" y2="119.38" width="0.1524" layer="91"/>
<wire x1="170.18" y1="119.38" x2="170.18" y2="73.66" width="0.1524" layer="91"/>
<wire x1="226.06" y1="119.38" x2="210.82" y2="119.38" width="0.1524" layer="91"/>
<wire x1="210.82" y1="119.38" x2="210.82" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U$1" gate="-7.1" pin="1"/>
<pinref part="U$2" gate="-7.1" pin="1"/>
<pinref part="U$3" gate="-7.1" pin="1"/>
<pinref part="U$4" gate="-7.1" pin="1"/>
<pinref part="U$5" gate="-6.1" pin="1"/>
<wire x1="40.64" y1="119.38" x2="76.2" y2="119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DATA+" class="0">
<segment>
<wire x1="104.14" y1="114.3" x2="60.96" y2="114.3" width="0.1524" layer="91"/>
<wire x1="60.96" y1="114.3" x2="60.96" y2="71.12" width="0.1524" layer="91"/>
<wire x1="60.96" y1="71.12" x2="129.54" y2="71.12" width="0.1524" layer="91"/>
<wire x1="129.54" y1="71.12" x2="167.64" y2="71.12" width="0.1524" layer="91"/>
<wire x1="167.64" y1="71.12" x2="208.28" y2="71.12" width="0.1524" layer="91"/>
<wire x1="147.32" y1="114.3" x2="129.54" y2="114.3" width="0.1524" layer="91"/>
<wire x1="129.54" y1="114.3" x2="129.54" y2="71.12" width="0.1524" layer="91"/>
<wire x1="187.96" y1="114.3" x2="167.64" y2="114.3" width="0.1524" layer="91"/>
<wire x1="167.64" y1="114.3" x2="167.64" y2="71.12" width="0.1524" layer="91"/>
<wire x1="226.06" y1="114.3" x2="208.28" y2="114.3" width="0.1524" layer="91"/>
<wire x1="208.28" y1="114.3" x2="208.28" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$1" gate="-5.1" pin="1"/>
<pinref part="U$2" gate="-5.1" pin="1"/>
<pinref part="U$3" gate="-5.1" pin="1"/>
<pinref part="U$4" gate="-5.1" pin="1"/>
<pinref part="U$5" gate="-8.1" pin="1"/>
<wire x1="40.64" y1="114.3" x2="60.96" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DATA-" class="0">
<segment>
<wire x1="205.74" y1="68.58" x2="165.1" y2="68.58" width="0.1524" layer="91"/>
<wire x1="165.1" y1="68.58" x2="127" y2="68.58" width="0.1524" layer="91"/>
<wire x1="127" y1="68.58" x2="58.42" y2="68.58" width="0.1524" layer="91"/>
<wire x1="58.42" y1="68.58" x2="58.42" y2="111.76" width="0.1524" layer="91"/>
<wire x1="58.42" y1="111.76" x2="104.14" y2="111.76" width="0.1524" layer="91"/>
<wire x1="147.32" y1="111.76" x2="127" y2="111.76" width="0.1524" layer="91"/>
<wire x1="127" y1="111.76" x2="127" y2="68.58" width="0.1524" layer="91"/>
<wire x1="187.96" y1="111.76" x2="165.1" y2="111.76" width="0.1524" layer="91"/>
<wire x1="165.1" y1="111.76" x2="165.1" y2="68.58" width="0.1524" layer="91"/>
<wire x1="226.06" y1="111.76" x2="205.74" y2="111.76" width="0.1524" layer="91"/>
<wire x1="205.74" y1="111.76" x2="205.74" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$1" gate="-4.1" pin="1"/>
<pinref part="U$2" gate="-4.1" pin="1"/>
<pinref part="U$3" gate="-4.1" pin="1"/>
<pinref part="U$4" gate="-4.1" pin="1"/>
<pinref part="U$5" gate="-9.1" pin="1"/>
<wire x1="40.64" y1="111.76" x2="58.42" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
