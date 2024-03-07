local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1
L0_1 = require
L1_1 = "_G"
L0_1 = L0_1(L1_1)
L1_1 = L0_1.assert
L2_1 = L0_1.getmetatable
L3_1 = L0_1.ipairs
L4_1 = L0_1.load
L5_1 = L0_1.pairs
L6_1 = L0_1.rawget
L7_1 = L0_1.rawset
L8_1 = L0_1.setmetatable
L9_1 = L0_1.type
L10_1 = require
L11_1 = "table"
L10_1 = L10_1(L11_1)
L11_1 = L10_1.concat
L12_1 = require
L13_1 = "Packages.loop.table"
L12_1 = L12_1(L13_1)
L13_1 = L12_1.copy
L14_1 = L12_1.clear
L15_1 = L12_1.memoize
L16_1 = require
L17_1 = "Packages.loop.proto"
L16_1 = L16_1(L17_1)
L17_1 = L16_1.clone
L18_1 = require
L19_1 = "Packages.loop.multiple"
L18_1 = L18_1(L19_1)
L19_1 = L18_1.class
L20_1 = L18_1.isinstanceof
L21_1 = require
L22_1 = "Packages.loop.cached"
L21_1 = L21_1(L22_1)
L22_1 = L21_1.getclass
L23_1 = L21_1.CachedClass
L24_1 = L19_1
L24_1 = L24_1()
function L25_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = A0_2[A1_2]
  if L3_2 == nil then
    L3_2 = A0_2[A2_2]
    A0_2[A1_2] = L3_2
    A0_2[A2_2] = A1_2
  end
end
L24_1.insert = L25_1
L25_1 = L8_1
L26_1 = {}
L27_1 = {}
L27_1.__mode = "kv"
L25_1 = L25_1(L26_1, L27_1)
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L19_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L15_1
  function L3_2(A0_3)
    local L1_3
    L1_3 = L1_2
    L1_3 = L1_3()
    L25_1[L1_3] = A0_3
    return L1_3
  end
  L4_2 = "k"
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.class = L1_2
  return L2_2
end
function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L19_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = L15_1
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = L25_1[A0_3]
    L2_3 = L6_1
    L3_3 = L2_2
    L4_3 = L1_3
    L2_3 = L2_3(L3_3, L4_3)
    if L2_3 == nil then
      L3_3 = L1_2
      L3_3 = L3_3()
      L2_3 = L3_3
      if L1_3 == nil then
        L25_1[L2_3] = A0_3
      else
        L25_1[L2_3] = L1_3
        L2_2[L1_3] = L2_3
      end
    end
    return L2_3
  end
  L5_2 = "k"
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L3_2
  L2_2.class = L1_2
  return L2_2
end
function L28_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L9_1
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == "function" then
    L2_2 = A1_2
    function L3_2(A0_3, ...)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = L6_1
      L2_3 = A0_2
      L3_3 = L2_1
      L4_3 = A0_3
      L3_3, L4_3 = L3_3(L4_3)
      L1_3 = L1_3(L2_3, L3_3, L4_3)
      if L1_3 == nil then
        L2_3 = L2_2
        L3_3 = A0_3
        L4_3 = ...
        return L2_3(L3_3, L4_3)
      else
        L2_3 = L2_2
        L3_3 = L1_3[A0_3]
        L4_3 = ...
        return L2_3(L3_3, L4_3)
      end
    end
    A1_2 = L3_2
  end
  return A1_2
end
L29_1 = L8_1
L30_1 = {}
L31_1 = {}
L31_1.__mode = "k"
L29_1 = L29_1(L30_1, L31_1)
L30_1 = {}
L31_1 = {}
L32_1 = "local Public   = select(1, ...)                      "
L33_1 = "private or protected"
L31_1[1] = L32_1
L31_1[2] = L33_1
L32_1 = {}
L33_1 = "local meta     = select(2, ...)                      "
L34_1 = "not (newindex and public and nilindex)"
L32_1[1] = L33_1
L32_1[2] = L34_1
L33_1 = {}
L34_1 = "local class    = select(3, ...)                      "
L35_1 = "newindex or private"
L33_1[1] = L34_1
L33_1[2] = L35_1
L34_1 = {}
L35_1 = "local bindto   = select(4, ...)                      "
L36_1 = "newindex"
L34_1[1] = L35_1
L34_1[2] = L36_1
L35_1 = {}
L36_1 = "local newindex = select(5, ...)                      "
L37_1 = "newindex and not nilindex"
L35_1[1] = L36_1
L35_1[2] = L37_1
L36_1 = {}
L37_1 = "local index    = select(5, ...)                      "
L38_1 = "index and not nilindex"
L36_1[1] = L37_1
L36_1[2] = L38_1
L37_1 = {}
L38_1 = "local registry = class.registry                      "
L39_1 = "private"
L37_1[1] = L38_1
L37_1[2] = L39_1
L38_1 = {}
L39_1 = "local result                                         "
L40_1 = "index and (private or protected)"
L38_1[1] = L39_1
L38_1[2] = L40_1
L39_1 = {}
L40_1 = "return function (state, name, value)                 "
L41_1 = "newindex"
L39_1[1] = L40_1
L39_1[2] = L41_1
L40_1 = {}
L41_1 = "return function (state, name)                        "
L42_1 = "index"
L40_1[1] = L41_1
L40_1[2] = L42_1
L41_1 = {}
L42_1 = "\tresult = meta[name]                                 "
L43_1 = "index and (private or protected)"
L41_1[1] = L42_1
L41_1[2] = L43_1
L42_1 = {}
L43_1 = "\treturn   meta[name]                                 "
L44_1 = "index and public"
L42_1[1] = L43_1
L42_1[2] = L44_1
L43_1 = {}
L44_1 = "\t         or index[name]                             "
L45_1 = "index and tableindex"
L43_1[1] = L44_1
L43_1[2] = L45_1
L44_1 = {}
L45_1 = "\t         or index(state, name)                      "
L46_1 = "index and functionindex"
L44_1[1] = L45_1
L44_1[2] = L46_1
L45_1 = {}
L46_1 = "\tif result == nil then                               "
L47_1 = "index and (private or protected)"
L45_1[1] = L46_1
L45_1[2] = L47_1
L46_1 = {}
L47_1 = "\tif meta[name] == nil then                           "
L48_1 = "newindex and (private or protected or not nilindex)"
L46_1[1] = L47_1
L46_1[2] = L48_1
L47_1 = {}
L48_1 = "\t\tstate = Public[state]                             "
L49_1 = "private or protected"
L47_1[1] = L48_1
L47_1[2] = L49_1
L48_1 = {}
L49_1 = "\t\tlocal Protected = registry[getmetatable(state)]   "
L50_1 = "private"
L48_1[1] = L49_1
L48_1[2] = L50_1
L49_1 = {}
L50_1 = "\t\tif Protected then state = Protected[state] end    "
L51_1 = "private"
L49_1[1] = L50_1
L49_1[2] = L51_1
L50_1 = {}
L51_1 = "\t\treturn state[name]                                "
L52_1 = "index and (private or protected)"
L50_1[1] = L51_1
L50_1[2] = L52_1
L51_1 = {}
L52_1 = "\t\tstate[name] = bindto(class, value)                "
L53_1 = "newindex and (private or protected) and nilindex"
L51_1[1] = L52_1
L51_1[2] = L53_1
L52_1 = {}
L53_1 = "\t\tnewindex[name] = bindto(class, value)             "
L54_1 = "newindex and tableindex"
L52_1[1] = L53_1
L52_1[2] = L54_1
L53_1 = {}
L54_1 = "\t\treturn newindex(state, name, bindto(class, value))"
L55_1 = "newindex and functionindex"
L53_1[1] = L54_1
L53_1[2] = L55_1
L54_1 = {}
L55_1 = "\telse                                                "
L56_1 = "newindex and (private or protected or not nilindex)"
L54_1[1] = L55_1
L54_1[2] = L56_1
L55_1 = {}
L56_1 = "\t\treturn rawset(state, name, bindto(class, value))  "
L57_1 = "newindex"
L55_1[1] = L56_1
L55_1[2] = L57_1
L56_1 = {}
L57_1 = "\tend                                                 "
L58_1 = "private or protected or (newindex and not nilindex)"
L56_1[1] = L57_1
L56_1[2] = L58_1
L57_1 = {}
L58_1 = "\treturn result                                       "
L59_1 = "index and (private or protected)"
L57_1[1] = L58_1
L57_1[2] = L59_1
L58_1 = {}
L59_1 = "end                                                  "
L58_1[1] = L59_1
L30_1[1] = L31_1
L30_1[2] = L32_1
L30_1[3] = L33_1
L30_1[4] = L34_1
L30_1[5] = L35_1
L30_1[6] = L36_1
L30_1[7] = L37_1
L30_1[8] = L38_1
L30_1[9] = L39_1
L30_1[10] = L40_1
L30_1[11] = L41_1
L30_1[12] = L42_1
L30_1[13] = L43_1
L30_1[14] = L44_1
L30_1[15] = L45_1
L30_1[16] = L46_1
L30_1[17] = L47_1
L30_1[18] = L48_1
L30_1[19] = L49_1
L30_1[20] = L50_1
L30_1[21] = L51_1
L30_1[22] = L52_1
L30_1[23] = L53_1
L30_1[24] = L54_1
L30_1[25] = L55_1
L30_1[26] = L56_1
L30_1[27] = L57_1
L30_1[28] = L58_1
L31_1 = L15_1
function L32_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = {}
  L3_2 = A0_2
  L2_2 = A0_2.gmatch
  L4_2 = "[^%s]+"
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  for L5_2 in L2_2, L3_2, L4_2 do
    L1_2[L5_2] = true
  end
  L2_2 = {}
  L3_2 = L3_1
  L4_2 = L30_1
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2[2]
    if L8_2 then
      L9_2 = L1_1
      L10_2 = L4_1
      L11_2 = "return "
      L12_2 = L8_2
      L11_2 = L11_2 .. L12_2
      L12_2 = "compiler condition "
      L13_2 = L6_2
      L14_2 = ":"
      L12_2 = L12_2 .. L13_2 .. L14_2
      L13_2 = "t"
      L14_2 = L1_2
      L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      L9_2 = L9_2()
      L8_2 = L9_2
    else
      L8_2 = true
    end
    if L8_2 then
      L9_2 = L1_1
      L10_2 = L9_1
      L11_2 = L7_2[1]
      L10_2 = L10_2(L11_2)
      L10_2 = L10_2 == "string"
      L11_2 = "code string is not a string"
      L9_2(L10_2, L11_2)
      L9_2 = #L2_2
      L9_2 = L9_2 + 1
      L10_2 = L7_2[1]
      L2_2[L9_2] = L10_2
    end
  end
  L3_2 = L4_1
  L4_2 = L11_1
  L5_2 = L2_2
  L6_2 = "\n"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2
  return L3_2(L4_2, L5_2)
end
L31_1 = L31_1(L32_1)
function L32_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A0_2
  L3_2 = A0_2.getmeta
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = "__"
  L5_2 = A2_2
  L4_2 = L4_2 .. L5_2
  L4_2 = L3_2[L4_2]
  L5_2 = A1_2
  L6_2 = " "
  L7_2 = A2_2
  L8_2 = " "
  L9_2 = L9_1
  L10_2 = L4_2
  L9_2 = L9_2(L10_2)
  L10_2 = "index"
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L6_2 = L31_1[L5_2]
  L7_2 = L6_2
  L8_2 = L25_1
  L9_2 = L3_2
  L10_2 = A0_2
  L11_2 = L28_1
  L12_2 = L4_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L29_1[L7_2] = L4_2
  return L7_2
end
function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = nil
  L3_2 = "__"
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L4_2 = L1_1
  L5_2 = A0_2[L3_2]
  L6_2 = "no indexer found in scoped class metatable."
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L29_1[L4_2]
  return L5_2
end
function L34_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A1_2 = A0_2[A1_2]
  if A1_2 then
    L2_2 = L3_1
    L3_2 = A1_2.supers
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L8_2 = A0_2
      L7_2 = A0_2.insert
      L9_2 = L6_2
      L10_2 = A1_2
      L7_2(L8_2, L9_2, L10_2)
    end
    return A1_2
  end
end
function L35_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L24_1
  L2_2 = {}
  L3_2 = A0_2
  L2_2[1] = L3_2
  L1_2 = L1_2(L2_2)
  L2_2 = L34_1
  L3_2 = L1_2
  L4_2 = 1
  return L2_2, L3_2, L4_2
end
function L36_1(A0_2)
  local L1_2
  L1_2 = L25_1[A0_2]
  if not L1_2 then
    L1_2 = A0_2
  end
  return L1_2
end
function L37_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == nil then
    L2_2 = L22_1
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    A1_2 = L2_2
  end
  L2_2 = L22_1
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  if A1_2 then
    L2_2 = A1_2.private
    if L2_2 then
      L2_2 = L22_1
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L3_2 = A1_2.private
      L3_2 = L3_2.class
      if L2_2 == L3_2 then
        return A0_2
      else
        L2_2 = A1_2.private
        L2_2 = L2_2[A0_2]
        return L2_2
      end
    end
  end
end
function L38_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L22_1
  L2_2 = L22_1
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L2_2 = L1_2.protected
    if L2_2 then
      L2_2 = L22_1
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L3_2 = L1_2.protected
      L3_2 = L3_2.class
      if L2_2 == L3_2 then
        return A0_2
      else
        L2_2 = L1_2.protected
        L3_2 = L36_1
        L4_2 = A0_2
        L3_2 = L3_2(L4_2)
        L2_2 = L2_2[L3_2]
        return L2_2
      end
    end
  end
end
function L39_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L36_1
  L3_2 = A1_2
  return L2_2(L3_2)
end
function L40_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L38_1
  L3_2 = A1_2
  return L2_2(L3_2)
end
function L41_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L37_1
  L4_2 = A1_2
  L5_2 = A2_2
  return L3_2(L4_2, L5_2)
end
L42_1 = L19_1
L43_1 = {}
L44_1 = L23_1
L42_1 = L42_1(L43_1, L44_1)
function L43_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2[A1_2]
  if L2_2 then
    L2_2 = A0_2[A1_2]
    L2_2 = L2_2.class
    if L2_2 then
      goto lbl_14
    end
  end
  if A1_2 == "public" then
    L2_2 = A0_2.class
    if L2_2 then
      goto lbl_14
    end
  end
  L2_2 = nil
  ::lbl_14::
  return L2_2
end
L42_1.getmeta = L43_1
function L43_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.members
  L2_2 = L2_2[A1_2]
  return L2_2
end
L42_1.getmembers = L43_1
function L43_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil then
    L2_2 = {}
    L3_2 = {}
    L2_2.public = L3_2
    A1_2 = L2_2
  end
  L2_2 = L9_1
  L3_2 = A1_2.public
  L2_2 = L2_2(L3_2)
  if L2_2 ~= "table" then
    L2_2 = L9_1
    L3_2 = A1_2.protected
    L2_2 = L2_2(L3_2)
    if L2_2 ~= "table" then
      L2_2 = L9_1
      L3_2 = A1_2.private
      L2_2 = L2_2(L3_2)
      if L2_2 ~= "table" then
        goto lbl_25
      end
    end
    L2_2 = {}
    A1_2.public = L2_2
    goto lbl_32
    ::lbl_25::
    L2_2 = L13_1
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    L3_2 = L14_1
    L4_2 = A1_2
    L3_2(L4_2)
    A1_2.public = L2_2
  end
  ::lbl_32::
  L2_2 = L23_1.__new
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2 = L2_2
  L2_2 = {}
  L3_2 = A0_2.class
  L2_2[L3_2] = false
  A0_2.registry = L2_2
  L2_2 = L7_1
  L3_2 = A0_2.proxy
  L4_2 = "public"
  L5_2 = L8_1
  L6_2 = {}
  L7_2 = {}
  L8_2 = L39_1
  L7_2.__call = L8_2
  L8_2 = A0_2.class
  L7_2.__index = L8_2
  function L8_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = A0_2
    L4_3 = L3_3
    L3_3 = L3_3.updatefield
    L5_3 = A1_3
    L6_3 = A2_3
    L7_3 = "public"
    L3_3(L4_3, L5_3, L6_3, L7_3)
  end
  L7_2.__newindex = L8_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  return A0_2
end
L42_1.__new = L43_1
function L43_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L23_1.addsubclass
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A1_2.class
  L3_2 = L35_1
  L4_2 = A0_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2 in L3_2, L4_2, L5_2 do
    L7_2 = L6_2.registry
    if L7_2 then
      L7_2[L2_2] = false
      L8_2 = L6_2.private
      L6_2[L2_2] = L8_2
    end
  end
end
L42_1.addsubclass = L43_1
function L43_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L23_1.removesubclass
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.class
  L4_2 = A0_2
  L3_2 = A0_2.getmeta
  L5_2 = "protected"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.getmeta
  L6_2 = "private"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L35_1
  L6_2 = A0_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2 in L5_2, L6_2, L7_2 do
    L9_2 = L8_2.registry
    if L9_2 then
      L9_2[L2_2] = nil
      L8_2[L2_2] = nil
      if L3_2 then
        L9_2[L3_2] = nil
        L8_2[L3_2] = nil
      end
      if L4_2 then
        L9_2[L4_2] = nil
        L8_2[L4_2] = nil
      end
    end
  end
end
L42_1.removesubclass = L43_1
function L43_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 then
    if not A2_2 then
      L3_2 = {}
      A2_2 = L3_2
    end
    L3_2 = L5_1
    L4_2 = A1_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L28_1
      L9_2 = A0_2
      L10_2 = L7_2
      L8_2 = L8_2(L9_2, L10_2)
      A2_2[L6_2] = L8_2
    end
  end
  return A2_2
end
function L44_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L1_2 = L14_1
  L2_2 = A0_2.class
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  L7_2 = nil
  L8_2 = A0_2.supers
  L9_2 = #L8_2
  L10_2 = 1
  L11_2 = -1
  for L12_2 = L9_2, L10_2, L11_2 do
    L13_2 = L8_2[L12_2]
    L14_2 = L13_1
    L15_2 = L13_2.class
    L16_2 = L1_2
    L14_2 = L14_2(L15_2, L16_2)
    L1_2 = L14_2
    L14_2 = L20_1
    L15_2 = L13_2
    L16_2 = L42_1
    L14_2 = L14_2(L15_2, L16_2)
    if L14_2 then
      L14_2 = L13_1
      L16_2 = L13_2
      L15_2 = L13_2.getmeta
      L17_2 = "protected"
      L15_2 = L15_2(L16_2, L17_2)
      L16_2 = L2_2
      L14_2 = L14_2(L15_2, L16_2)
      L2_2 = L14_2
      L14_2 = L33_1
      L15_2 = L1_2
      L16_2 = "index"
      L14_2 = L14_2(L15_2, L16_2)
      L4_2 = L14_2 or L4_2
      if not L14_2 then
      end
      L14_2 = L33_1
      L15_2 = L1_2
      L16_2 = "newindex"
      L14_2 = L14_2(L15_2, L16_2)
      L5_2 = L14_2 or L5_2
      if not L14_2 then
      end
      if L2_2 then
        L14_2 = L33_1
        L15_2 = L2_2
        L16_2 = "index"
        L14_2 = L14_2(L15_2, L16_2)
        L6_2 = L14_2 or L6_2
        if not L14_2 then
        end
        L14_2 = L33_1
        L15_2 = L2_2
        L16_2 = "newindex"
        L14_2 = L14_2(L15_2, L16_2)
        L7_2 = L14_2 or L7_2
        if not L14_2 then
        end
      end
    end
  end
  L1_2.__index = L4_2
  L1_2.__newindex = L5_2
  if L2_2 then
    L2_2.__index = L6_2
    L2_2.__newindex = L7_2
  end
  L9_2 = L43_1
  L10_2 = A0_2
  L11_2 = A0_2.members
  L11_2 = L11_2.public
  L12_2 = L1_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L1_2 = L9_2
  L9_2 = L43_1
  L10_2 = A0_2
  L11_2 = A0_2.members
  L11_2 = L11_2.protected
  L12_2 = L2_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L2_2 = L9_2
  L9_2 = L43_1
  L10_2 = A0_2
  L11_2 = A0_2.members
  L11_2 = L11_2.private
  L12_2 = L3_2
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L3_2 = L9_2
  L9_2 = L32_1
  L10_2 = A0_2
  L11_2 = "public"
  L12_2 = "index"
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L1_2.__index = L9_2
  L9_2 = L32_1
  L10_2 = A0_2
  L11_2 = "public"
  L12_2 = "newindex"
  L9_2 = L9_2(L10_2, L11_2, L12_2)
  L1_2.__newindex = L9_2
  if L2_2 then
    L9_2 = A0_2.protected
    if not L9_2 then
      L9_2 = L26_1
      L10_2 = L2_2
      L9_2 = L9_2(L10_2)
      A0_2.protected = L9_2
      L9_2 = L7_1
      L10_2 = A0_2.proxy
      L11_2 = "protected"
      L12_2 = L8_1
      L13_2 = {}
      L14_2 = {}
      L15_2 = L40_1
      L14_2.__call = L15_2
      L14_2.__index = L2_2
      function L15_2(A0_3, A1_3, A2_3)
        local L3_3, L4_3, L5_3, L6_3, L7_3
        L3_3 = A0_2
        L4_3 = L3_3
        L3_3 = L3_3.updatefield
        L5_3 = A1_3
        L6_3 = A2_3
        L7_3 = "protected"
        L3_3(L4_3, L5_3, L6_3, L7_3)
      end
      L14_2.__newindex = L15_2
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L12_2(L13_2, L14_2)
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L9_2 = A0_2.protected
      L10_2 = L35_1
      L11_2 = A0_2
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2 in L10_2, L11_2, L12_2 do
        L14_2 = L13_2.registry
        if L14_2 then
          L14_2[L1_2] = L9_2
          L14_2[L2_2] = false
          L15_2 = L13_2.private
          if L15_2 then
            L13_2[L1_2] = L15_2
            L13_2[L2_2] = L15_2
          else
            L13_2[L1_2] = L9_2
          end
        end
      end
    else
      L9_2 = L13_1
      L10_2 = L2_2
      L11_2 = L14_1
      L12_2 = A0_2.protected
      L12_2 = L12_2.class
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2(L12_2)
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L2_2 = L9_2
    end
    L9_2 = L32_1
    L10_2 = A0_2
    L11_2 = "protected"
    L12_2 = "index"
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L2_2.__index = L9_2
    L9_2 = L32_1
    L10_2 = A0_2
    L11_2 = "protected"
    L12_2 = "newindex"
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L2_2.__newindex = L9_2
  else
    L9_2 = A0_2.protected
    if L9_2 then
      L9_2 = A0_2.protected
      L10_2 = L35_1
      L11_2 = A0_2
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2 in L10_2, L11_2, L12_2 do
        L14_2 = L13_2.registry
        if L14_2 then
          L14_2[L1_2] = false
          L15_2 = L9_2.class
          L14_2[L15_2] = nil
          L15_2 = L13_2.private
          L13_2[L1_2] = L15_2
          L15_2 = L9_2.class
          L13_2[L15_2] = nil
        end
      end
      A0_2.protected = nil
      L10_2 = L7_1
      L11_2 = A0_2.proxy
      L12_2 = "protected"
      L13_2 = nil
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  if L3_2 then
    L9_2 = A0_2.private
    if not L9_2 then
      L9_2 = L27_1
      L10_2 = L3_2
      L9_2 = L9_2(L10_2)
      A0_2.private = L9_2
      L9_2 = L7_1
      L10_2 = A0_2.proxy
      L11_2 = "private"
      L12_2 = L8_1
      L13_2 = {}
      L14_2 = {}
      L15_2 = L41_1
      L14_2.__call = L15_2
      L14_2.__index = L3_2
      function L15_2(A0_3, A1_3, A2_3)
        local L3_3, L4_3, L5_3, L6_3, L7_3
        L3_3 = A0_2
        L4_3 = L3_3
        L3_3 = L3_3.updatefield
        L5_3 = A1_3
        L6_3 = A2_3
        L7_3 = "private"
        L3_3(L4_3, L5_3, L6_3, L7_3)
      end
      L14_2.__newindex = L15_2
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L12_2(L13_2, L14_2)
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L9_2 = A0_2.private
      L10_2 = A0_2.protected
      if not L10_2 then
        L10_2 = L25_1
      end
      L11_2 = L3_1
      L12_2 = L8_2
      L11_2, L12_2, L13_2 = L11_2(L12_2)
      for L14_2, L15_2 in L11_2, L12_2, L13_2 do
        L16_2 = L35_1
        L17_2 = L15_2
        L16_2, L17_2, L18_2 = L16_2(L17_2)
        for L19_2 in L16_2, L17_2, L18_2 do
          L20_2 = L19_2.registry
          if L20_2 then
            L20_2[L3_2] = L10_2
            L21_2 = L19_2.private_pool
            if not L21_2 then
              L21_2 = L10_2
            end
            L19_2[L3_2] = L21_2
          end
        end
      end
      L11_2 = L5_1
      L12_2 = A0_2.registry
      L11_2, L12_2, L13_2 = L11_2(L12_2)
      for L14_2 in L11_2, L12_2, L13_2 do
        A0_2[L14_2] = L9_2
      end
    else
      L9_2 = L13_1
      L10_2 = L3_2
      L11_2 = L14_1
      L13_2 = A0_2
      L12_2 = A0_2.getmeta
      L14_2 = "private"
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L12_2(L13_2, L14_2)
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
      L3_2 = L9_2
    end
    L9_2 = L32_1
    L10_2 = A0_2
    L11_2 = "private"
    L12_2 = "index"
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L3_2.__index = L9_2
    L9_2 = L32_1
    L10_2 = A0_2
    L11_2 = "private"
    L12_2 = "newindex"
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L3_2.__newindex = L9_2
  else
    L9_2 = A0_2.private
    if L9_2 then
      L9_2 = A0_2.private
      L10_2 = L3_1
      L11_2 = L8_2
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2, L14_2 in L10_2, L11_2, L12_2 do
        L15_2 = L35_1
        L16_2 = L14_2
        L15_2, L16_2, L17_2 = L15_2(L16_2)
        for L18_2 in L15_2, L16_2, L17_2 do
          L19_2 = L18_2.registry
          if L19_2 then
            L20_2 = L9_2.class
            L19_2[L20_2] = nil
            L20_2 = L9_2.class
            L18_2[L20_2] = nil
          end
        end
      end
      L10_2 = L5_1
      L11_2 = A0_2.registry
      L10_2, L11_2, L12_2 = L10_2(L11_2)
      for L13_2, L14_2 in L10_2, L11_2, L12_2 do
        L15_2 = L14_2 or L15_2
        if not L14_2 then
          L15_2 = nil
        end
        A0_2[L13_2] = L15_2
      end
      A0_2.private = nil
      L10_2 = L7_1
      L11_2 = A0_2.proxy
      L12_2 = "private"
      L13_2 = nil
      L10_2(L11_2, L12_2, L13_2)
    end
  end
end
L42_1.updatemembers = L44_1
function L44_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L4_2 = L28_1
  L5_2 = A0_2
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  A2_2 = L4_2
  if not A3_2 then
    if A1_2 == "public" or A1_2 == "protected" or A1_2 == "private" then
      if A2_2 ~= nil then
        L4_2 = L9_1
        L5_2 = A2_2
        L4_2 = L4_2(L5_2)
        if L4_2 ~= "table" then
          goto lbl_26
        end
      end
      L4_2 = A0_2.members
      L4_2[A1_2] = A2_2
      L5_2 = A0_2
      L4_2 = A0_2.updatemembers
      return L4_2(L5_2)
    end
    ::lbl_26::
    A3_2 = "public"
  end
  L5_2 = A0_2
  L4_2 = A0_2.getmembers
  L6_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2)
  L4_2[A1_2] = A2_2
  L6_2 = A0_2
  L5_2 = A0_2.getmeta
  L7_2 = A3_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2[A1_2]
  L5_2[A1_2] = A2_2
  if A3_2 ~= "private" then
    L7_2 = L24_1
    L7_2 = L7_2()
    L8_2 = A0_2
    L10_2 = L7_2
    L9_2 = L7_2.enqueue
    L11_2 = A0_2
    L9_2(L10_2, L11_2)
    L9_2 = L5_1
    L10_2 = A0_2.subs
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    for L12_2 in L9_2, L10_2, L11_2 do
      L14_2 = L7_2
      L13_2 = L7_2.enqueue
      L15_2 = L12_2
      L13_2(L14_2, L15_2)
    end
    repeat
      L9_2 = L7_2[L8_2]
      if L9_2 == nil then
        break
      end
      L11_2 = L9_2
      L10_2 = L9_2.getmeta
      L12_2 = A3_2
      L10_2 = L10_2(L11_2, L12_2)
      L5_2 = L10_2
      L11_2 = L9_2
      L10_2 = L9_2.getmembers
      L12_2 = A3_2
      L10_2 = L10_2(L11_2, L12_2)
      L4_2 = L10_2
      if L4_2 then
        L10_2 = L4_2[A1_2]
        if L10_2 == nil then
          L10_2 = L3_1
          L11_2 = L9_2.supers
          L10_2, L11_2, L12_2 = L10_2(L11_2)
          for L13_2, L14_2 in L10_2, L11_2, L12_2 do
            L16_2 = L14_2
            L15_2 = L14_2.getmeta
            L17_2 = A3_2
            L15_2 = L15_2(L16_2, L17_2)
            L16_2 = L15_2[A1_2]
            if L16_2 ~= nil then
              L16_2 = L15_2[A1_2]
              L17_2 = L5_2[A1_2]
              if L16_2 ~= L17_2 then
                L16_2 = L15_2[A1_2]
                L5_2[A1_2] = L16_2
                L16_2 = L5_1
                L17_2 = L9_2.subs
                L16_2, L17_2, L18_2 = L16_2(L17_2)
                for L19_2 in L16_2, L17_2, L18_2 do
                  L21_2 = L7_2
                  L20_2 = L7_2.enqueue
                  L22_2 = L19_2
                  L20_2(L21_2, L22_2)
                end
              end
              break
            end
          end
        end
      end
      L10_2 = false
    until L10_2
  end
  return L6_2
end
L42_1.updatefield = L44_1
L44_1 = L17_1
L45_1 = L21_1
L46_1 = {}
L46_1.this = L36_1
L46_1.prot = L38_1
L46_1.priv = L37_1
L44_1 = L44_1(L45_1, L46_1)
function L45_1(A0_2, ...)
  local L1_2, L2_2, L3_2
  L1_2 = L22_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  A0_2 = L1_2 or A0_2
  if not L1_2 then
    L1_2 = L42_1
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    A0_2 = L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.updatehierarchy
  L3_2 = ...
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.updateinheritance
  L1_2(L2_2)
  L1_2 = A0_2.proxy
  return L1_2
end
L44_1.class = L45_1
return L44_1
