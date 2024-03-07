local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1
L0_1 = "serpent"
L1_1 = "0.30"
L2_1 = "Paul Kulchenko"
L3_1 = "Lua serializer and pretty printer"
L4_1 = {}
L5_1 = tostring
L6_1 = 1 / 0
L5_1 = L5_1(L6_1)
L4_1[L5_1] = "1/0 --[[math.huge]]"
L5_1 = tostring
L6_1 = -1 / 0
L5_1 = L5_1(L6_1)
L4_1[L5_1] = "-1/0 --[[-math.huge]]"
L5_1 = tostring
L6_1 = 0 / 0
L5_1 = L5_1(L6_1)
L4_1[L5_1] = "0/0"
L5_1 = {}
L5_1.thread = true
L5_1.userdata = true
L5_1.cdata = true
L6_1 = debug
if L6_1 then
  L6_1 = debug
  L6_1 = L6_1.getmetatable
  if L6_1 then
    goto lbl_30
  end
end
L6_1 = getmetatable
::lbl_30::
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = next
  L2_2 = A0_2
  return L1_2, L2_2
end
L8_1 = {}
L9_1 = {}
L10_1 = _G
if not L10_1 then
  L10_1 = _ENV
end
L11_1 = ipairs
L12_1 = {}
L13_1 = "and"
L14_1 = "break"
L15_1 = "do"
L16_1 = "else"
L17_1 = "elseif"
L18_1 = "end"
L19_1 = "false"
L20_1 = "for"
L21_1 = "function"
L22_1 = "goto"
L23_1 = "if"
L24_1 = "in"
L25_1 = "local"
L26_1 = "nil"
L27_1 = "not"
L28_1 = "or"
L29_1 = "repeat"
L30_1 = "return"
L31_1 = "then"
L32_1 = "true"
L33_1 = "until"
L34_1 = "while"
L12_1[1] = L13_1
L12_1[2] = L14_1
L12_1[3] = L15_1
L12_1[4] = L16_1
L12_1[5] = L17_1
L12_1[6] = L18_1
L12_1[7] = L19_1
L12_1[8] = L20_1
L12_1[9] = L21_1
L12_1[10] = L22_1
L12_1[11] = L23_1
L12_1[12] = L24_1
L12_1[13] = L25_1
L12_1[14] = L26_1
L12_1[15] = L27_1
L12_1[16] = L28_1
L12_1[17] = L29_1
L12_1[18] = L30_1
L12_1[19] = L31_1
L12_1[20] = L32_1
L12_1[21] = L33_1
L12_1[22] = L34_1
L11_1, L12_1, L13_1 = L11_1(L12_1)
for L14_1, L15_1 in L11_1, L12_1, L13_1 do
  L8_1[L15_1] = true
end
L11_1 = L7_1
L12_1 = L10_1
L11_1, L12_1, L13_1 = L11_1(L12_1)
for L14_1, L15_1 in L11_1, L12_1, L13_1 do
  L9_1[L15_1] = L14_1
end
L11_1 = ipairs
L12_1 = {}
L13_1 = "coroutine"
L14_1 = "debug"
L15_1 = "io"
L16_1 = "math"
L17_1 = "string"
L18_1 = "table"
L19_1 = "os"
L12_1[1] = L13_1
L12_1[2] = L14_1
L12_1[3] = L15_1
L12_1[4] = L16_1
L12_1[5] = L17_1
L12_1[6] = L18_1
L12_1[7] = L19_1
L11_1, L12_1, L13_1 = L11_1(L12_1)
for L14_1, L15_1 in L11_1, L12_1, L13_1 do
  L16_1 = L7_1
  L17_1 = type
  L18_1 = L10_1[L15_1]
  L17_1 = L17_1(L18_1)
  if L17_1 == "table" then
    L17_1 = L10_1[L15_1]
    if L17_1 then
      goto lbl_96
    end
  end
  L17_1 = {}
  ::lbl_96::
  L16_1, L17_1, L18_1 = L16_1(L17_1)
  for L19_1, L20_1 in L16_1, L17_1, L18_1 do
    L21_1 = L15_1
    L22_1 = "."
    L23_1 = L19_1
    L21_1 = L21_1 .. L22_1 .. L23_1
    L9_1[L20_1] = L21_1
  end
end
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2, L35_2, L36_2, L37_2, L38_2
  L2_2 = A1_2.name
  L3_2 = A1_2.indent
  L4_2 = A1_2.fatal
  L5_2 = A1_2.maxnum
  L6_2 = A1_2.sparse
  L7_2 = A1_2.custom
  L8_2 = A1_2.nohuge
  L8_2 = not L8_2
  L9_2 = A1_2.compact
  if L9_2 then
    L9_2 = ""
    if L9_2 then
      goto lbl_16
    end
  end
  L9_2 = " "
  ::lbl_16::
  L10_2 = A1_2.maxlevel
  if not L10_2 then
    L10_2 = math
    L10_2 = L10_2.huge
  end
  L11_2 = tonumber
  L12_2 = A1_2.maxlength
  L11_2 = L11_2(L12_2)
  L12_2 = A1_2.metatostring
  L13_2 = "_"
  L14_2 = L2_2 or L14_2
  if not L2_2 then
    L14_2 = ""
  end
  L13_2 = L13_2 .. L14_2
  L14_2 = A1_2.comment
  if L14_2 then
    L14_2 = tonumber
    L15_2 = A1_2.comment
    L14_2 = L14_2(L15_2)
    if not L14_2 then
      L14_2 = math
      L14_2 = L14_2.huge
    end
  end
  L15_2 = A1_2.numformat
  if not L15_2 then
    L15_2 = "%.17g"
  end
  L16_2 = {}
  L17_2 = {}
  L18_2 = "local "
  L19_2 = L13_2
  L20_2 = "={}"
  L18_2 = L18_2 .. L19_2 .. L20_2
  L17_2[1] = L18_2
  L18_2 = {}
  L19_2 = 0
  function L20_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = "_"
    L2_3 = tostring
    L3_3 = tostring
    L4_3 = A0_3
    L3_3, L4_3, L5_3 = L3_3(L4_3)
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L3_3 = L2_3
    L2_3 = L2_3.gsub
    L4_3 = "[^%w]"
    L5_3 = ""
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L3_3 = L2_3
    L2_3 = L2_3.gsub
    L4_3 = "(%d%w+)"
    function L5_3(A0_4)
      local L1_4, L2_4
      L1_4 = L18_2[A0_4]
      if not L1_4 then
        L1_4 = L19_2
        L1_4 = L1_4 + 1
        L19_2 = L1_4
        L1_4 = L19_2
        L18_2[A0_4] = L1_4
      end
      L1_4 = tostring
      L2_4 = L18_2[A0_4]
      return L1_4(L2_4)
    end
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L1_3 = L1_3 .. L2_3
    return L1_3
  end
  function L21_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = type
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if L1_3 == "number" then
      L1_3 = tostring
      L2_3 = L8_2
      if L2_3 then
        L2_3 = tostring
        L3_3 = A0_3
        L2_3 = L2_3(L3_3)
        L2_3 = L4_1[L2_3]
        if L2_3 then
          goto lbl_20
        end
      end
      L2_3 = L15_2
      L3_3 = L2_3
      L2_3 = L2_3.format
      L4_3 = A0_3
      L2_3 = L2_3(L3_3, L4_3)
      ::lbl_20::
      L1_3 = L1_3(L2_3)
      if L1_3 then
        goto lbl_45
      end
    end
    L1_3 = type
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    if L1_3 ~= "string" then
      L1_3 = tostring
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        goto lbl_45
      end
    end
    L1_3 = "%q"
    L2_3 = L1_3
    L1_3 = L1_3.format
    L3_3 = A0_3
    L1_3 = L1_3(L2_3, L3_3)
    L2_3 = L1_3
    L1_3 = L1_3.gsub
    L3_3 = "\n"
    L4_3 = "n"
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    L2_3 = L1_3
    L1_3 = L1_3.gsub
    L3_3 = "\026"
    L4_3 = "\\026"
    L1_3 = L1_3(L2_3, L3_3, L4_3)
    ::lbl_45::
    return L1_3
  end
  function L22_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = L14_2
    if L2_3 then
      L2_3 = A1_3 or L2_3
      if not A1_3 then
        L2_3 = 0
      end
      L3_3 = L14_2
      if L2_3 < L3_3 then
        L2_3 = " --[["
        L3_3 = select
        L4_3 = 2
        L5_3 = pcall
        L6_3 = tostring
        L7_3 = A0_3
        L5_3, L6_3, L7_3 = L5_3(L6_3, L7_3)
        L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
        L4_3 = "]]"
        L2_3 = L2_3 .. L3_3 .. L4_3
        if L2_3 then
          goto lbl_23
        end
      end
    end
    L2_3 = ""
    ::lbl_23::
    return L2_3
  end
  function L23_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L2_3 = L9_1[A0_3]
    if L2_3 then
      L2_3 = L9_1[A0_3]
      L3_3 = L22_2
      L4_3 = A0_3
      L5_3 = A1_3
      L3_3 = L3_3(L4_3, L5_3)
      L2_3 = L2_3 .. L3_3
      if L2_3 then
        goto lbl_33
      end
    end
    L2_3 = L4_2
    if not L2_3 then
      L2_3 = L21_2
      L3_3 = select
      L4_3 = 2
      L5_3 = pcall
      L6_3 = tostring
      L7_3 = A0_3
      L5_3, L6_3, L7_3 = L5_3(L6_3, L7_3)
      L3_3, L4_3, L5_3, L6_3, L7_3 = L3_3(L4_3, L5_3, L6_3, L7_3)
      L2_3 = L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
      if L2_3 then
        goto lbl_33
      end
    end
    L2_3 = error
    L3_3 = "Can't serialize "
    L4_3 = tostring
    L5_3 = A0_3
    L4_3 = L4_3(L5_3)
    L3_3 = L3_3 .. L4_3
    L2_3 = L2_3(L3_3)
    ::lbl_33::
    return L2_3
  end
  function L24_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if A1_3 == nil then
      L2_3 = ""
      if L2_3 then
        goto lbl_7
      end
    end
    L2_3 = A1_3
    ::lbl_7::
    L3_3 = type
    L4_3 = L2_3
    L3_3 = L3_3(L4_3)
    L4_3 = L2_3
    L3_3 = L2_3.match
    L5_3 = "^[%l%u_][%w_]*$"
    L3_3 = L3_3(L4_3, L5_3)
    if L3_3 then
      L3_3 = L8_1[L2_3]
      L3_3 = L3_3 == "string" and L3_3
    end
    L4_3 = L2_3 or L4_3
    if not L3_3 or not L2_3 then
      L4_3 = "["
      L5_3 = L21_2
      L6_3 = L2_3
      L5_3 = L5_3(L6_3)
      L6_3 = "]"
      L4_3 = L4_3 .. L5_3 .. L6_3
    end
    L5_3 = A0_3 or L5_3
    if not A0_3 then
      L5_3 = ""
    end
    if L3_3 and A0_3 then
      L6_3 = "."
      if L6_3 then
        goto lbl_43
      end
    end
    L6_3 = ""
    ::lbl_43::
    L7_3 = L4_3
    L5_3 = L5_3 .. L6_3 .. L7_3
    L6_3 = L4_3
    return L5_3, L6_3
  end
  L25_2 = type
  L26_2 = A1_2.sortkeys
  L25_2 = L25_2(L26_2)
  if L25_2 == "function" then
    L25_2 = A1_2.sortkeys
    if L25_2 then
      goto lbl_67
    end
  end
  function L25_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L3_3 = tonumber
    L4_3 = A2_3
    L3_3 = L3_3(L4_3)
    if not L3_3 then
      L3_3 = 12
    end
    L4_3 = {}
    L4_3.number = "a"
    L4_3.string = "b"
    function L5_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      L1_4 = "%0"
      L2_4 = tostring
      L3_4 = L3_3
      L2_4 = L2_4(L3_4)
      L3_4 = "d"
      L1_4 = L1_4 .. L2_4 .. L3_4
      L2_4 = L1_4
      L1_4 = L1_4.format
      L3_4 = tonumber
      L4_4 = A0_4
      L3_4, L4_4 = L3_4(L4_4)
      return L1_4(L2_4, L3_4, L4_4)
    end
    L6_3 = table
    L6_3 = L6_3.sort
    L7_3 = A0_3
    function L8_3(A0_4, A1_4)
      local L2_4, L3_4, L4_4, L5_4, L6_4, L7_4
      L2_4 = A0_3[A0_4]
      if L2_4 ~= nil then
        L2_4 = 0
        if L2_4 then
          goto lbl_14
        end
      end
      L2_4 = type
      L3_4 = A0_4
      L2_4 = L2_4(L3_4)
      L2_4 = L4_3[L2_4]
      if not L2_4 then
        L2_4 = "z"
      end
      ::lbl_14::
      L3_4 = tostring
      L4_4 = A0_4
      L3_4 = L3_4(L4_4)
      L4_4 = L3_4
      L3_4 = L3_4.gsub
      L5_4 = "%d+"
      L6_4 = L5_3
      L3_4 = L3_4(L4_4, L5_4, L6_4)
      L2_4 = L2_4 .. L3_4
      L3_4 = A0_3[A1_4]
      if L3_4 ~= nil then
        L3_4 = 0
        if L3_4 then
          goto lbl_35
        end
      end
      L3_4 = type
      L4_4 = A1_4
      L3_4 = L3_4(L4_4)
      L3_4 = L4_3[L3_4]
      if not L3_4 then
        L3_4 = "z"
      end
      ::lbl_35::
      L4_4 = tostring
      L5_4 = A1_4
      L4_4 = L4_4(L5_4)
      L5_4 = L4_4
      L4_4 = L4_4.gsub
      L6_4 = "%d+"
      L7_4 = L5_3
      L4_4 = L4_4(L5_4, L6_4, L7_4)
      L3_4 = L3_4 .. L4_4
      L2_4 = L2_4 < L3_4
      return L2_4
    end
    L6_3(L7_3, L8_3)
  end
  ::lbl_67::
  function L26_2(A0_3, A1_3, A2_3, A3_3, A4_3, A5_3, A6_3)
    local L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3, L22_3, L23_3, L24_3, L25_3, L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3
    L7_3 = type
    L8_3 = A0_3
    L7_3 = L7_3(L8_3)
    L8_3 = A6_3 or L8_3
    if not A6_3 then
      L8_3 = 0
    end
    L9_3 = L6_1
    L10_3 = A0_3
    L9_3 = L9_3(L10_3)
    L10_3 = L24_2
    L11_3 = A4_3
    L12_3 = A1_3
    L10_3, L11_3 = L10_3(L11_3, L12_3)
    if A5_3 then
      L12_3 = type
      L13_3 = A1_3
      L12_3 = L12_3(L13_3)
      if L12_3 == "number" then
        L12_3 = ""
        if L12_3 then
          goto lbl_41
        end
      end
      L12_3 = A1_3
      L13_3 = L9_2
      L14_3 = "="
      L15_3 = L9_2
      L12_3 = L12_3 .. L13_3 .. L14_3 .. L15_3
      if L12_3 then
        goto lbl_41
      end
    end
    if A1_3 ~= nil then
      L12_3 = L11_3
      L13_3 = L9_2
      L14_3 = "="
      L15_3 = L9_2
      L12_3 = L12_3 .. L13_3 .. L14_3 .. L15_3
      if L12_3 then
        goto lbl_41
      end
    end
    L12_3 = ""
    ::lbl_41::
    L13_3 = L16_2[A0_3]
    if L13_3 then
      L13_3 = L17_2
      L13_3 = #L13_3
      L13_3 = L13_3 + 1
      L14_3 = L10_3
      L15_3 = L9_2
      L16_3 = "="
      L17_3 = L9_2
      L18_3 = L16_2[A0_3]
      L14_3 = L14_3 .. L15_3 .. L16_3 .. L17_3 .. L18_3
      L17_2[L13_3] = L14_3
      L13_3 = L12_3
      L14_3 = "nil"
      L15_3 = L22_2
      L16_3 = "ref"
      L17_3 = L8_3
      L15_3 = L15_3(L16_3, L17_3)
      L13_3 = L13_3 .. L14_3 .. L15_3
      return L13_3
    end
    L13_3 = type
    L14_3 = L9_3
    L13_3 = L13_3(L14_3)
    if L13_3 == "table" then
      L13_3 = pcall
      function L14_3()
        local L0_4, L1_4
        L0_4 = L9_3.__tostring
        L1_4 = A0_3
        return L0_4(L1_4)
      end
      L13_3, L14_3 = L13_3(L14_3)
      L15_3 = pcall
      function L16_3()
        local L0_4, L1_4
        L0_4 = L9_3.__serialize
        L1_4 = A0_3
        return L0_4(L1_4)
      end
      L15_3, L16_3 = L15_3(L16_3)
      L17_3 = A1_2.metatostring
      if L17_3 ~= false and L13_3 or L15_3 then
        L17_3 = A3_3 or L17_3
        if not A3_3 then
          L17_3 = L10_3
        end
        L16_2[A0_3] = L17_3
        A0_3 = L16_3 or A0_3
        if not L15_3 or not L16_3 then
          A0_3 = L14_3
        end
        L17_3 = type
        L18_3 = A0_3
        L17_3 = L17_3(L18_3)
        L7_3 = L17_3
      end
    end
    if L7_3 == "table" then
      L13_3 = L10_2
      if L8_3 >= L13_3 then
        L13_3 = L12_3
        L14_3 = "{}"
        L15_3 = L22_2
        L16_3 = "maxlvl"
        L17_3 = L8_3
        L15_3 = L15_3(L16_3, L17_3)
        L13_3 = L13_3 .. L14_3 .. L15_3
        return L13_3
      end
      L13_3 = A3_3 or L13_3
      if not A3_3 then
        L13_3 = L10_3
      end
      L16_2[A0_3] = L13_3
      L13_3 = next
      L14_3 = A0_3
      L13_3 = L13_3(L14_3)
      if L13_3 == nil then
        L13_3 = L12_3
        L14_3 = "{}"
        L15_3 = L22_2
        L16_3 = A0_3
        L17_3 = L8_3
        L15_3 = L15_3(L16_3, L17_3)
        L13_3 = L13_3 .. L14_3 .. L15_3
        return L13_3
      end
      L13_3 = L11_2
      if L13_3 then
        L13_3 = L11_2
        if L13_3 < 0 then
          L13_3 = L12_3
          L14_3 = "{}"
          L15_3 = L22_2
          L16_3 = "maxlen"
          L17_3 = L8_3
          L15_3 = L15_3(L16_3, L17_3)
          L13_3 = L13_3 .. L14_3 .. L15_3
          return L13_3
        end
      end
      L13_3 = math
      L13_3 = L13_3.min
      L14_3 = #A0_3
      L15_3 = L5_2
      if not L15_3 then
        L15_3 = #A0_3
      end
      L13_3 = L13_3(L14_3, L15_3)
      L14_3 = {}
      L15_3 = {}
      L16_3 = 1
      L17_3 = L13_3
      L18_3 = 1
      for L19_3 = L16_3, L17_3, L18_3 do
        L14_3[L19_3] = L19_3
      end
      L16_3 = L5_2
      if L16_3 then
        L16_3 = #L14_3
        L17_3 = L5_2
        if not (L16_3 < L17_3) then
          goto lbl_172
        end
      end
      L16_3 = #L14_3
      L17_3 = L7_1
      L18_3 = A0_3
      L17_3, L18_3, L19_3 = L17_3(L18_3)
      for L20_3 in L17_3, L18_3, L19_3 do
        L21_3 = L14_3[L20_3]
        if L21_3 ~= L20_3 then
          L16_3 = L16_3 + 1
          L14_3[L16_3] = L20_3
        end
      end
      ::lbl_172::
      L16_3 = L5_2
      if L16_3 then
        L16_3 = #L14_3
        L17_3 = L5_2
        if L16_3 > L17_3 then
          L16_3 = L5_2
          L16_3 = L16_3 + 1
          L14_3[L16_3] = nil
        end
      end
      L16_3 = A1_2.sortkeys
      if L16_3 then
        L16_3 = #L14_3
        if L13_3 < L16_3 then
          L16_3 = L25_2
          L17_3 = L14_3
          L18_3 = A0_3
          L19_3 = A1_2.sortkeys
          L16_3(L17_3, L18_3, L19_3)
        end
      end
      L16_3 = L6_2
      if L16_3 then
        L16_3 = #L14_3
        L16_3 = L13_3 < L16_3
      end
      L17_3 = ipairs
      L18_3 = L14_3
      L17_3, L18_3, L19_3 = L17_3(L18_3)
      for L20_3, L21_3 in L17_3, L18_3, L19_3 do
        L22_3 = A0_3[L21_3]
        L23_3 = type
        L24_3 = L21_3
        L23_3 = L23_3(L24_3)
        L24_3 = L20_3 <= L13_3 and L24_3
        L25_3 = A1_2.valignore
        if L25_3 then
          L25_3 = A1_2.valignore
          L25_3 = L25_3[L22_3]
          if L25_3 then
            goto lbl_348
          end
        end
        L25_3 = A1_2.keyallow
        if L25_3 then
          L25_3 = A1_2.keyallow
          L25_3 = L25_3[L21_3]
          if not L25_3 then
            goto lbl_348
          end
        end
        L25_3 = A1_2.keyignore
        if L25_3 then
          L25_3 = A1_2.keyignore
          L25_3 = L25_3[L21_3]
          if L25_3 then
            goto lbl_348
          end
        end
        L25_3 = A1_2.valtypeignore
        if L25_3 then
          L25_3 = A1_2.valtypeignore
          L26_3 = type
          L27_3 = L22_3
          L26_3 = L26_3(L27_3)
          L25_3 = L25_3[L26_3]
        end
        if L25_3 or L16_3 and L22_3 == nil then
        else
          if L23_3 ~= "table" and L23_3 ~= "function" then
            L25_3 = L5_1[L23_3]
            if not L25_3 then
              goto lbl_324
            end
          end
          L25_3 = L16_2[L21_3]
          if not L25_3 then
            L25_3 = L9_1[L21_3]
            if not L25_3 then
              L25_3 = L17_2
              L25_3 = #L25_3
              L25_3 = L25_3 + 1
              L17_2[L25_3] = "placeholder"
              L25_3 = L24_2
              L26_3 = L13_2
              L27_3 = L20_2
              L28_3 = L21_3
              L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3 = L27_3(L28_3)
              L25_3 = L25_3(L26_3, L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3, L34_3, L35_3, L36_3)
              L26_3 = L17_2
              L26_3 = #L26_3
              L27_3 = L26_2
              L28_3 = L21_3
              L29_3 = L25_3
              L30_3 = A2_3
              L31_3 = L25_3
              L32_3 = L13_2
              L33_3 = true
              L27_3 = L27_3(L28_3, L29_3, L30_3, L31_3, L32_3, L33_3)
              L17_2[L26_3] = L27_3
            end
          end
          L25_3 = L17_2
          L25_3 = #L25_3
          L25_3 = L25_3 + 1
          L17_2[L25_3] = "placeholder"
          L25_3 = L16_2[A0_3]
          L26_3 = "["
          L27_3 = tostring
          L28_3 = L16_2[L21_3]
          if not L28_3 then
            L28_3 = L9_1[L21_3]
            if not L28_3 then
              L28_3 = L20_2
              L29_3 = L21_3
              L28_3 = L28_3(L29_3)
            end
          end
          L27_3 = L27_3(L28_3)
          L28_3 = "]"
          L25_3 = L25_3 .. L26_3 .. L27_3 .. L28_3
          L26_3 = L17_2
          L26_3 = #L26_3
          L27_3 = L25_3
          L28_3 = L9_2
          L29_3 = "="
          L30_3 = L9_2
          L31_3 = tostring
          L32_3 = L16_2[L22_3]
          if not L32_3 then
            L32_3 = L26_2
            L33_3 = L22_3
            L34_3 = nil
            L35_3 = A2_3
            L36_3 = L25_3
            L32_3 = L32_3(L33_3, L34_3, L35_3, L36_3)
          end
          L31_3 = L31_3(L32_3)
          L27_3 = L27_3 .. L28_3 .. L29_3 .. L30_3 .. L31_3
          L17_2[L26_3] = L27_3
          goto lbl_348
          ::lbl_324::
          L25_3 = #L15_3
          L25_3 = L25_3 + 1
          L26_3 = L26_2
          L27_3 = L22_3
          L28_3 = L21_3
          L29_3 = A2_3
          L30_3 = A3_3
          L31_3 = L16_2[A0_3]
          L32_3 = L24_3
          L33_3 = L8_3 + 1
          L26_3 = L26_3(L27_3, L28_3, L29_3, L30_3, L31_3, L32_3, L33_3)
          L15_3[L25_3] = L26_3
          L25_3 = L11_2
          if L25_3 then
            L25_3 = L11_2
            L26_3 = #L15_3
            L26_3 = L15_3[L26_3]
            L26_3 = #L26_3
            L25_3 = L25_3 - L26_3
            L11_2 = L25_3
            L25_3 = L11_2
            if L25_3 < 0 then
              break
            end
          end
        end
        ::lbl_348::
      end
      L17_3 = string
      L17_3 = L17_3.rep
      L18_3 = A2_3 or L18_3
      if not A2_3 then
        L18_3 = ""
      end
      L19_3 = L8_3
      L17_3 = L17_3(L18_3, L19_3)
      if A2_3 then
        L18_3 = "{\n"
        L19_3 = L17_3
        L20_3 = A2_3
        L18_3 = L18_3 .. L19_3 .. L20_3
        if L18_3 then
          goto lbl_366
        end
      end
      L18_3 = "{"
      ::lbl_366::
      L19_3 = table
      L19_3 = L19_3.concat
      L20_3 = L15_3
      L21_3 = ","
      if A2_3 then
        L22_3 = "\n"
        L23_3 = L17_3
        L24_3 = A2_3
        L22_3 = L22_3 .. L23_3 .. L24_3
        if L22_3 then
          goto lbl_379
        end
      end
      L22_3 = L9_2
      ::lbl_379::
      L21_3 = L21_3 .. L22_3
      L19_3 = L19_3(L20_3, L21_3)
      if A2_3 then
        L20_3 = "\n"
        L21_3 = L17_3
        L22_3 = "}"
        L20_3 = L20_3 .. L21_3 .. L22_3
        if L20_3 then
          goto lbl_390
        end
      end
      L20_3 = "}"
      ::lbl_390::
      L21_3 = L7_2
      if L21_3 then
        L21_3 = L7_2
        L22_3 = L12_3
        L23_3 = L18_3
        L24_3 = L19_3
        L25_3 = L20_3
        L26_3 = L8_3
        L21_3 = L21_3(L22_3, L23_3, L24_3, L25_3, L26_3)
        if L21_3 then
          goto lbl_407
        end
      end
      L21_3 = L12_3
      L22_3 = L18_3
      L23_3 = L19_3
      L24_3 = L20_3
      L21_3 = L21_3 .. L22_3 .. L23_3 .. L24_3
      ::lbl_407::
      L22_3 = L22_2
      L23_3 = A0_3
      L24_3 = L8_3
      L22_3 = L22_3(L23_3, L24_3)
      L21_3 = L21_3 .. L22_3
      return L21_3
    else
      L13_3 = L5_1[L7_3]
      if L13_3 then
        L13_3 = A3_3 or L13_3
        if not A3_3 then
          L13_3 = L10_3
        end
        L16_2[A0_3] = L13_3
        L13_3 = L12_3
        L14_3 = L23_2
        L15_3 = A0_3
        L16_3 = L8_3
        L14_3 = L14_3(L15_3, L16_3)
        L13_3 = L13_3 .. L14_3
        return L13_3
      elseif L7_3 == "function" then
        L13_3 = A3_3 or L13_3
        if not A3_3 then
          L13_3 = L10_3
        end
        L16_2[A0_3] = L13_3
        L13_3 = A1_2.nocode
        if L13_3 then
          L13_3 = L12_3
          L14_3 = "function() --[[..skipped..]] end"
          L15_3 = L22_2
          L16_3 = A0_3
          L17_3 = L8_3
          L15_3 = L15_3(L16_3, L17_3)
          L13_3 = L13_3 .. L14_3 .. L15_3
          return L13_3
        end
        L13_3 = pcall
        L14_3 = string
        L14_3 = L14_3.dump
        L15_3 = A0_3
        L13_3, L14_3 = L13_3(L14_3, L15_3)
        L15_3 = L13_3 or L15_3
        if L13_3 then
          L15_3 = "((loadstring or load)("
          L16_3 = L21_2
          L17_3 = L14_3
          L16_3 = L16_3(L17_3)
          L17_3 = ",'@serialized'))"
          L18_3 = L22_2
          L19_3 = A0_3
          L20_3 = L8_3
          L18_3 = L18_3(L19_3, L20_3)
          L15_3 = L15_3 .. L16_3 .. L17_3 .. L18_3
        end
        L16_3 = L12_3
        L17_3 = L15_3 or L17_3
        if not L15_3 then
          L17_3 = L23_2
          L18_3 = A0_3
          L19_3 = L8_3
          L17_3 = L17_3(L18_3, L19_3)
        end
        L16_3 = L16_3 .. L17_3
        return L16_3
      else
        L13_3 = L12_3
        L14_3 = L21_2
        L15_3 = A0_3
        L14_3 = L14_3(L15_3)
        L13_3 = L13_3 .. L14_3
        return L13_3
      end
    end
  end
  if L3_2 then
    L27_2 = "\n"
    if L27_2 then
      goto lbl_76
    end
  end
  L27_2 = ";"
  L28_2 = L9_2
  L27_2 = L27_2 .. L28_2
  ::lbl_76::
  L28_2 = L26_2
  L29_2 = A0_2
  L30_2 = L2_2
  L31_2 = L3_2
  L28_2 = L28_2(L29_2, L30_2, L31_2)
  L29_2 = #L17_2
  if 1 < L29_2 then
    L29_2 = table
    L29_2 = L29_2.concat
    L30_2 = L17_2
    L31_2 = L27_2
    L29_2 = L29_2(L30_2, L31_2)
    L30_2 = L27_2
    L29_2 = L29_2 .. L30_2
    if L29_2 then
      goto lbl_94
    end
  end
  L29_2 = ""
  ::lbl_94::
  L30_2 = A1_2.comment
  if L30_2 then
    L30_2 = #L17_2
    if 1 < L30_2 then
      L30_2 = L9_2
      L31_2 = "--[[incomplete output with shared/self-references skipped]]"
      L30_2 = L30_2 .. L31_2
      if L30_2 then
        goto lbl_106
      end
    end
  end
  L30_2 = ""
  ::lbl_106::
  if not L2_2 then
    L31_2 = L28_2
    L32_2 = L30_2
    L31_2 = L31_2 .. L32_2
    if L31_2 then
      goto lbl_122
    end
  end
  L31_2 = "do local "
  L32_2 = L28_2
  L33_2 = L27_2
  L34_2 = L29_2
  L35_2 = "return "
  L36_2 = L2_2
  L37_2 = L27_2
  L38_2 = "end"
  L31_2 = L31_2 .. L32_2 .. L33_2 .. L34_2 .. L35_2 .. L36_2 .. L37_2 .. L38_2
  ::lbl_122::
  return L31_2
end
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 then
    L2_2 = A1_2.safe
    if L2_2 == false then
      L2_2 = L10_1
      if L2_2 then
        goto lbl_17
      end
    end
  end
  L2_2 = setmetatable
  L3_2 = {}
  L4_2 = {}
  function L5_2(A0_3, A1_3)
    return A0_3
  end
  L4_2.__index = L5_2
  function L5_2(A0_3, ...)
    local L1_3, L2_3
    L1_3 = error
    L2_3 = "cannot call functions"
    L1_3(L2_3)
  end
  L4_2.__call = L5_2
  L2_2 = L2_2(L3_2, L4_2)
  ::lbl_17::
  L3_2 = loadstring
  if not L3_2 then
    L3_2 = load
  end
  L4_2 = "return "
  L5_2 = A0_2
  L4_2 = L4_2 .. L5_2
  L5_2 = nil
  L6_2 = nil
  L7_2 = L2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  if not L3_2 then
    L5_2 = loadstring
    if not L5_2 then
      L5_2 = load
    end
    L6_2 = A0_2
    L7_2 = nil
    L8_2 = nil
    L9_2 = L2_2
    L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L4_2 = L6_2
    L3_2 = L5_2
  end
  if not L3_2 then
    L5_2 = L3_2
    L6_2 = L4_2
    return L5_2, L6_2
  end
  L5_2 = setfenv
  if L5_2 then
    L5_2 = setfenv
    L6_2 = L3_2
    L7_2 = L2_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = pcall
  L6_2 = L3_2
  return L5_2(L6_2)
end
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    L2_2 = L7_1
    L3_2 = A1_2
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      A0_2[L5_2] = L6_2
    end
  end
  return A0_2
end
L14_1 = {}
L14_1._NAME = L0_1
L14_1._COPYRIGHT = L2_1
L14_1._DESCRIPTION = L3_1
L14_1._VERSION = L1_1
L14_1.serialize = L11_1
L14_1.load = L12_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L11_1
  L3_2 = A0_2
  L4_2 = L13_1
  L5_2 = {}
  L5_2.name = "_"
  L5_2.compact = true
  L5_2.sparse = true
  L6_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
L14_1.dump = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L11_1
  L3_2 = A0_2
  L4_2 = L13_1
  L5_2 = {}
  L5_2.sortkeys = true
  L5_2.comment = true
  L6_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
L14_1.line = L15_1
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L11_1
  L3_2 = A0_2
  L4_2 = L13_1
  L5_2 = {}
  L5_2.indent = "  "
  L5_2.sortkeys = true
  L5_2.comment = true
  L6_2 = A1_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  return L2_2(L3_2, L4_2, L5_2, L6_2)
end
L14_1.block = L15_1
return L14_1
