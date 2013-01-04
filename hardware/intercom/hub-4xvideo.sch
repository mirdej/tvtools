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
<library name="ethercon">
<packages>
<package name="NE8FBH">
<pad name="P$1" x="0" y="0" drill="0.8" diameter="1.6764" shape="octagon"/>
<pad name="P$2" x="-1.27" y="-2.54" drill="0.8" diameter="1.6764" shape="octagon"/>
<pad name="P$3" x="-2.54" y="0" drill="0.8" diameter="1.6764" shape="octagon"/>
<pad name="P$4" x="-3.81" y="-2.54" drill="0.8" diameter="1.6764" shape="octagon"/>
<pad name="P$5" x="-5.08" y="0" drill="0.8" diameter="1.6764" shape="octagon"/>
<pad name="P$6" x="-6.35" y="-2.54" drill="0.8" diameter="1.6764" shape="octagon"/>
<pad name="P$7" x="-7.62" y="0" drill="0.8" diameter="1.6764" shape="octagon"/>
<pad name="P$8" x="-8.89" y="-2.54" drill="0.8" diameter="1.6764" shape="octagon"/>
<pad name="P$9" x="2.152784375" y="1.266528125" drill="1.2" diameter="2.1844"/>
<hole x="0.64" y="10.8" drill="1.6"/>
<hole x="-9.52" y="1.91" drill="1.6"/>
<wire x1="0" y1="14.61" x2="-15.472071875" y2="14.61" width="0.127" layer="21"/>
<wire x1="-15.472071875" y1="14.61" x2="-15.472071875" y2="15.24143125" width="0.127" layer="21"/>
<wire x1="-15.472071875" y1="15.24143125" x2="7.800715625" y2="15.24143125" width="0.127" layer="21"/>
<wire x1="7.800715625" y1="15.24143125" x2="7.800715625" y2="14.6176" width="0.127" layer="21"/>
<wire x1="7.800715625" y1="14.6176" x2="0.079734375" y2="14.6176" width="0.127" layer="21"/>
<wire x1="0.079734375" y1="14.6176" x2="0.079734375" y2="14.761221875" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="JACK8">
<wire x1="1.524" y1="8.128" x2="0" y2="8.128" width="0.254" layer="94"/>
<wire x1="0" y1="8.128" x2="0" y2="7.112" width="0.254" layer="94"/>
<wire x1="0" y1="7.112" x2="1.524" y2="7.112" width="0.254" layer="94"/>
<wire x1="1.524" y1="5.588" x2="0" y2="5.588" width="0.254" layer="94"/>
<wire x1="0" y1="5.588" x2="0" y2="4.572" width="0.254" layer="94"/>
<wire x1="0" y1="4.572" x2="1.524" y2="4.572" width="0.254" layer="94"/>
<wire x1="1.524" y1="3.048" x2="0" y2="3.048" width="0.254" layer="94"/>
<wire x1="0" y1="3.048" x2="0" y2="2.032" width="0.254" layer="94"/>
<wire x1="0" y1="2.032" x2="1.524" y2="2.032" width="0.254" layer="94"/>
<wire x1="1.524" y1="0.508" x2="0" y2="0.508" width="0.254" layer="94"/>
<wire x1="0" y1="0.508" x2="0" y2="-0.508" width="0.254" layer="94"/>
<wire x1="0" y1="-0.508" x2="1.524" y2="-0.508" width="0.254" layer="94"/>
<wire x1="1.524" y1="-2.032" x2="0" y2="-2.032" width="0.254" layer="94"/>
<wire x1="0" y1="-2.032" x2="0" y2="-3.048" width="0.254" layer="94"/>
<wire x1="0" y1="-3.048" x2="1.524" y2="-3.048" width="0.254" layer="94"/>
<wire x1="1.524" y1="-4.572" x2="0" y2="-4.572" width="0.254" layer="94"/>
<wire x1="0" y1="-4.572" x2="0" y2="-5.588" width="0.254" layer="94"/>
<wire x1="0" y1="-5.588" x2="1.524" y2="-5.588" width="0.254" layer="94"/>
<wire x1="3.048" y1="-2.032" x2="5.588" y2="-2.032" width="0.1998" layer="94"/>
<wire x1="5.588" y1="-2.032" x2="5.588" y2="-0.254" width="0.1998" layer="94"/>
<wire x1="5.588" y1="-0.254" x2="6.604" y2="-0.254" width="0.1998" layer="94"/>
<wire x1="6.604" y1="-0.254" x2="6.604" y2="1.778" width="0.1998" layer="94"/>
<wire x1="6.604" y1="1.778" x2="5.588" y2="1.778" width="0.1998" layer="94"/>
<wire x1="5.588" y1="1.778" x2="5.588" y2="3.556" width="0.1998" layer="94"/>
<wire x1="5.588" y1="3.556" x2="3.048" y2="3.556" width="0.1998" layer="94"/>
<wire x1="3.048" y1="3.556" x2="3.048" y2="2.54" width="0.1998" layer="94"/>
<wire x1="3.048" y1="2.54" x2="3.048" y2="2.032" width="0.1998" layer="94"/>
<wire x1="3.048" y1="2.032" x2="3.048" y2="1.524" width="0.1998" layer="94"/>
<wire x1="3.048" y1="1.524" x2="3.048" y2="1.016" width="0.1998" layer="94"/>
<wire x1="3.048" y1="1.016" x2="3.048" y2="0.508" width="0.1998" layer="94"/>
<wire x1="3.048" y1="0.508" x2="3.048" y2="0" width="0.1998" layer="94"/>
<wire x1="3.048" y1="0" x2="3.048" y2="-0.508" width="0.1998" layer="94"/>
<wire x1="3.048" y1="-0.508" x2="3.048" y2="-1.016" width="0.1998" layer="94"/>
<wire x1="3.048" y1="-1.016" x2="3.048" y2="-2.032" width="0.1998" layer="94"/>
<wire x1="3.048" y1="2.54" x2="3.81" y2="2.54" width="0.1998" layer="94"/>
<wire x1="3.048" y1="2.032" x2="3.81" y2="2.032" width="0.1998" layer="94"/>
<wire x1="3.048" y1="1.524" x2="3.81" y2="1.524" width="0.1998" layer="94"/>
<wire x1="3.048" y1="1.016" x2="3.81" y2="1.016" width="0.1998" layer="94"/>
<wire x1="3.048" y1="0.508" x2="3.81" y2="0.508" width="0.1998" layer="94"/>
<wire x1="3.048" y1="0" x2="3.81" y2="0" width="0.1998" layer="94"/>
<wire x1="1.524" y1="-7.112" x2="0" y2="-7.112" width="0.254" layer="94"/>
<wire x1="0" y1="-7.112" x2="0" y2="-8.128" width="0.254" layer="94"/>
<wire x1="0" y1="-8.128" x2="1.524" y2="-8.128" width="0.254" layer="94"/>
<wire x1="1.524" y1="-9.652" x2="0" y2="-9.652" width="0.254" layer="94"/>
<wire x1="0" y1="-9.652" x2="0" y2="-10.668" width="0.254" layer="94"/>
<wire x1="0" y1="-10.668" x2="1.524" y2="-10.668" width="0.254" layer="94"/>
<wire x1="3.048" y1="-0.508" x2="3.81" y2="-0.508" width="0.1998" layer="94"/>
<wire x1="3.048" y1="-1.016" x2="3.81" y2="-1.016" width="0.1998" layer="94"/>
<text x="-2.54" y="10.16" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-13.208" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="3" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="4" x="-2.54" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="5" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="6" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="7" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="8" x="-2.54" y="-10.16" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="P$1" x="-2.54" y="-17.78" length="middle"/>
<text x="2.54" y="-17.78" size="1.778" layer="94">G</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="NE8FBH">
<gates>
<gate name="G$1" symbol="JACK8" x="-2.54" y="7.62"/>
</gates>
<devices>
<device name="" package="NE8FBH">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
<connect gate="G$1" pin="5" pad="P$5"/>
<connect gate="G$1" pin="6" pad="P$6"/>
<connect gate="G$1" pin="7" pad="P$7"/>
<connect gate="G$1" pin="8" pad="P$8"/>
<connect gate="G$1" pin="P$1" pad="P$9"/>
</connects>
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
<part name="U$7" library="ethercon" deviceset="NE8FBH" device=""/>
<part name="GND24" library="supply1" deviceset="GND" device=""/>
<part name="P+9" library="supply1" deviceset="+5V" device=""/>
<part name="P-9" library="supply1" deviceset="-5V" device=""/>
<part name="U$6" library="anyma-lib" deviceset="MOLEX-52207-1285" device=""/>
<part name="GND25" library="supply1" deviceset="GND" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$7" gate="G$1" x="424.18" y="73.66"/>
<instance part="GND24" gate="1" x="279.4" y="132.08" rot="R270"/>
<instance part="P+9" gate="1" x="279.4" y="116.84" rot="R90"/>
<instance part="P-9" gate="1" x="279.4" y="124.46" rot="R270"/>
<instance part="U$6" gate="-1.1" x="284.48" y="132.08"/>
<instance part="U$6" gate="-2.1" x="284.48" y="129.54"/>
<instance part="U$6" gate="-3.1" x="284.48" y="127"/>
<instance part="U$6" gate="-4.1" x="284.48" y="124.46"/>
<instance part="U$6" gate="-5.1" x="284.48" y="121.92"/>
<instance part="U$6" gate="-6.1" x="284.48" y="119.38"/>
<instance part="U$6" gate="-7.1" x="284.48" y="116.84"/>
<instance part="U$6" gate="-8.1" x="284.48" y="114.3"/>
<instance part="U$6" gate="-9.1" x="284.48" y="111.76"/>
<instance part="U$6" gate="-10.1" x="284.48" y="109.22"/>
<instance part="U$6" gate="-11.1" x="284.48" y="106.68"/>
<instance part="U$6" gate="-12.1" x="284.48" y="104.14"/>
<instance part="GND25" gate="1" x="279.4" y="109.22" rot="R270"/>
<instance part="GND1" gate="1" x="419.1" y="55.88" rot="R270"/>
</instances>
<busses>
</busses>
<nets>
<net name="+5V" class="0">
<segment>
<pinref part="U$6" gate="-7.1" pin="1"/>
<pinref part="P+9" gate="1" pin="+5V"/>
</segment>
</net>
<net name="-5V" class="0">
<segment>
<pinref part="U$6" gate="-4.1" pin="1"/>
<pinref part="P-9" gate="1" pin="-5V"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="GND24" gate="1" pin="GND"/>
<pinref part="U$6" gate="-1.1" pin="1"/>
</segment>
<segment>
<pinref part="U$6" gate="-10.1" pin="1"/>
<pinref part="GND25" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$7" gate="G$1" pin="P$1"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
</net>
<net name="DATA+" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="5"/>
<wire x1="266.7" y1="71.12" x2="421.64" y2="71.12" width="0.1524" layer="91"/>
<pinref part="U$6" gate="-8.1" pin="1"/>
<wire x1="281.94" y1="114.3" x2="266.7" y2="114.3" width="0.1524" layer="91"/>
<wire x1="266.7" y1="114.3" x2="266.7" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="7"/>
<wire x1="271.78" y1="66.04" x2="421.64" y2="66.04" width="0.1524" layer="91"/>
<pinref part="U$6" gate="-11.1" pin="1"/>
<wire x1="281.94" y1="106.68" x2="271.78" y2="106.68" width="0.1524" layer="91"/>
<wire x1="271.78" y1="106.68" x2="271.78" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="8"/>
<wire x1="421.64" y1="63.5" x2="274.32" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U$6" gate="-12.1" pin="1"/>
<wire x1="281.94" y1="104.14" x2="274.32" y2="104.14" width="0.1524" layer="91"/>
<wire x1="274.32" y1="104.14" x2="274.32" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="2"/>
<wire x1="421.64" y1="78.74" x2="259.08" y2="78.74" width="0.1524" layer="91"/>
<pinref part="U$6" gate="-3.1" pin="1"/>
<wire x1="281.94" y1="127" x2="259.08" y2="127" width="0.1524" layer="91"/>
<wire x1="259.08" y1="127" x2="259.08" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="3"/>
<wire x1="421.64" y1="76.2" x2="261.62" y2="76.2" width="0.1524" layer="91"/>
<pinref part="U$6" gate="-5.1" pin="1"/>
<wire x1="281.94" y1="121.92" x2="261.62" y2="121.92" width="0.1524" layer="91"/>
<wire x1="261.62" y1="121.92" x2="261.62" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="4"/>
<wire x1="421.64" y1="73.66" x2="264.16" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U$6" gate="-6.1" pin="1"/>
<wire x1="281.94" y1="119.38" x2="264.16" y2="119.38" width="0.1524" layer="91"/>
<wire x1="264.16" y1="119.38" x2="264.16" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="6"/>
<wire x1="421.64" y1="68.58" x2="269.24" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U$6" gate="-9.1" pin="1"/>
<wire x1="281.94" y1="111.76" x2="269.24" y2="111.76" width="0.1524" layer="91"/>
<wire x1="269.24" y1="111.76" x2="269.24" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U$6" gate="-2.1" pin="1"/>
<wire x1="281.94" y1="129.54" x2="256.54" y2="129.54" width="0.1524" layer="91"/>
<wire x1="256.54" y1="129.54" x2="256.54" y2="81.28" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="1"/>
<wire x1="256.54" y1="81.28" x2="421.64" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
