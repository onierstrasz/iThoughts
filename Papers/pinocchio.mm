<map version="0.9.0"><attribute_registry SHOW_ATTRIBUTES="hide"/>
<node TEXT="Pinocchio" ID="Freemind_Link_1"   STYLE="bubble" ><edge COLOR="#0000FE" /><node TEXT="Problems with VMs" ID="Freemind_Link_2"  POSITION="right"  STYLE="bubble" ><edge COLOR="#FF0000" /><node TEXT="closed-box VM" ID="Freemind_Link_86"   STYLE="bubble" ><edge COLOR="#FF0000" /><node TEXT="VMs not adaptable" ID="Freemind_Link_12"   STYLE="bubble" ><edge COLOR="#FF0000" /><node TEXT="can't anticipate all needs" ID="Freemind_Link_8"   STYLE="bubble" ><edge COLOR="#FF0000" /></node>
<node TEXT="not open for extension" ID="Freemind_Link_88"   STYLE="bubble" ><edge COLOR="#FF0000" /></node>
</node>
<node TEXT="need to change and extend VMs" ID="Freemind_Link_9"   STYLE="bubble" ><edge COLOR="#FF0000" /><node TEXT="eg supporting tail call elimination for Lisp" ID="Freemind_Link_10"   STYLE="bubble" ><edge COLOR="#FF0000" /></node>
<node TEXT="eg supporting become: for Smalltalk" ID="Freemind_Link_11"   STYLE="bubble" ><edge COLOR="#FF0000" /></node>
</node>
<node TEXT="boundary between language and VM" ID="Freemind_Link_3"   STYLE="bubble" ><edge COLOR="#FF0000" /><font BOLD="false" ITALIC="false" SIZE="14"/><node TEXT="forces specialized VM implementation" ID="Freemind_Link_4"   STYLE="bubble" ><edge COLOR="#FF0000" /></node>
</node>
</node>
<node TEXT="host-language lock-in" ID="Freemind_Link_5"   STYLE="bubble" ><edge COLOR="#FF0000" /><node TEXT="VMs not reusable" ID="Freemind_Link_6"   STYLE="bubble" ><edge COLOR="#FF0000" /><node TEXT="eg invokedynamic only available to Java 7" ID="Freemind_Link_7"   STYLE="bubble" ><edge COLOR="#FF0000" /></node>
</node>
</node>
<node TEXT="metaprogramming restrictions" ID="Freemind_Link_13"   STYLE="bubble" ><edge COLOR="#FF0000" /><node TEXT="extension points must be hardwired into the VM" ID="Freemind_Link_14"   STYLE="bubble" ><edge COLOR="#FF0000" /><node TEXT="eg using objects as methods in Pharo" ID="Freemind_Link_15"   STYLE="bubble" ><edge COLOR="#FF0000" /></node>
</node>
</node>
<node TEXT="need two-way interface between languages" ID="Freemind_Link_16"   STYLE="bubble" ><edge COLOR="#FF0000" /></node>
</node>
<node TEXT="Nutshell" ID="Freemind_Link_17"  POSITION="right"  STYLE="bubble" ><edge COLOR="#00FF00" /><node TEXT="The Message is the Medium" ID="Freemind_Link_84"   STYLE="bubble" ><edge COLOR="#00FF00" /></node>
<node TEXT="runtime, not VM" ID="Freemind_Link_19"   STYLE="bubble" ><edge COLOR="#00FF00" /><node TEXT="self-supporting" ID="Freemind_Link_28"   STYLE="bubble" ><edge COLOR="#00FF00" /><node TEXT="available at runtime" ID="Freemind_Link_29"   STYLE="bubble" ><edge COLOR="#00FF00" /><node TEXT="not just compiled away" ID="Freemind_Link_30"   STYLE="bubble" ><edge COLOR="#00FF00" /></node>
<node TEXT="in Squeak and PyPy, you have no access to runtime" ID="Freemind_Link_31"   STYLE="bubble" ><edge COLOR="#00FF00" /></node>
</node>
</node>
<node TEXT="only hardwires message sending" ID="Freemind_Link_20"   STYLE="bubble" ><edge COLOR="#00FF00" /></node>
</node>
<node TEXT="Message Sending" ID="Freemind_Link_78"   STYLE="bubble" ><edge COLOR="#00FF00" /><node TEXT="runtime library" ID="Freemind_Link_81"   STYLE="bubble" ><edge COLOR="#00FF00" /></node>
<node TEXT="invocation convention" ID="Freemind_Link_82"   STYLE="bubble" ><edge COLOR="#00FF00" /></node>
<node TEXT="prefilled monomorphic inline caches" ID="Freemind_Link_83"   STYLE="bubble" ><edge COLOR="#00FF00" /><node TEXT="caches prefilled at compile time" ID="Freemind_Link_24"   STYLE="bubble" ><edge COLOR="#00FF00" /><font BOLD="false" ITALIC="false" SIZE="14"/></node>
</node>
</node>
<node TEXT="metalevel is Smalltalk code" ID="Freemind_Link_32"   STYLE="bubble" ><edge COLOR="#00FF00" /><node TEXT="ie message sending" ID="Freemind_Link_33"   STYLE="bubble" ><edge COLOR="#00FF00" /><node TEXT="so compiler builds MOP for you" ID="Freemind_Link_34"   STYLE="bubble" ><edge COLOR="#00FF00" /></node>
</node>
<node TEXT="compiles to machine code" ID="Freemind_Link_22"   STYLE="bubble" ><edge COLOR="#00FF00" /></node>
<node TEXT="unify language metalevel with user code" ID="Freemind_Link_25"   STYLE="bubble" ><edge COLOR="#00FF00" /><node TEXT="freely move between levels" ID="Freemind_Link_26"   STYLE="bubble" ><edge COLOR="#00FF00" /></node>
</node>
</node>
</node>
<node TEXT="Implementation" ID="Freemind_Link_35"  POSITION="right"  STYLE="bubble" ><edge COLOR="#0000FE" /><node TEXT="Object headers" ID="Freemind_Link_36"   STYLE="bubble" ><edge COLOR="#0000FE" /><node TEXT="Object = data plus pointer to behaviour" ID="Freemind_Link_37"   STYLE="bubble" ><edge COLOR="#0000FE" /></node>
</node>
<node TEXT="Message sending" ID="Freemind_Link_38"   STYLE="bubble" ><edge COLOR="#0000FE" /><node TEXT="runtime library" ID="Freemind_Link_39"   STYLE="bubble" ><edge COLOR="#0000FE" /></node>
<node TEXT="invocation conventions (interface)" ID="Freemind_Link_40"   STYLE="bubble" ><edge COLOR="#0000FE" /><node TEXT="native call to meta-level implementation" ID="Freemind_Link_41"   STYLE="bubble" ><edge COLOR="#0000FE" /></node>
<node TEXT="lookup &amp; apply" ID="Freemind_Link_44"   STYLE="bubble" ><edge COLOR="#0000FE" /><node TEXT="meta-level invoke function performs lookup and apply" ID="Freemind_Link_42"   STYLE="bubble" ><edge COLOR="#0000FE" /></node>
<node TEXT="invoke can be applied to any object" ID="Freemind_Link_45"   STYLE="bubble" ><edge COLOR="#0000FE" /></node>
<node TEXT="looks up selector and performs found behaviour" ID="Freemind_Link_46"   STYLE="bubble" ><edge COLOR="#0000FE" /></node>
</node>
</node>
<node TEXT="prefilled inline caches" ID="Freemind_Link_47"   STYLE="bubble" ><edge COLOR="#0000FE" /><node TEXT="formal binding stays at runtime" ID="Freemind_Link_48"   STYLE="bubble" ><edge COLOR="#0000FE" /><node TEXT="actual binding at compile time" ID="Freemind_Link_49"   STYLE="bubble" ><edge COLOR="#0000FE" /></node>
<node TEXT="can be overridden at runtime" ID="Freemind_Link_50"   STYLE="bubble" ><edge COLOR="#0000FE" /></node>
</node>
<node TEXT="solves the bootstrapping problem" ID="Freemind_Link_51"   STYLE="bubble" ><edge COLOR="#0000FE" /><node TEXT="avoid meta-regression" ID="Freemind_Link_80"   STYLE="bubble" ><edge COLOR="#0000FE" /></node>
</node>
<node TEXT="type hints" ID="Freemind_Link_52"   STYLE="bubble" ><edge COLOR="#0000FE" /><node TEXT="avoid static compilation of metalevel" ID="Freemind_Link_53"   STYLE="bubble" ><edge COLOR="#0000FE" /></node>
<node TEXT="avoid need for statically typed language" ID="Freemind_Link_54"   STYLE="bubble" ><edge COLOR="#0000FE" /></node>
<node TEXT="tells runtime where to find compiled method if type matches" ID="Freemind_Link_79"   STYLE="bubble" ><edge COLOR="#0000FE" /></node>
</node>
</node>
</node>
<node TEXT="Native compilation" ID="Freemind_Link_56"   STYLE="bubble" ><edge COLOR="#0000FE" /><node TEXT="Conventional architecture" ID="Freemind_Link_57"   STYLE="bubble" ><edge COLOR="#0000FE" /></node>
</node>
<node TEXT="Bootstrapping" ID="Freemind_Link_58"   STYLE="bubble" ><edge COLOR="#0000FE" /><node TEXT="compiler cross-compiled from Pharo" ID="Freemind_Link_59"   STYLE="bubble" ><edge COLOR="#0000FE" /></node>
</node>
<node TEXT="Performance" ID="Freemind_Link_60"   STYLE="bubble" ><edge COLOR="#0000FE" /><node TEXT="3 benchmarks" ID="Freemind_Link_61"   STYLE="bubble" ><edge COLOR="#0000FE" /></node>
</node>
</node>
<node TEXT="Applications" ID="Freemind_Link_62"  POSITION="right"  STYLE="bubble" ><edge COLOR="#FF00FF" /><node TEXT="Replacing a MethodObject" ID="Freemind_Link_63"   STYLE="bubble" ><edge COLOR="#FF00FF" /><node TEXT="foobar example :-(" ID="Freemind_Link_64"   STYLE="bubble" ><edge COLOR="#FF00FF" /></node>
</node>
<node TEXT="DoesNotUnderstand" ID="Freemind_Link_65"   STYLE="bubble" ><edge COLOR="#FF00FF" /><node TEXT="example of runtime extension to support new feature" ID="Freemind_Link_66"   STYLE="bubble" ><edge COLOR="#FF00FF" /><font BOLD="false" ITALIC="false" SIZE="14"/></node>
</node>
<node TEXT="Extending behaviour" ID="Freemind_Link_67"   STYLE="bubble" ><edge COLOR="#FF00FF" /><node TEXT="eg prototype-based lookup" ID="Freemind_Link_68"   STYLE="bubble" ><edge COLOR="#FF00FF" /></node>
</node>
<node TEXT="Object Flow Analysis" ID="Freemind_Link_69"   STYLE="bubble" ><edge COLOR="#FF00FF" /><node TEXT="does not currently run in Pinocchio yet" ID="Freemind_Link_70"   STYLE="bubble" ><edge COLOR="#FF00FF" /></node>
<node TEXT="either AST interpreter approach or full compiler approach" ID="Freemind_Link_71"   STYLE="bubble" ><edge COLOR="#FF00FF" /></node>
</node>
<node TEXT="two-way communication with C" ID="Freemind_Link_72"   STYLE="bubble" ><edge COLOR="#FF00FF" /></node>
<node TEXT="profiler" ID="Freemind_Link_73"   STYLE="bubble" ><edge COLOR="#FF00FF" /><node TEXT="counting msg sends" ID="Freemind_Link_74"   STYLE="bubble" ><edge COLOR="#FF00FF" /></node>
</node>
</node>
</node>
</map>