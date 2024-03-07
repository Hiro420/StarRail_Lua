local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1, L43_1, L44_1, L45_1, L46_1, L47_1, L48_1, L49_1, L50_1, L51_1, L52_1, L53_1, L54_1, L55_1, L56_1, L57_1, L58_1, L59_1, L60_1, L61_1, L62_1, L63_1, L64_1, L65_1, L66_1, L67_1, L68_1, L69_1, L70_1, L71_1, L72_1, L73_1, L74_1, L75_1, L76_1, L77_1, L78_1, L79_1, L80_1, L81_1, L82_1, L83_1, L84_1, L85_1, L86_1, L87_1, L88_1, L89_1, L90_1, L91_1, L92_1, L93_1, L94_1, L95_1, L96_1, L97_1, L98_1, L99_1, L100_1, L101_1, L102_1, L103_1, L104_1, L105_1, L106_1, L107_1, L108_1, L109_1
L0_1 = string
L1_1 = tonumber
L2_1 = setmetatable
L3_1 = error
L4_1 = ipairs
L5_1 = io
L6_1 = table
L7_1 = math
L8_1 = assert
L9_1 = tostring
L10_1 = type
L11_1 = L6_1.insert
function L12_1(A0_2, A1_2)
  local L2_2
  if not A1_2 then
    L2_2 = {}
    A1_2 = L2_2
  end
  A1_2.__name = A0_2
  A1_2.__index = A1_2
  return A1_2
end
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2[A1_2]
  if not L3_2 then
    L3_2 = A2_2 or L3_2
    if not A2_2 then
      L4_2 = {}
      L3_2 = L4_2
    end
    A0_2[A1_2] = L3_2
  end
  return L3_2
end
L14_1 = L12_1
L15_1 = "Lexer"
L14_1 = L14_1(L15_1)
L15_1 = {}
L15_1.a = "\a"
L15_1.b = "\b"
L15_1.f = "\f"
L15_1.n = "\n"
L15_1.r = "\r"
L15_1.t = "\t"
L15_1.v = "\v"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.byte
  L2_2 = L1_1
  L3_2 = A0_2
  L4_2 = 16
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  return L1_2(L2_2, L3_2, L4_2)
end
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.byte
  L2_2 = L1_1
  L3_2 = A0_2
  L4_2 = 10
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  return L1_2(L2_2, L3_2, L4_2)
end
function L18_1(A0_2)
  local L1_2
  L1_2 = L15_1[A0_2]
  if not L1_2 then
    L1_2 = A0_2
  end
  return L1_2
end
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L2_2.name = A0_2
  L2_2.src = A1_2
  L2_2.pos = 1
  L3_2 = L2_1
  L4_2 = L2_2
  L5_2 = L14_1
  return L3_2(L4_2, L5_2)
end
L14_1.new = L19_1
function L19_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.src
  L4_2 = L3_2
  L3_2 = L3_2.match
  L5_2 = A1_2
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = A0_2.pos
  end
  return L3_2(L4_2, L5_2, L6_2)
end
L14_1.__call = L19_1
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.whitespace
  L2_2(L3_2)
  L2_2 = A0_2
  L3_2 = "^"
  L4_2 = A1_2
  L5_2 = "%s*()"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = false
    return L3_2
  end
  A0_2.pos = L2_2
  L3_2 = true
  return L3_2
end
L14_1.test = L19_1
function L19_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2.test
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.error
    L5_2 = A2_2 or L5_2
    if not A2_2 then
      L5_2 = "'"
      L6_2 = A1_2
      L7_2 = "'"
      L5_2 = L5_2 .. L6_2 .. L7_2
    end
    L6_2 = " expected"
    L5_2 = L5_2 .. L6_2
    return L3_2(L4_2, L5_2)
  end
  return A0_2
end
L14_1.expected = L19_1
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = 1
  if not A1_2 then
    A1_2 = A0_2.pos
  end
  L3_2 = A0_2.src
  L4_2 = L3_2
  L3_2 = L3_2.gmatch
  L5_2 = [[
()[^
]*()
?]]
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L6_2 <= A1_2 and L7_2 >= A1_2 then
      L8_2 = L2_2
      L9_2 = A1_2 - L6_2
      L9_2 = L9_2 + 1
      return L8_2, L9_2
    end
    L2_2 = L2_2 + 1
  end
end
L14_1.pos2loc = L19_1
function L19_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2
  L2_2 = A0_2.pos2loc
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = L3_1
  L5_2 = "%s:%d:%d: "
  L6_2 = A1_2
  L5_2 = L5_2 .. L6_2
  L6_2 = L5_2
  L5_2 = L5_2.format
  L7_2 = A0_2.name
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = ...
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  return L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
end
L14_1.error = L19_1
function L19_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if not A1_2 then
    L4_2 = A0_2
    L3_2 = A0_2.error
    L5_2 = A2_2
    return L3_2(L4_2, L5_2)
  end
  L3_2 = nil
  return L3_2
end
L14_1.opterror = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2
  L2_2 = "^%s*()(%/?)"
  L1_2, L2_2 = L1_2(L2_2)
  A0_2.pos = L1_2
  if L2_2 == "" then
    return A0_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.comment
  return L3_2(L4_2)
end
L14_1.whitespace = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2
  L2_2 = [[
^%/%/[^
]*
?()]]
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L3_2 = "^%/%*"
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2
      L3_2 = "^%/%*.-%*%/()"
      L2_2 = L2_2(L3_2)
      L1_2 = L2_2
      if not L1_2 then
        L3_2 = A0_2
        L2_2 = A0_2.error
        L4_2 = "unfinished comment"
        L2_2(L3_2, L4_2)
      end
    end
  end
  if not L1_2 then
    return A0_2
  end
  A0_2.pos = L1_2
  L3_2 = A0_2
  L2_2 = A0_2.whitespace
  return L2_2(L3_2)
end
L14_1.comment = L19_1
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.whitespace
  L2_2(L3_2)
  L2_2 = A0_2
  L3_2 = "^[%s;]*%s*()"
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L4_2 = A0_2
    L3_2 = A0_2.opterror
    L5_2 = A1_2
    L6_2 = "';' expected"
    return L3_2(L4_2, L5_2, L6_2)
  end
  A0_2.pos = L2_2
  return L2_2
end
L14_1.line_end = L19_1
function L19_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.whitespace
  L1_2(L2_2)
  L1_2 = A0_2.pos
  L2_2 = A0_2.src
  L2_2 = #L2_2
  L1_2 = L1_2 > L2_2
  return L1_2
end
L14_1.eof = L19_1
function L19_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A0_2
  L3_2 = A0_2.whitespace
  L3_2(L4_2)
  L3_2 = A0_2
  L4_2 = "^([%a_][%w_]*)%s*()"
  L3_2, L4_2 = L3_2(L4_2)
  if not L3_2 or L3_2 ~= A1_2 then
    L6_2 = A0_2
    L5_2 = A0_2.opterror
    L7_2 = A2_2
    L8_2 = "''"
    L9_2 = A1_2
    L10_2 = "\" expected"
    L8_2 = L8_2 .. L9_2 .. L10_2
    return L5_2(L6_2, L7_2, L8_2)
  end
  A0_2.pos = L4_2
  return A1_2
end
L14_1.keyword = L19_1
function L19_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A0_2
  L3_2 = A0_2.whitespace
  L3_2(L4_2)
  L3_2 = A0_2
  L4_2 = "^()([%a_][%w_]*)%s*()"
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  if not L4_2 then
    L7_2 = A0_2
    L6_2 = A0_2.opterror
    L8_2 = A2_2
    L9_2 = A1_2 or L9_2
    if not A1_2 then
      L9_2 = "name"
    end
    L10_2 = " expected"
    L9_2 = L9_2 .. L10_2
    return L6_2(L7_2, L8_2, L9_2)
  end
  A0_2.pos = L5_2
  L6_2 = L4_2
  L7_2 = L3_2
  return L6_2, L7_2
end
L14_1.ident = L19_1
function L19_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A0_2
  L3_2 = A0_2.whitespace
  L3_2(L4_2)
  L3_2 = A0_2
  L4_2 = "^()([%a_][%w_.]*)%s*()"
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  if L4_2 then
    L7_2 = L4_2
    L6_2 = L4_2.match
    L8_2 = "%.%.+"
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      goto lbl_22
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2.opterror
  L8_2 = A2_2
  L9_2 = A1_2 or L9_2
  if not A1_2 then
    L9_2 = "name"
  end
  L10_2 = " expected"
  L9_2 = L9_2 .. L10_2
  do return L6_2(L7_2, L8_2, L9_2) end
  ::lbl_22::
  A0_2.pos = L5_2
  L6_2 = L4_2
  L7_2 = L3_2
  return L6_2, L7_2
end
L14_1.full_ident = L19_1
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2
  L2_2 = A0_2.whitespace
  L2_2(L3_2)
  L2_2 = A0_2
  L3_2 = "^([+-]?)(0?)([xX]?)([0-9a-fA-F]+)%s*()"
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2(L3_2)
  L7_2 = nil
  if L3_2 == "0" and L4_2 == "" then
    L8_2 = L1_1
    L9_2 = L5_2
    L10_2 = 8
    L8_2 = L8_2(L9_2, L10_2)
    L7_2 = L8_2
  elseif L3_2 == "" and L4_2 == "" then
    L8_2 = L1_1
    L9_2 = L5_2
    L10_2 = 10
    L8_2 = L8_2(L9_2, L10_2)
    L7_2 = L8_2
  elseif L3_2 == "0" and L4_2 ~= "" then
    L8_2 = L1_1
    L9_2 = L5_2
    L10_2 = 16
    L8_2 = L8_2(L9_2, L10_2)
    L7_2 = L8_2
  end
  if not L7_2 then
    L9_2 = A0_2
    L8_2 = A0_2.opterror
    L10_2 = A1_2
    L11_2 = "integer expected"
    return L8_2(L9_2, L10_2, L11_2)
  end
  A0_2.pos = L6_2
  if L2_2 == "-" then
    L8_2 = -L7_2
    if L8_2 then
      goto lbl_50
    end
  end
  L8_2 = L7_2
  ::lbl_50::
  return L8_2
end
L14_1.integer = L19_1
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = A0_2
  L2_2 = A0_2.whitespace
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.test
  L4_2 = "nan%f[%A]"
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = 0.0 / 0.0
    return L2_2
  else
    L3_2 = A0_2
    L2_2 = A0_2.test
    L4_2 = "inf%f[%A]"
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = 1.0 / 0.0
      return L2_2
    end
  end
  L2_2 = A0_2
  L3_2 = "^([+-]?)(%.?)([0-9]+)(%.?)([0-9]*)()"
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L2_2(L3_2)
  if not L2_2 then
    L9_2 = A0_2
    L8_2 = A0_2.opterror
    L10_2 = A1_2
    L11_2 = "floating-point number expected"
    return L8_2(L9_2, L10_2, L11_2)
  end
  L8_2 = A0_2
  L9_2 = "(^[eE][+-]?[0-9]+)%s*()"
  L10_2 = L7_2
  L8_2, L9_2 = L8_2(L9_2, L10_2)
  if L3_2 == "." and L5_2 == "." then
    L11_2 = A0_2
    L10_2 = A0_2.error
    L12_2 = "malformed floating-point number"
    return L10_2(L11_2, L12_2)
  end
  L10_2 = L9_2 or L10_2
  if not L9_2 then
    L10_2 = L7_2
  end
  A0_2.pos = L10_2
  L10_2 = L1_1
  L11_2 = L3_2
  L12_2 = L4_2
  L13_2 = L5_2
  L14_2 = L6_2
  L15_2 = L8_2 or L15_2
  if not L8_2 then
    L15_2 = ""
  end
  L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
  L10_2 = L10_2(L11_2)
  if L2_2 == "-" then
    L11_2 = -L10_2
    if L11_2 then
      goto lbl_60
    end
  end
  L11_2 = L10_2
  ::lbl_60::
  return L11_2
end
L14_1.number = L19_1
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2
  L2_2 = A0_2.whitespace
  L2_2(L3_2)
  L2_2 = A0_2
  L3_2 = "^([\"'])()"
  L2_2, L3_2 = L2_2(L3_2)
  if not L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2.opterror
    L6_2 = A1_2
    L7_2 = "string expected"
    return L4_2(L5_2, L6_2, L7_2)
  end
  A0_2.pos = L3_2
  L4_2 = "()(\\?"
  L5_2 = L2_2
  L6_2 = ")%s*()"
  L4_2 = L4_2 .. L5_2 .. L6_2
  while true do
    L5_2 = A0_2
    L6_2 = L4_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    if not L5_2 then
      L8_2 = L3_2 - 1
      A0_2.pos = L8_2
      L9_2 = A0_2
      L8_2 = A0_2.error
      L10_2 = "unfinished string"
      return L8_2(L9_2, L10_2)
    end
    A0_2.pos = L7_2
    if L6_2 == L2_2 then
      L8_2 = A0_2.src
      L9_2 = L8_2
      L8_2 = L8_2.sub
      L10_2 = L3_2
      L11_2 = L5_2 - 1
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = L8_2
      L8_2 = L8_2.gsub
      L10_2 = "\\x(%x+)"
      L11_2 = L16_1
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = L8_2
      L8_2 = L8_2.gsub
      L10_2 = "\\(%d+)"
      L11_2 = L17_1
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = L8_2
      L8_2 = L8_2.gsub
      L10_2 = "\\(.)"
      L11_2 = L18_1
      return L8_2(L9_2, L10_2, L11_2)
    end
  end
end
L14_1.quote = L19_1
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2.whitespace
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.test
  L4_2 = "{"
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.opterror
    L4_2 = A1_2
    L5_2 = "opening curly brace expected"
    return L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = {}
  while true do
    L4_2 = A0_2
    L3_2 = A0_2.test
    L5_2 = "}"
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      break
    end
    L4_2 = A0_2
    L3_2 = A0_2.full_ident
    L5_2 = "field name"
    L3_2 = L3_2(L4_2, L5_2)
    L5_2 = A0_2
    L4_2 = A0_2.test
    L6_2 = ":"
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.constant
    L4_2 = L4_2(L5_2)
    L6_2 = A0_2
    L5_2 = A0_2.test
    L7_2 = ","
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2.line_end
    L7_2 = "opt"
    L5_2(L6_2, L7_2)
    L2_2[L3_2] = L4_2
  end
  return L2_2
end
L14_1.structure = L19_1
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.whitespace
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.test
  L4_2 = "%["
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.opterror
    L4_2 = A1_2
    L5_2 = "opening square bracket expected"
    return L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = {}
  while true do
    L4_2 = A0_2
    L3_2 = A0_2.test
    L5_2 = "]"
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      break
    end
    L4_2 = A0_2
    L3_2 = A0_2.constant
    L3_2 = L3_2(L4_2)
    L5_2 = A0_2
    L4_2 = A0_2.test
    L6_2 = ","
    L4_2(L5_2, L6_2)
    L4_2 = #L2_2
    L4_2 = L4_2 + 1
    L2_2[L4_2] = L3_2
  end
  return L2_2
end
L14_1.array = L19_1
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.full_ident
  L4_2 = "constant"
  L5_2 = "opt"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.number
    L4_2 = "opt"
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.quote
      L4_2 = "opt"
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.structure
        L4_2 = "opt"
        L2_2 = L2_2(L3_2, L4_2)
        if not L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2.array
          L4_2 = "opt"
          L2_2 = L2_2(L3_2, L4_2)
        end
      end
    end
  end
  if not L2_2 and not A1_2 then
    L4_2 = A0_2
    L3_2 = A0_2.error
    L5_2 = "constant expected"
    return L3_2(L4_2, L5_2)
  end
  return L2_2
end
L14_1.constant = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = nil
  L3_2 = A0_2
  L2_2 = A0_2.test
  L4_2 = "%("
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.full_ident
    L4_2 = "option name"
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
    L3_2 = A0_2
    L2_2 = A0_2.expected
    L4_2 = "%)"
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.ident
    L4_2 = "option name"
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  end
  while true do
    L3_2 = A0_2
    L2_2 = A0_2.test
    L4_2 = "%."
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2
    L3_2 = "."
    L5_2 = A0_2
    L4_2 = A0_2.ident
    L4_2 = L4_2(L5_2)
    L1_2 = L2_2 .. L3_2 .. L4_2
  end
  return L1_2
end
L14_1.option_name = L19_1
function L19_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.test
  L3_2 = "%."
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.full_ident
    L3_2 = "type name"
    L1_2, L2_2 = L1_2(L2_2, L3_2)
    L3_2 = "."
    L4_2 = L1_2
    L3_2 = L3_2 .. L4_2
    L4_2 = L2_2
    return L3_2, L4_2
  else
    L2_2 = A0_2
    L1_2 = A0_2.full_ident
    L3_2 = "type name"
    return L1_2(L2_2, L3_2)
  end
end
L14_1.type_name = L19_1
L15_1 = L12_1
L16_1 = "Parser"
L15_1 = L15_1(L16_1)
L16_1 = {}
L15_1.typemap = L16_1
L16_1 = {}
L15_1.loaded = L16_1
L16_1 = {}
L17_1 = ""
L18_1 = "."
L16_1[1] = L17_1
L16_1[2] = L18_1
L15_1.paths = L16_1
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L1_2 = {}
  L0_2.typemap = L1_2
  L1_2 = {}
  L0_2.loaded = L1_2
  L1_2 = {}
  L2_2 = ""
  L3_2 = "."
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L0_2.paths = L1_2
  L1_2 = L2_1
  L2_2 = L0_2
  L3_2 = L15_1
  return L1_2(L2_2, L3_2)
end
L15_1.new = L16_1
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.lex
  L3_2 = L2_2
  L2_2 = L2_2.error
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L15_1.error = L16_1
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L11_1
  L3_2 = A0_2.paths
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L15_1.addpath = L16_1
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = A0_2.loaded
  L2_2 = L2_2[A1_2]
  if L2_2 then
    return L2_2
  end
  L3_2 = {}
  L4_2 = L4_1
  L5_2 = A0_2.paths
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    if L8_2 ~= "" then
      L9_2 = L8_2
      L10_2 = "/"
      L11_2 = A1_2
      L9_2 = L9_2 .. L10_2 .. L11_2
      if L9_2 then
        goto lbl_20
      end
    end
    L9_2 = A1_2
    ::lbl_20::
    L10_2 = L5_1.open
    L11_2 = L9_2
    L10_2, L11_2 = L10_2(L11_2)
    if L10_2 then
      L13_2 = L10_2
      L12_2 = L10_2.read
      L14_2 = "*a"
      L12_2 = L12_2(L13_2, L14_2)
      L14_2 = A0_2
      L13_2 = A0_2.parse
      L15_2 = L12_2
      L16_2 = A1_2
      L13_2 = L13_2(L14_2, L15_2, L16_2)
      L2_2 = L13_2
      L14_2 = L10_2
      L13_2 = L10_2.close
      L13_2(L14_2)
      return L2_2
    end
    L12_2 = L11_1
    L13_2 = L3_2
    L14_2 = L11_2 or L14_2
    if not L11_2 then
      L14_2 = L9_2
      L15_2 = ": "
      L16_2 = "unknown error"
      L14_2 = L14_2 .. L15_2 .. L16_2
    end
    L12_2(L13_2, L14_2)
  end
  L4_2 = A0_2.import_fallback
  if L4_2 then
    L4_2 = A0_2.import_fallback
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L2_2 = L4_2
  end
  if not L2_2 then
    L4_2 = L3_1
    L5_2 = "module load error: "
    L6_2 = A1_2
    L7_2 = [[

	]]
    L8_2 = L6_1.concat
    L9_2 = L3_2
    L10_2 = [[

	]]
    L8_2 = L8_2(L9_2, L10_2)
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
    L4_2(L5_2)
  end
  return L2_2
end
L15_1.parsefile = L16_1
L16_1 = {}
L16_1.optional = 1
L16_1.required = 2
L16_1.repeated = 3
L17_1 = {}
L17_1.int32 = 5
L17_1.int64 = 3
L17_1.uint32 = 13
L17_1.uint64 = 4
L17_1.sint32 = 17
L17_1.sint64 = 18
L17_1.fixed32 = 7
L17_1.fixed64 = 6
L17_1.sfixed32 = 15
L17_1.sfixed64 = 16
L17_1.bool = 8
L17_1.string = 9
L18_1 = {}
L18_1.group = 10
L18_1.message = 11
L18_1.enum = 14
L19_1 = {}
L19_1.double = 1
L19_1.float = 2
L19_1.int32 = 5
L19_1.int64 = 3
L19_1.uint32 = 13
L19_1.uint64 = 4
L19_1.sint32 = 17
L19_1.sint64 = 18
L19_1.fixed32 = 7
L19_1.fixed64 = 6
L19_1.sfixed32 = 15
L19_1.sfixed64 = 16
L19_1.bool = 8
L19_1.string = 9
L19_1.bytes = 12
L19_1.group = 10
L19_1.message = 11
L19_1.enum = 14
function L20_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A2_2
  L4_2 = A2_2.match
  L6_2 = "%."
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    L4_2 = A0_2.prefix
    L5_2 = A2_2
    A2_2 = L4_2 .. L5_2
  end
  L4_2 = A0_2.typemap
  L4_2 = L4_2[A2_2]
  if L4_2 then
    L5_2 = A1_2
    L4_2 = A1_2.error
    L6_2 = "type %s already defined"
    L7_2 = A2_2
    return L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = A0_2.typemap
  L4_2[A2_2] = A3_2
end
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L19_1[A1_2]
  L3_2 = L18_1[A1_2]
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2.error
    L5_2 = "invalid type name: "
    L6_2 = A1_2
    L5_2 = L5_2 .. L6_2
    return L3_2(L4_2, L5_2)
  elseif L2_2 then
    A1_2 = nil
  end
  L3_2 = L2_2
  L4_2 = A1_2
  return L3_2, L4_2
end
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = A0_2
  L1_2 = A0_2.ident
  L3_2 = "key type"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L17_1[L1_2]
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.error
    L4_2 = "invalid key type: "
    L5_2 = L1_2
    L4_2 = L4_2 .. L5_2
    return L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.expected
  L4_2 = ","
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.type_name
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2.expected
  L5_2 = ">"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.ident
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.gsub
  L6_2 = "^%a"
  L7_2 = L0_1.upper
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = L4_2
  L4_2 = L4_2.gsub
  L6_2 = "_(%a)"
  L7_2 = L0_1.upper
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = "Entry"
  L4_2 = L4_2 .. L5_2
  L5_2 = L21_1
  L6_2 = A0_2
  L7_2 = L1_2
  L5_2, L6_2 = L5_2(L6_2, L7_2)
  L7_2 = L21_1
  L8_2 = A0_2
  L9_2 = L2_2
  L7_2, L8_2 = L7_2(L8_2, L9_2)
  L9_2 = L3_2
  L10_2 = L19_1.message
  L11_2 = L4_2
  L12_2 = {}
  L12_2.name = L4_2
  L13_2 = {}
  L14_2 = {}
  L14_2.name = "key"
  L14_2.number = 1
  L15_2 = L16_1.optional
  L14_2.label = L15_2
  L14_2.type = L5_2
  L14_2.type_name = L6_2
  L15_2 = {}
  L15_2.name = "value"
  L15_2.number = 2
  L16_2 = L16_1.optional
  L15_2.label = L16_2
  L15_2.type = L7_2
  L15_2.type_name = L8_2
  L13_2[1] = L14_2
  L13_2[2] = L15_2
  L12_2.field = L13_2
  L13_2 = {}
  L13_2.map_entry = true
  L12_2.options = L13_2
  return L9_2, L10_2, L11_2, L12_2
end
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.test
  L4_2 = "%["
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    if not A1_2 then
      L2_2 = {}
      A1_2 = L2_2
    end
    while true do
      L3_2 = A0_2
      L2_2 = A0_2.option_name
      L2_2 = L2_2(L3_2)
      L4_2 = A0_2
      L3_2 = A0_2.expected
      L5_2 = "="
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = L3_2
      L3_2 = L3_2.constant
      L3_2 = L3_2(L4_2)
      A1_2[L2_2] = L3_2
      L5_2 = A0_2
      L4_2 = A0_2.test
      L6_2 = "%]"
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 then
        return A1_2
      end
      L5_2 = A0_2
      L4_2 = A0_2.expected
      L6_2 = ","
      L4_2(L5_2, L6_2)
    end
  end
end
function L24_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil
  L6_2 = nil
  if A2_2 == "map" then
    L8_2 = A1_2
    L7_2 = A1_2.test
    L9_2 = "%<"
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = L22_1
      L8_2 = A1_2
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      L6_2 = L10_2
      L5_2 = L9_2
      L4_2 = L8_2
      L3_2 = L7_2
      L7_2 = A0_2.locmap
      L8_2 = L6_2.field
      L8_2 = L8_2[1]
      L9_2 = A1_2.pos
      L7_2[L8_2] = L9_2
      L7_2 = A0_2.locmap
      L8_2 = L6_2.field
      L8_2 = L8_2[2]
      L9_2 = A1_2.pos
      L7_2[L8_2] = L9_2
      L7_2 = L20_1
      L8_2 = A0_2
      L9_2 = A1_2
      L10_2 = L5_2
      L11_2 = L19_1.message
      L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  else
    L7_2 = L21_1
    L8_2 = A1_2
    L9_2 = A2_2
    L7_2, L8_2 = L7_2(L8_2, L9_2)
    L5_2 = L8_2
    L4_2 = L7_2
    L8_2 = A1_2
    L7_2 = A1_2.ident
    L7_2 = L7_2(L8_2)
    L3_2 = L7_2
  end
  L7_2 = {}
  L7_2.name = L3_2
  L9_2 = A1_2
  L8_2 = A1_2.expected
  L10_2 = "="
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = L8_2
  L8_2 = L8_2.integer
  L8_2 = L8_2(L9_2)
  L7_2.number = L8_2
  if A2_2 == "map" then
    L8_2 = L16_1.repeated
    if L8_2 then
      goto lbl_56
    end
  end
  L8_2 = L16_1.optional
  ::lbl_56::
  L7_2.label = L8_2
  L7_2.type = L4_2
  L7_2.type_name = L5_2
  L8_2 = L23_1
  L9_2 = A1_2
  L8_2 = L8_2(L9_2)
  if L8_2 then
    L9_2 = L9_1
    L10_2 = L8_2.default
    L9_2 = L9_2(L10_2)
    L8_2.default = nil
    L7_2.default_value = L9_2
    L9_2 = L8_2.json_name
    L8_2.json_name = nil
    L7_2.json_name = L9_2
    L9_2 = L8_2.packed
    if L9_2 then
      L9_2 = L8_2.packed
      if L9_2 == "false" then
        L8_2.packed = false
      end
    end
  end
  L7_2.options = L8_2
  L9_2 = L7_2.number
  if L9_2 <= 0 then
    L10_2 = A1_2
    L9_2 = A1_2.error
    L11_2 = "invalid tag number: "
    L12_2 = L7_2.number
    L11_2 = L11_2 .. L12_2
    L9_2(L10_2, L11_2)
  end
  L9_2 = L7_2
  L10_2 = L6_2
  return L9_2, L10_2
end
function L25_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = L16_1[A2_2]
  L4_2 = nil
  L5_2 = nil
  if not L3_2 then
    L6_2 = A0_2.syntax
    if L6_2 == "proto2" and A2_2 ~= "map" then
      L7_2 = A1_2
      L6_2 = A1_2.error
      L8_2 = "proto2 disallow missing label"
      return L6_2(L7_2, L8_2)
    end
    L6_2 = L24_1
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = A2_2
    return L6_2(L7_2, L8_2, L9_2)
  end
  L6_2 = L16_1.optional
  if L3_2 == L6_2 then
    L6_2 = A0_2.syntax
    if L6_2 == "proto3" then
      L7_2 = A1_2
      L6_2 = A1_2.error
      L8_2 = "proto3 disallow 'optional' label"
      return L6_2(L7_2, L8_2)
    end
  end
  L6_2 = L24_1
  L7_2 = A0_2
  L8_2 = A1_2
  L10_2 = A1_2
  L9_2 = A1_2.type_name
  L9_2, L10_2 = L9_2(L10_2)
  L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L5_2 = L7_2
  L4_2 = L6_2
  L4_2.label = L3_2
  L6_2 = L4_2
  L7_2 = L5_2
  return L6_2, L7_2
end
L26_1 = {}
function L27_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A1_2
  L3_2 = A1_2.full_ident
  L5_2 = "package name"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A1_2
  L4_2 = A1_2.line_end
  L4_2(L5_2)
  A2_2.package = L3_2
  L4_2 = "."
  L5_2 = L3_2
  L6_2 = "."
  L4_2 = L4_2 .. L5_2 .. L6_2
  A0_2.prefix = L4_2
  return A0_2
end
L26_1.package = L27_1
function L27_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A1_2
  L3_2 = A1_2.ident
  L5_2 = "\"weak\" or \"public\""
  L6_2 = "opt"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    L3_2 = "public"
  end
  if L3_2 ~= "weak" and L3_2 ~= "public" then
    L5_2 = A1_2
    L4_2 = A1_2.error
    L6_2 = "\"weak or \"public\" expected"
    return L4_2(L5_2, L6_2)
  end
  L5_2 = A1_2
  L4_2 = A1_2.quote
  L4_2 = L4_2(L5_2)
  L6_2 = A1_2
  L5_2 = A1_2.line_end
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2.parsefile
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = A0_2.on_import
  if L6_2 then
    L6_2 = A0_2.on_import
    L7_2 = L5_2
    L6_2(L7_2)
  end
  L6_2 = L13_1
  L7_2 = A2_2
  L8_2 = "dependency"
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = #L6_2
  L8_2 = L7_2 + 1
  L6_2[L8_2] = L4_2
  if L3_2 == "public" then
    L8_2 = L13_1
    L9_2 = A2_2
    L10_2 = "public_dependency"
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L11_1
    L10_2 = L8_2
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
  else
    L8_2 = L13_1
    L9_2 = A2_2
    L10_2 = "weak_dependency"
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L11_1
    L10_2 = L8_2
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
  end
end
L26_1.import = L27_1
L27_1 = {}
function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L13_1
  L4_2 = A2_2
  L5_2 = "nested_type"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L11_1
  L5_2 = L3_2
  L6_2 = L26_1.message
  L7_2 = A0_2
  L8_2 = A1_2
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
  return A0_2
end
L27_1.message = L28_1
function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L13_1
  L4_2 = A2_2
  L5_2 = "enum_type"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L11_1
  L5_2 = L3_2
  L6_2 = L26_1.enum
  L7_2 = A0_2
  L8_2 = A1_2
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L4_2(L5_2, L6_2, L7_2, L8_2)
  return A0_2
end
L27_1.enum = L28_1
function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = L13_1
  L4_2 = A2_2
  L5_2 = "extension"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L13_1
  L5_2 = A2_2
  L6_2 = "nested_type"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L26_1.extend
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = {}
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2)
  L7_2 = L4_1
  L8_2 = L5_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L11_1
    L13_2 = L3_2
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
  end
  L7_2 = L4_1
  L8_2 = L6_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L11_1
    L13_2 = L4_2
    L14_2 = L11_2
    L12_2(L13_2, L14_2)
  end
  return A0_2
end
L27_1.extend = L28_1
function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = L13_1
  L4_2 = A2_2
  L5_2 = "extension_range"
  L3_2 = L3_2(L4_2, L5_2)
  repeat
    L5_2 = A1_2
    L4_2 = A1_2.integer
    L6_2 = "field number range"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L7_1.floor
    L6_2 = 5.36870912E8
    L5_2 = L5_2(L6_2)
    L7_2 = A1_2
    L6_2 = A1_2.keyword
    L8_2 = "to"
    L6_2(L7_2, L8_2)
    L7_2 = A1_2
    L6_2 = A1_2.keyword
    L8_2 = "max"
    L9_2 = "opt"
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if not L6_2 then
      L7_2 = A1_2
      L6_2 = A1_2.integer
      L8_2 = "field number range end or 'max'"
      L6_2 = L6_2(L7_2, L8_2)
      L5_2 = L6_2
    end
    L6_2 = L11_1
    L7_2 = L3_2
    L8_2 = {}
    L8_2.start = L4_2
    L8_2["end"] = L5_2
    L6_2(L7_2, L8_2)
    L7_2 = A1_2
    L6_2 = A1_2.test
    L8_2 = ","
    L6_2 = L6_2(L7_2, L8_2)
  until not L6_2
  L5_2 = A1_2
  L4_2 = A1_2.line_end
  L4_2(L5_2)
  return A0_2
end
L27_1.extensions = L28_1
function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.whitespace
  L3_2(L4_2)
  L3_2 = A1_2
  L4_2 = "^%d"
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = L13_1
    L4_2 = A2_2
    L5_2 = "reserved_name"
    L3_2 = L3_2(L4_2, L5_2)
    repeat
      L4_2 = L11_1
      L5_2 = L3_2
      L7_2 = A1_2
      L6_2 = A1_2.quote
      L6_2 = L6_2(L7_2)
      L4_2(L5_2, L6_2)
      L5_2 = A1_2
      L4_2 = A1_2.test
      L6_2 = ","
      L4_2 = L4_2(L5_2, L6_2)
    until not L4_2
  else
    L3_2 = L13_1
    L4_2 = A2_2
    L5_2 = "reserved_range"
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = true
    repeat
      L6_2 = A1_2
      L5_2 = A1_2.integer
      if L4_2 then
        L7_2 = "field name or number range"
        if L7_2 then
          goto lbl_35
        end
      end
      L7_2 = "field number range"
      ::lbl_35::
      L5_2 = L5_2(L6_2, L7_2)
      L7_2 = A1_2
      L6_2 = A1_2.keyword
      L8_2 = "to"
      L9_2 = "opt"
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      if L6_2 then
        L7_2 = A1_2
        L6_2 = A1_2.integer
        L8_2 = "field number range end"
        L6_2 = L6_2(L7_2, L8_2)
        L7_2 = L11_1
        L8_2 = L3_2
        L9_2 = {}
        L9_2.start = L5_2
        L9_2["end"] = L6_2
        L7_2(L8_2, L9_2)
      else
        L6_2 = L11_1
        L7_2 = L3_2
        L8_2 = {}
        L8_2.start = L5_2
        L8_2["end"] = L5_2
        L6_2(L7_2, L8_2)
      end
      L4_2 = false
      L7_2 = A1_2
      L6_2 = A1_2.test
      L8_2 = ","
      L6_2 = L6_2(L7_2, L8_2)
    until not L6_2
  end
  L4_2 = A1_2
  L3_2 = A1_2.line_end
  L3_2(L4_2)
  return A0_2
end
L27_1.reserved = L28_1
function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = L13_1
  L4_2 = A2_2
  L5_2 = "field"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L13_1
  L5_2 = A2_2
  L6_2 = "nested_type"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L13_1
  L6_2 = A2_2
  L7_2 = "oneof_decl"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = #L5_2
  L6_2 = L6_2 + 1
  L7_2 = {}
  L9_2 = A1_2
  L8_2 = A1_2.ident
  L8_2 = L8_2(L9_2)
  L7_2.name = L8_2
  L9_2 = A1_2
  L8_2 = A1_2.expected
  L10_2 = "{"
  L8_2(L9_2, L10_2)
  while true do
    L9_2 = A1_2
    L8_2 = A1_2.test
    L10_2 = "}"
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      break
    end
    L9_2 = A1_2
    L8_2 = A1_2.type_name
    L8_2 = L8_2(L9_2)
    if L8_2 == "option" then
      L9_2 = L26_1.option
      L10_2 = A0_2
      L11_2 = A1_2
      L12_2 = L7_2
      L9_2(L10_2, L11_2, L12_2)
    else
      L9_2 = L24_1
      L10_2 = A0_2
      L11_2 = A1_2
      L12_2 = L8_2
      L13_2 = "no_label"
      L9_2, L10_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      L11_2 = A0_2.locmap
      L12_2 = A1_2.pos
      L11_2[L9_2] = L12_2
      if L10_2 then
        L11_2 = L11_1
        L12_2 = L4_2
        L13_2 = L10_2
        L11_2(L12_2, L13_2)
      end
      L11_2 = L6_2 - 1
      L9_2.oneof_index = L11_2
      L11_2 = L11_1
      L12_2 = L3_2
      L13_2 = L9_2
      L11_2(L12_2, L13_2)
    end
    L10_2 = A1_2
    L9_2 = A1_2.line_end
    L11_2 = "opt"
    L9_2(L10_2, L11_2)
  end
  L5_2[L6_2] = L7_2
end
L27_1.oneof = L28_1
function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L26_1.option
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = L13_1
  L7_2 = A2_2
  L8_2 = "options"
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L27_1.option = L28_1
function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = A1_2
  L3_2 = A1_2.ident
  L5_2 = "message name"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = {}
  L4_2.name = L3_2
  L5_2 = L20_1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = L3_2
  L9_2 = L19_1.message
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = A0_2.prefix
  L6_2 = L5_2
  L7_2 = L3_2
  L8_2 = "."
  L6_2 = L6_2 .. L7_2 .. L8_2
  A0_2.prefix = L6_2
  L7_2 = A1_2
  L6_2 = A1_2.expected
  L8_2 = "{"
  L6_2(L7_2, L8_2)
  while true do
    L7_2 = A1_2
    L6_2 = A1_2.test
    L8_2 = "}"
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      break
    end
    L7_2 = A1_2
    L6_2 = A1_2.type_name
    L6_2, L7_2 = L6_2(L7_2)
    L8_2 = L27_1[L6_2]
    if L8_2 then
      L9_2 = L8_2
      L10_2 = A0_2
      L11_2 = A1_2
      L12_2 = L4_2
      L9_2(L10_2, L11_2, L12_2)
    else
      L9_2 = L13_1
      L10_2 = L4_2
      L11_2 = "field"
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = L25_1
      L11_2 = A0_2
      L12_2 = A1_2
      L13_2 = L6_2
      L10_2, L11_2 = L10_2(L11_2, L12_2, L13_2)
      L12_2 = A0_2.locmap
      L12_2[L10_2] = L7_2
      L12_2 = L11_1
      L13_2 = L9_2
      L14_2 = L10_2
      L12_2(L13_2, L14_2)
      if L11_2 then
        L12_2 = L13_1
        L13_2 = L4_2
        L14_2 = "nested_type"
        L12_2 = L12_2(L13_2, L14_2)
        L13_2 = L11_1
        L14_2 = L12_2
        L15_2 = L11_2
        L13_2(L14_2, L15_2)
      end
    end
    L10_2 = A1_2
    L9_2 = A1_2.line_end
    L11_2 = "opt"
    L9_2(L10_2, L11_2)
  end
  L7_2 = A1_2
  L6_2 = A1_2.line_end
  L8_2 = "opt"
  L6_2(L7_2, L8_2)
  if A2_2 then
    L6_2 = L13_1
    L7_2 = A2_2
    L8_2 = "message_type"
    L6_2 = L6_2(L7_2, L8_2)
    A2_2 = L6_2
    L6_2 = L11_1
    L7_2 = A2_2
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
  A0_2.prefix = L5_2
  return L4_2
end
L26_1.message = L28_1
function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2
  L3_2 = A1_2.ident
  L5_2 = "enum name"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = {}
  L4_2.name = L3_2
  L5_2 = L20_1
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = L3_2
  L9_2 = L19_1.enum
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = A1_2
  L5_2 = A1_2.expected
  L7_2 = "{"
  L5_2(L6_2, L7_2)
  while true do
    L6_2 = A1_2
    L5_2 = A1_2.test
    L7_2 = "}"
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      break
    end
    L6_2 = A1_2
    L5_2 = A1_2.ident
    L7_2 = "enum constant name"
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 == "option" then
      L6_2 = L26_1.option
      L7_2 = A0_2
      L8_2 = A1_2
      L9_2 = L13_1
      L10_2 = L4_2
      L11_2 = "options"
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2)
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    else
      L6_2 = L13_1
      L7_2 = L4_2
      L8_2 = "value"
      L6_2 = L6_2(L7_2, L8_2)
      L8_2 = A1_2
      L7_2 = A1_2.expected
      L9_2 = "="
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = L7_2
      L7_2 = L7_2.integer
      L7_2 = L7_2(L8_2)
      L9_2 = A1_2
      L8_2 = A1_2.line_end
      L8_2(L9_2)
      L8_2 = L11_1
      L9_2 = L6_2
      L10_2 = {}
      L10_2.name = L5_2
      L10_2.number = L7_2
      L11_2 = L23_1
      L12_2 = A1_2
      L11_2 = L11_2(L12_2)
      L10_2.options = L11_2
      L8_2(L9_2, L10_2)
    end
    L7_2 = A1_2
    L6_2 = A1_2.line_end
    L8_2 = "opt"
    L6_2(L7_2, L8_2)
  end
  L6_2 = A1_2
  L5_2 = A1_2.line_end
  L7_2 = "opt"
  L5_2(L6_2, L7_2)
  if A2_2 then
    L5_2 = L13_1
    L6_2 = A2_2
    L7_2 = "enum_type"
    L5_2 = L5_2(L6_2, L7_2)
    A2_2 = L5_2
    L5_2 = L11_1
    L6_2 = A2_2
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  return L4_2
end
L26_1.enum = L28_1
function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A1_2
  L3_2 = A1_2.option_name
  L3_2 = L3_2(L4_2)
  L5_2 = A1_2
  L4_2 = A1_2.expected
  L6_2 = "="
  L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L4_2 = A1_2.constant
  L4_2 = L4_2(L5_2)
  L6_2 = A1_2
  L5_2 = A1_2.line_end
  L5_2(L6_2)
  if A2_2 then
    L5_2 = L13_1
    L6_2 = A2_2
    L7_2 = "options"
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      goto lbl_19
    end
  end
  L5_2 = {}
  ::lbl_19::
  L5_2[L3_2] = L4_2
  L6_2 = L5_2
  L7_2 = A0_2
  return L6_2, L7_2
end
L26_1.option = L28_1
function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2
  L3_2 = A1_2.type_name
  L3_2 = L3_2(L4_2)
  if A2_2 then
    L4_2 = L13_1
    L5_2 = A2_2
    L6_2 = "extension"
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      goto lbl_12
    end
  end
  L4_2 = {}
  ::lbl_12::
  if A2_2 then
    L5_2 = L13_1
    L6_2 = A2_2
    L7_2 = "message_type"
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      goto lbl_21
    end
  end
  L5_2 = {}
  ::lbl_21::
  L7_2 = A1_2
  L6_2 = A1_2.expected
  L8_2 = "{"
  L6_2(L7_2, L8_2)
  while true do
    L7_2 = A1_2
    L6_2 = A1_2.test
    L8_2 = "}"
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      break
    end
    L7_2 = A1_2
    L6_2 = A1_2.type_name
    L6_2, L7_2 = L6_2(L7_2)
    L8_2 = L25_1
    L9_2 = A0_2
    L10_2 = A1_2
    L11_2 = L6_2
    L8_2, L9_2 = L8_2(L9_2, L10_2, L11_2)
    L10_2 = A0_2.locmap
    L10_2[L8_2] = L7_2
    L8_2.extendee = L3_2
    L10_2 = L11_1
    L11_2 = L4_2
    L12_2 = L8_2
    L10_2(L11_2, L12_2)
    L10_2 = L11_1
    L11_2 = L5_2
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
    L11_2 = A1_2
    L10_2 = A1_2.line_end
    L12_2 = "opt"
    L10_2(L11_2, L12_2)
  end
  L6_2 = L4_2
  L7_2 = L5_2
  return L6_2, L7_2
end
L26_1.extend = L28_1
L28_1 = {}
function L29_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A1_2
  L3_2 = A1_2.ident
  L5_2 = "rpc name"
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  L5_2 = {}
  L5_2.name = L3_2
  L6_2 = A0_2.locmap
  L6_2[L5_2] = L4_2
  L6_2 = nil
  L7_2 = nil
  L9_2 = A1_2
  L8_2 = A1_2.expected
  L10_2 = "%("
  L8_2(L9_2, L10_2)
  L9_2 = A1_2
  L8_2 = A1_2.keyword
  L10_2 = "stream"
  L11_2 = "opt"
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L5_2.client_streaming = L8_2
  L8_2 = L21_1
  L9_2 = A1_2
  L11_2 = A1_2
  L10_2 = A1_2.type_name
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  L8_2, L9_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = L9_2
  L6_2 = L8_2
  if not L7_2 then
    L9_2 = A1_2
    L8_2 = A1_2.error
    L10_2 = "rpc input type must by message"
    return L8_2(L9_2, L10_2)
  end
  L5_2.input_type = L7_2
  L9_2 = A1_2
  L8_2 = A1_2.expected
  L10_2 = "%)"
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = L8_2
  L8_2 = L8_2.expected
  L10_2 = "returns"
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = L8_2
  L8_2 = L8_2.expected
  L10_2 = "%("
  L8_2(L9_2, L10_2)
  L9_2 = A1_2
  L8_2 = A1_2.keyword
  L10_2 = "stream"
  L11_2 = "opt"
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L5_2.server_streaming = L8_2
  L8_2 = L21_1
  L9_2 = A1_2
  L11_2 = A1_2
  L10_2 = A1_2.type_name
  L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
  L8_2, L9_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = L9_2
  L6_2 = L8_2
  if not L7_2 then
    L9_2 = A1_2
    L8_2 = A1_2.error
    L10_2 = "rpc output type must by message"
    return L8_2(L9_2, L10_2)
  end
  L5_2.output_type = L7_2
  L9_2 = A1_2
  L8_2 = A1_2.expected
  L10_2 = "%)"
  L8_2(L9_2, L10_2)
  L9_2 = A1_2
  L8_2 = A1_2.test
  L10_2 = "{"
  L8_2 = L8_2(L9_2, L10_2)
  if L8_2 then
    while true do
      L9_2 = A1_2
      L8_2 = A1_2.test
      L10_2 = "}"
      L8_2 = L8_2(L9_2, L10_2)
      if L8_2 then
        break
      end
      L9_2 = A1_2
      L8_2 = A1_2.line_end
      L10_2 = "opt"
      L8_2(L9_2, L10_2)
      L9_2 = A1_2
      L8_2 = A1_2.keyword
      L10_2 = "option"
      L8_2(L9_2, L10_2)
      L8_2 = L26_1.option
      L9_2 = A0_2
      L10_2 = A1_2
      L11_2 = L13_1
      L12_2 = L5_2
      L13_2 = "options"
      L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    end
  end
  L9_2 = A1_2
  L8_2 = A1_2.line_end
  L10_2 = "opt"
  L8_2(L9_2, L10_2)
  L8_2 = L13_1
  L9_2 = A2_2
  L10_2 = "method"
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = L11_1
  L10_2 = L8_2
  L11_2 = L5_2
  L9_2(L10_2, L11_2)
end
L28_1.rpc = L29_1
function L29_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L26_1.option
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = L13_1
  L7_2 = A2_2
  L8_2 = "options"
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L28_1.option = L29_1
function L29_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A1_2
  L2_2 = A1_2.error
  L4_2 = "stream not implement yet"
  L2_2(L3_2, L4_2)
end
L28_1.stream = L29_1
function L29_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.ident
  L5_2 = "service name"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = {}
  L4_2.name = L3_2
  L6_2 = A1_2
  L5_2 = A1_2.expected
  L7_2 = "{"
  L5_2(L6_2, L7_2)
  while true do
    L6_2 = A1_2
    L5_2 = A1_2.test
    L7_2 = "}"
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      break
    end
    L6_2 = A1_2
    L5_2 = A1_2.type_name
    L5_2 = L5_2(L6_2)
    L6_2 = L28_1[L5_2]
    if L6_2 then
      L7_2 = L6_2
      L8_2 = A0_2
      L9_2 = A1_2
      L10_2 = L4_2
      L7_2(L8_2, L9_2, L10_2)
    else
      L8_2 = A1_2
      L7_2 = A1_2.error
      L9_2 = "expected 'rpc' or 'option' in service body"
      return L7_2(L8_2, L9_2)
    end
    L8_2 = A1_2
    L7_2 = A1_2.line_end
    L9_2 = "opt"
    L7_2(L8_2, L9_2)
  end
  L6_2 = A1_2
  L5_2 = A1_2.line_end
  L7_2 = "opt"
  L5_2(L6_2, L7_2)
  if A2_2 then
    L5_2 = L13_1
    L6_2 = A2_2
    L7_2 = "service"
    L5_2 = L5_2(L6_2, L7_2)
    A2_2 = L5_2
    L5_2 = L11_1
    L6_2 = A2_2
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
  return L4_2
end
L26_1.service = L29_1
function L27_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L2_2.syntax = "proto2"
  L3_2 = {}
  L2_2.locmap = L3_2
  L2_2.prefix = "."
  L2_2.lex = A1_2
  L2_2.parser = A0_2
  L3_2 = A0_2.loaded
  L2_2.loaded = L3_2
  L3_2 = A0_2.typemap
  L2_2.typemap = L3_2
  L3_2 = A0_2.paths
  L2_2.paths = L3_2
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2.unknown_import
    if L1_3 == true then
      L1_3 = true
      return L1_3
    else
      L1_3 = L10_1
      L2_3 = A0_2.unknown_import
      L1_3 = L1_3(L2_3)
      if L1_3 == "string" then
        L2_3 = A0_3
        L1_3 = A0_3.match
        L3_3 = A0_2.unknown_import
        L1_3 = L1_3(L2_3, L3_3)
        if L1_3 then
          L1_3 = true
          if L1_3 then
            goto lbl_21
          end
        end
        L1_3 = nil
        ::lbl_21::
        return L1_3
      else
        L1_3 = A0_2.unknown_import
        if L1_3 then
          L1_3 = A0_2
          L2_3 = L1_3
          L1_3 = L1_3.unknown_import
          L3_3 = A0_3
          return L1_3(L2_3, L3_3)
        end
      end
    end
  end
  L2_2.import_fallback = L3_2
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2.unknown_type
    if L1_3 == true then
      L1_3 = true
      return L1_3
    else
      L1_3 = L10_1
      L2_3 = A0_2.unknown_type
      L1_3 = L1_3(L2_3)
      if L1_3 == "string" then
        L2_3 = A0_3
        L1_3 = A0_3.match
        L3_3 = A0_2.unknown_type
        L1_3 = L1_3(L2_3, L3_3)
        if L1_3 then
          L1_3 = true
        end
        return L1_3
      else
        L1_3 = A0_2.unknown_type
        if L1_3 then
          L1_3 = A0_2
          L2_3 = L1_3
          L1_3 = L1_3.unknown_type
          L3_3 = A0_3
          return L1_3(L2_3, L3_3)
        end
      end
    end
  end
  L2_2.type_fallback = L3_2
  function L3_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2.on_import
    if L1_3 then
      L1_3 = A0_2.on_import
      L2_3 = A0_3
      return L1_3(L2_3)
    end
  end
  L2_2.on_import = L3_2
  L3_2 = L2_1
  L4_2 = L2_2
  L5_2 = L15_1
  return L3_2(L4_2, L5_2)
end
function L28_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = A0_2.loaded
  L3_2 = L3_2[A2_2]
  if L3_2 then
    if L3_2 == true then
      L4_2 = L3_1
      L5_2 = "loop loaded: "
      L6_2 = A2_2
      L5_2 = L5_2 .. L6_2
      L4_2(L5_2)
    end
    return L3_2
  end
  if not A2_2 then
    A2_2 = "<input>"
  end
  L4_2 = A0_2.loaded
  L4_2[A2_2] = true
  L4_2 = L14_1.new
  L5_2 = A2_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L27_1
  L6_2 = A0_2
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = {}
  L7_2 = L4_2.name
  L6_2.name = L7_2
  L7_2 = L5_2.syntax
  L6_2.syntax = L7_2
  L8_2 = L4_2
  L7_2 = L4_2.keyword
  L9_2 = "syntax"
  L10_2 = "opt"
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  if L7_2 then
    L9_2 = L4_2
    L8_2 = L4_2.expected
    L10_2 = "="
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L8_2
    L8_2 = L8_2.quote
    L8_2 = L8_2(L9_2)
    L6_2.syntax = L8_2
    L8_2 = L6_2.syntax
    L5_2.syntax = L8_2
    L9_2 = L4_2
    L8_2 = L4_2.line_end
    L8_2(L9_2)
  end
  while true do
    L9_2 = L4_2
    L8_2 = L4_2.eof
    L8_2 = L8_2(L9_2)
    if L8_2 then
      break
    end
    L9_2 = L4_2
    L8_2 = L4_2.ident
    L8_2 = L8_2(L9_2)
    L9_2 = L26_1[L8_2]
    if L9_2 then
      L10_2 = L9_2
      L11_2 = L5_2
      L12_2 = L4_2
      L13_2 = L6_2
      L10_2(L11_2, L12_2, L13_2)
    else
      L11_2 = L4_2
      L10_2 = L4_2.error
      L12_2 = "unknown keyword '"
      L13_2 = L8_2
      L14_2 = "'"
      L12_2 = L12_2 .. L13_2 .. L14_2
      L10_2(L11_2, L12_2)
    end
    L11_2 = L4_2
    L10_2 = L4_2.line_end
    L12_2 = "opt"
    L10_2(L11_2, L12_2)
  end
  L8_2 = A0_2.loaded
  L9_2 = L6_2 or L9_2
  if A2_2 == "<input>" or not L6_2 then
    L9_2 = nil
  end
  L8_2[A2_2] = L9_2
  L9_2 = L5_2
  L8_2 = L5_2.resolve
  L10_2 = L4_2
  L11_2 = L6_2
  return L8_2(L9_2, L10_2, L11_2)
end
L15_1.parse = L28_1
function L28_1()
  local L0_2, L1_2
end
function L29_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2[A1_2]
  if L2_2 then
    L3_2 = L4_1
    L4_2 = L2_2
    return L3_2(L4_2)
  end
  L3_2 = L28_1
  return L3_2
end
function L30_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L6_2 = A5_2[A4_2]
  L6_2 = A3_2[L6_2]
  if L6_2 then
    L8_2 = A1_2
    L7_2 = A1_2.pos2loc
    L9_2 = A0_2.locmap
    L9_2 = L9_2[L6_2]
    L7_2, L8_2 = L7_2(L8_2, L9_2)
    L10_2 = A1_2
    L9_2 = A1_2.error
    L11_2 = "%s '%s' exists, previous at %d:%d"
    L12_2 = A2_2
    L13_2 = A5_2[A4_2]
    L14_2 = L7_2
    L15_2 = L8_2
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  end
  L7_2 = A5_2[A4_2]
  A3_2[L7_2] = A5_2
end
function L31_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = A2_2
  L3_2 = A2_2.match
  L5_2 = "^%."
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L3_2 = A0_2.typemap
    L3_2 = L3_2[A2_2]
    if not L3_2 then
      L5_2 = A1_2
      L4_2 = A1_2.error
      L6_2 = "unknown type '%s'"
      L7_2 = A2_2
      return L4_2(L5_2, L6_2, L7_2)
    end
    L4_2 = L3_2
    L5_2 = A2_2
    return L4_2, L5_2
  end
  L3_2 = A0_2.prefix
  L4_2 = #L3_2
  L4_2 = L4_2 + 1
  L5_2 = 1
  L6_2 = -1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L3_2[L7_2] = A2_2
    L9_2 = L6_1.concat
    L10_2 = L3_2
    L11_2 = "."
    L12_2 = 1
    L13_2 = L7_2
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L3_2[L7_2] = L8_2
    L10_2 = A0_2.typemap
    L10_2 = L10_2[L9_2]
    if L10_2 then
      L11_2 = L10_2
      L12_2 = L9_2
      return L11_2, L12_2
    end
  end
  L4_2 = nil
  L5_2 = nil
  L6_2 = A0_2.type_fallback
  if L6_2 then
    L6_2 = A0_2.type_fallback
    L7_2 = A2_2
    L6_2, L7_2 = L6_2(L7_2)
    L5_2 = L7_2
    L4_2 = L6_2
  end
  if L4_2 then
    L6_2 = L5_2 or L6_2
    if not L5_2 then
      L6_2 = "message"
    end
    L5_2 = L19_1[L6_2]
    if L4_2 == true then
      L6_2 = "."
      L7_2 = A2_2
      L4_2 = L6_2 .. L7_2
    end
    L6_2 = L5_2
    L7_2 = L4_2
    return L6_2, L7_2
  end
  L7_2 = A1_2
  L6_2 = A1_2.error
  L8_2 = "unknown type '%s'"
  L9_2 = A2_2
  return L6_2(L7_2, L8_2, L9_2)
end
function L32_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A2_2.extendee
  if L3_2 then
    L3_2 = L31_1
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = A2_2.extendee
    L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
    L5_2 = L19_1.message
    if L3_2 ~= L5_2 then
      L6_2 = A1_2
      L5_2 = A1_2.error
      L7_2 = "message type expected in extension"
      L5_2(L6_2, L7_2)
    end
    A2_2.extendee = L4_2
  end
  L3_2 = A2_2.type_name
  if L3_2 then
    L3_2 = L31_1
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = A2_2.type_name
    L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2)
    A2_2.type = L3_2
    A2_2.type_name = L4_2
  end
end
function L33_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = {}
  L4_2 = {}
  L5_2 = L29_1
  L6_2 = A2_2
  L7_2 = "value"
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = A0_2.locmap
    L10_2 = L10_2[L9_2]
    A1_2.pos = L10_2
    L10_2 = L30_1
    L11_2 = A0_2
    L12_2 = A1_2
    L13_2 = "enum name"
    L14_2 = L3_2
    L15_2 = "name"
    L16_2 = L9_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L10_2 = A2_2.options
    if L10_2 then
      L10_2 = A2_2.options
      L10_2 = L10_2.options
      if L10_2 then
        L10_2 = A2_2.options
        L10_2 = L10_2.options
        L10_2 = L10_2.allow_alias
        if L10_2 then
          goto lbl_39
        end
      end
    end
    L10_2 = L30_1
    L11_2 = A0_2
    L12_2 = A1_2
    L13_2 = "enum number"
    L14_2 = L4_2
    L15_2 = "number"
    L16_2 = L9_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    ::lbl_39::
  end
end
function L34_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = L11_1
  L4_2 = A0_2.prefix
  L5_2 = A2_2.name
  L3_2(L4_2, L5_2)
  L3_2 = {}
  L4_2 = {}
  L5_2 = L29_1
  L6_2 = A2_2
  L7_2 = "field"
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L8_1
    L11_2 = A0_2.locmap
    L11_2 = L11_2[L9_2]
    L10_2 = L10_2(L11_2)
    A1_2.pos = L10_2
    L10_2 = L30_1
    L11_2 = A0_2
    L12_2 = A1_2
    L13_2 = "field name"
    L14_2 = L3_2
    L15_2 = "name"
    L16_2 = L9_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L10_2 = L30_1
    L11_2 = A0_2
    L12_2 = A1_2
    L13_2 = "field number"
    L14_2 = L4_2
    L15_2 = "number"
    L16_2 = L9_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L10_2 = L32_1
    L11_2 = A0_2
    L12_2 = A1_2
    L13_2 = L9_2
    L10_2(L11_2, L12_2, L13_2)
  end
  L5_2 = L29_1
  L6_2 = A2_2
  L7_2 = "nested_type"
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L34_1
    L11_2 = A0_2
    L12_2 = A1_2
    L13_2 = L9_2
    L10_2(L11_2, L12_2, L13_2)
  end
  L5_2 = L29_1
  L6_2 = A2_2
  L7_2 = "extension"
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L8_1
    L11_2 = A0_2.locmap
    L11_2 = L11_2[L9_2]
    L10_2 = L10_2(L11_2)
    A1_2.pos = L10_2
    L10_2 = L32_1
    L11_2 = A0_2
    L12_2 = A1_2
    L13_2 = L9_2
    L10_2(L11_2, L12_2, L13_2)
  end
  L5_2 = A0_2.prefix
  L6_2 = A0_2.prefix
  L6_2 = #L6_2
  L5_2[L6_2] = nil
end
function L35_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = {}
  L4_2 = L29_1
  L5_2 = A2_2
  L6_2 = "method"
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2.locmap
    L9_2 = L9_2[L8_2]
    A1_2.pos = L9_2
    L9_2 = L30_1
    L10_2 = A0_2
    L11_2 = A1_2
    L12_2 = "rpc name"
    L13_2 = L3_2
    L14_2 = "name"
    L15_2 = L8_2
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    L9_2 = L31_1
    L10_2 = A0_2
    L11_2 = A1_2
    L12_2 = L8_2.input_type
    L9_2, L10_2 = L9_2(L10_2, L11_2, L12_2)
    L8_2.input_type = L10_2
    L11_2 = L19_1.message
    if L9_2 ~= L11_2 then
      L12_2 = A1_2
      L11_2 = A1_2.error
      L13_2 = "message type expected in parameter"
      L11_2(L12_2, L13_2)
    end
    L11_2 = L31_1
    L12_2 = A0_2
    L13_2 = A1_2
    L14_2 = L8_2.output_type
    L11_2, L12_2 = L11_2(L12_2, L13_2, L14_2)
    L10_2 = L12_2
    L9_2 = L11_2
    L8_2.output_type = L10_2
    L11_2 = L19_1.message
    if L9_2 ~= L11_2 then
      L12_2 = A1_2
      L11_2 = A1_2.error
      L13_2 = "message type expected in return"
      L11_2(L12_2, L13_2)
    end
  end
end
function L36_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = {}
  L4_2 = ""
  L5_2 = A2_2.package
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  A0_2.prefix = L3_2
  L3_2 = L29_1
  L4_2 = A2_2
  L5_2 = "message_type"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L34_1
    L9_2 = A0_2
    L10_2 = A1_2
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
  end
  L3_2 = L29_1
  L4_2 = A2_2
  L5_2 = "enum_type"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L33_1
    L9_2 = A0_2
    L10_2 = A1_2
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
  end
  L3_2 = L29_1
  L4_2 = A2_2
  L5_2 = "service"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L35_1
    L9_2 = A0_2
    L10_2 = A1_2
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
  end
  L3_2 = L29_1
  L4_2 = A2_2
  L5_2 = "extension"
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L8_1
    L9_2 = A0_2.locmap
    L9_2 = L9_2[L7_2]
    L8_2 = L8_2(L9_2)
    A1_2.pos = L8_2
    L8_2 = L32_1
    L9_2 = A0_2
    L10_2 = A1_2
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
  end
  A0_2.prefix = nil
  return A2_2
end
L15_1.resolve = L36_1
L16_1 = pcall
L17_1 = require
L18_1 = "pb"
L16_1, L17_1 = L16_1(L17_1, L18_1)
if L16_1 then
  L18_1 = "\n\249#\n\016descriptor.proto\018\015google.protobuf\"G\n\017FileDescript"
  L19_1 = "orSet\0182\n\004file\024\001 \003(\v2$.google.protobuf.FileDescriptorProto\""
  L20_1 = "\219\003\n\019FileDescriptorProto\018\f\n\004name\024\001 \001(\t\018\015\n\apack"
  L21_1 = "age\024\002 \001(\t\018\018\n\ndependency\024\003 \003(\t\018\025\n\017public_depend"
  L22_1 = "ency\024\n \003(\005\018\023\n\015weak_dependency\024\v \003(\005\0186\n\fmessag"
  L23_1 = "e_type\024\004 \003(\v2 .google.protobuf.DescriptorProto\0187\n\tenum_type"
  L24_1 = "\024\005 \003(\v2$.google.protobuf.EnumDescriptorProto\0188\n\aservice\024"
  L25_1 = "\006 \003(\v2'.google.protobuf.ServiceDescriptorProto\0188\n\textension"
  L26_1 = "\024\a \003(\v2%.google.protobuf.FieldDescriptorProto\018-\n\aoptions\024"
  L27_1 = "\b \001(\v2\028.google.protobuf.FileOptions\0189\n\016source_code_info\024"
  L28_1 = "\t \001(\v2\031.google.protobuf.SourceCodeInfo\018\014\n\006syntax\024\f \001("
  L29_1 = "\t\"\228\003\n\015DescriptorProto\018\f\n\004name\024\001 \001(\t\0184\n\005field"
  L30_1 = "\024\002 \003(\v2%.google.protobuf.FieldDescriptorProto\0188\n\textension"
  L31_1 = "\024\006 \003(\v2%.google.protobuf.FieldDescriptorProto\0185\n\vnested_ty"
  L32_1 = "pe\024\003 \003(\v2 .google.protobuf.DescriptorProto\0187\n\tenum_type\024"
  L33_1 = "\004 \003(\v2$.google.protobuf.EnumDescriptorProto\018H\n\015extension_rang"
  L34_1 = "e\024\005 \003(\v2/.google.protobuf.DescriptorProto.ExtensionRange\0189\n"
  L35_1 = "\noneof_decl\024\b \003(\v2%.google.protobuf.OneofDescriptorProto\0180"
  L36_1 = "\n\aoptions\024\a \001(\v2\031.google.protobuf.MessageOptions\026,\n\014Ex"
  L37_1 = "tensionRange\018\r\n\005start\024\001 \001(\005\018\v\n\003end\024\002 \001(\005\"\169\005"
  L38_1 = "\n\020FieldDescriptorProto\018\f\n\004name\024\001 \001(\t\018\014\n\006number\024"
  L39_1 = "\003 \001(\005\018:\n\005label\024\004 \001(\0142+.google.protobuf.FieldDescriptorPro"
  L40_1 = "to.Label\0188\n\004type\024\005 \001(\0142*.google.protobuf.FieldDescriptorPro"
  L41_1 = "to.Type\018\017\n\ttype_name\024\006 \001(\t\018\016\n\bextendee\024\002 \001(\t\018"
  L42_1 = "\021\n\rdefault_value\024\a \001(\t\018\019\n\voneof_index\024\t \001(\005\018."
  L43_1 = "\n\aoptions\024\b \001(\v2\029.google.protobuf.FieldOptions\"\182\002\n\004T"
  L44_1 = "ype\018\015\n\vTYPE_DOUBLE\016\001\018\014\n\nTYPE_FLOAT\016\002\018\014\n\nTY"
  L45_1 = "PE_INT64\016\003\018\015\n\vTYPE_UINT64\016\004\018\014\n\nTYPE_INT32\016\005\018"
  L46_1 = "\016\n\fTYPE_FIXED64\016\006\018\016\n\fTYPE_FIXED32\016\a\018\r\n\tTYPE_B"
  L47_1 = "OOL\016\b\018\015\n\vTYPE_STRING\016\t\018\014\n\nTYPE_GROUP\016\n\018\016"
  L48_1 = "\n\fTYPE_MESSAGE\016\v\018\014\n\nTYPE_BYTES\016\f\018\015\n\vTYPE_UIN"
  L49_1 = "T32\016\r\018\r\n\tTYPE_ENUM\016\014\018\017\n\rTYPE_SFIXED32\016\015\018\017"
  L50_1 = "\n\rTYPE_SFIXED64\016\016\018\015\n\vTYPE_SINT32\016\017\018\015\n\vTYPE_S"
  L51_1 = "INT64\016\018\"C\n\005Label\018\018\n\014LABEL_OPTIONAL\016\001\018\018\n\014LABEL"
  L52_1 = "_REQUIRED\016\002\018\018\n\014LABEL_REPEATED\016\003\"$\n\020OneofDescriptorPro"
  L53_1 = "to\018\f\n\004name\024\001 \001(\t\"\140\001\n\019EnumDescriptorProto\018\f\n\004"
  L54_1 = "name\024\001 \001(\t\0188\n\005value\024\002 \003(\v2).google.protobuf.EnumValueD"
  L55_1 = "escriptorProto\018-\n\aoptions\024\003 \001(\v2\028.google.protobuf.EnumOpti"
  L56_1 = "ons\"l\n\024EnumValueDescriptorProto\018\f\n\004name\024\001 \001(\t\018\014\n"
  L57_1 = "\006number\024\002 \001(\005\0182\n\aoptions\024\003 \001(\v2!.google.protobuf.Enum"
  L58_1 = "ValueOptions\"\144\001\n\022ServiceDescriptorProto\018\f\n\004name\024\001 \001("
  L59_1 = "\t\0186\n\006method\024\002 \003(\v2&.google.protobuf.MethodDescriptorProto"
  L60_1 = "\0180\n\aoptions\024\003 \001(\v2\031.google.protobuf.ServiceOptions\"\193"
  L61_1 = "\001\n\021MethodDescriptorProto\018\f\n\004name\024\001 \001(\t\018\018\n\ninput"
  L62_1 = "_type\024\002 \001(\t\018\019\n\voutput_type\024\003 \001(\t\018/\n\aoptions\024\004 "
  L63_1 = "\001(\v2\030.google.protobuf.MethodOptions\018\031\n\016client_streaming\024"
  L64_1 = "\005 \001(\b:\005false\018\031\n\016server_streaming\024\006 \001(\b:\005false\"\231\004"
  L65_1 = "\n\vFileOptions\018\020\n\fjava_package\024\001 \001(\t\018\028\n\020java_out"
  L66_1 = "er_classname\024\b \001(\t\018\"\n\019java_multiple_files\024\n \001(\b:\005fals"
  L67_1 = "e\018,\n\029java_generate_equals_and_hash\024\020 \001(\b:\005false\018%\n\022ja"
  L68_1 = "va_string_check_utf8\024\027 \001(\b:\005false\018F\n\foptimize_for\024\t \001("
  L69_1 = "\0142).google.protobuf.FileOptions.OptimizeMode:\005SPEED\018\018\n\ngo_pa"
  L70_1 = "ckage\024\v \001(\t\018\"\n\019cc_generic_services\024\016 \001(\b:\005false\018$"
  L71_1 = "\n\021java_generic_services\024\017 \001(\b:\005false\018\"\n\019py_generic_ser"
  L72_1 = "vices\024\018 \001(\b:\005false\018\025\n\ndeprecated\024\023 \001(\b:\005false\018"
  L73_1 = "\031\n\016cc_enable_arenas\024\031 \001(\b:\005false\018\025\n\017objc_class_pref"
  L74_1 = "ix\024$ \001(\t\018C\n\020uninterpreted_option\024\231\a \003(\v2$.google.pro"
  L75_1 = "tobuf.UninterpretedOption\":\n\fOptimizeMode\018\t\n\005SPEED\016\001\018\r"
  L76_1 = "\n\tCODE_SIZE\016\002\018\016\n\fLITE_RUNTIME\016\003*\t\b\232\a\016\128\128"
  L77_1 = "\128\128\002\"\230\001\n\014MessageOptions\018&\n\023message_set_wire_format"
  L78_1 = "\024\001 \001(\b:\005false\018.\n\031no_standard_descriptor_accessor\024\002 \001(\b:"
  L79_1 = "\005false\018\025\n\ndeprecated\024\003 \001(\b:\005false\018\017\n\tmap_entry\024"
  L80_1 = "\a \001(\b\018C\n\020uninterpreted_option\024\231\a \003(\v2$.google.protobu"
  L81_1 = "f.UninterpretedOption*\t\b\232\a\016\128\128\128\128\002\"\160\002\n\fField"
  L82_1 = "Options\018:\n\005ctype\024\001 \001(\0142#.google.protobuf.FieldOptions.CType:"
  L83_1 = "\006STRING\018\014\n\006packed\024\002 \001(\b\018\019\n\004lazy\024\005 \001(\b:\005false"
  L84_1 = "\018\025\n\ndeprecated\024\003 \001(\b:\005false\018\019\n\004weak\024\n \001(\b:\005f"
  L85_1 = "alse\018C\n\020uninterpreted_option\024\231\a \003(\v2$.google.protobuf.Un"
  L86_1 = "interpretedOption\"/\n\005CType\018\n\n\006STRING\016\000\018\b\n\004CORD\016\001"
  L87_1 = "\018\016\n\fSTRING_PIECE\016\002*\t\b\232\a\016\128\128\128\128\002\"\141\001\n"
  L88_1 = "\vEnumOptions\018\019\n\vallow_alias\024\002 \001(\b\018\025\n\ndeprecated"
  L89_1 = "\024\003 \001(\b:\005false\018C\n\020uninterpreted_option\024\231\a \003(\v2$.goo"
  L90_1 = "gle.protobuf.UninterpretedOption*\t\b\232\a\016\128\128\128\128\002\"}\n"
  L91_1 = "\016EnumValueOptions\018\025\n\ndeprecated\024\001 \001(\b:\005false\018C\n\020un"
  L92_1 = "interpreted_option\024\231\a \003(\v2$.google.protobuf.UninterpretedOptio"
  L93_1 = "n*\t\b\232\a\016\128\128\128\128\002\"{\n\014ServiceOptions\018\025\n\ndepr"
  L94_1 = "ecated\024! \001(\b:\005false\018C\n\020uninterpreted_option\024\231\a \003(\v2"
  L95_1 = "$.google.protobuf.UninterpretedOption*\t\b\232\a\016\128\128\128\128\002\"z"
  L96_1 = "\n\rMethodOptions\018\025\n\ndeprecated\024! \001(\b:\005false\018C\n\020uni"
  L97_1 = "nterpreted_option\024\231\a \003(\v2$.google.protobuf.UninterpretedOption"
  L98_1 = "*\t\b\232\a\016\128\128\128\128\002\"\158\002\n\019UninterpretedOption\018;\n"
  L99_1 = "\004name\024\002 \003(\v2-.google.protobuf.UninterpretedOption.NamePart\018\024"
  L100_1 = "\n\016identifier_value\024\003 \001(\t\018\026\n\018positive_int_value\024\004 \001("
  L101_1 = "\004\018\026\n\018negative_int_value\024\005 \001(\003\018\020\n\fdouble_value\024\006"
  L102_1 = " \001(\001\018\020\n\fstring_value\024\a \001(\f\018\023\n\015aggregate_value"
  L103_1 = "\024\b \001(\t\0263\n\bNamePart\018\017\n\tname_part\024\001 \002(\t\018\020\n\f"
  L104_1 = "is_extension\024\002 \002(\b\"\213\001\n\014SourceCodeInfo\018:\n\blocation\024"
  L105_1 = "\001 \003(\v2(.google.protobuf.SourceCodeInfo.Location\026\134\001\n\bLocati"
  L106_1 = "on\018\016\n\004path\024\001 \003(\005B\002\016\001\018\016\n\004span\024\002 \003(\005B\002\016\001"
  L107_1 = "\018\024\n\016leading_comments\024\003 \001(\t\018\025\n\017trailing_comments\024"
  L108_1 = "\004 \001(\t\018!\n\025leading_detached_comments\024\006 \003(\tB)\n\019com.google"
  L109_1 = ".protobufB\016DescriptorProtosH\001"
  L18_1 = L18_1 .. L19_1 .. L20_1 .. L21_1 .. L22_1 .. L23_1 .. L24_1 .. L25_1 .. L26_1 .. L27_1 .. L28_1 .. L29_1 .. L30_1 .. L31_1 .. L32_1 .. L33_1 .. L34_1 .. L35_1 .. L36_1 .. L37_1 .. L38_1 .. L39_1 .. L40_1 .. L41_1 .. L42_1 .. L43_1 .. L44_1 .. L45_1 .. L46_1 .. L47_1 .. L48_1 .. L49_1 .. L50_1 .. L51_1 .. L52_1 .. L53_1 .. L54_1 .. L55_1 .. L56_1 .. L57_1 .. L58_1 .. L59_1 .. L60_1 .. L61_1 .. L62_1 .. L63_1 .. L64_1 .. L65_1 .. L66_1 .. L67_1 .. L68_1 .. L69_1 .. L70_1 .. L71_1 .. L72_1 .. L73_1 .. L74_1 .. L75_1 .. L76_1 .. L77_1 .. L78_1 .. L79_1 .. L80_1 .. L81_1 .. L82_1 .. L83_1 .. L84_1 .. L85_1 .. L86_1 .. L87_1 .. L88_1 .. L89_1 .. L90_1 .. L91_1 .. L92_1 .. L93_1 .. L94_1 .. L95_1 .. L96_1 .. L97_1 .. L98_1 .. L99_1 .. L100_1 .. L101_1 .. L102_1 .. L103_1 .. L104_1 .. L105_1 .. L106_1 .. L107_1 .. L108_1 .. L109_1
  function L19_1()
    local L0_2, L1_2, L2_2
    L0_2 = L8_1
    L1_2 = L17_1.load
    L2_2 = L18_1
    L1_2 = L1_2(L2_2)
    L2_2 = "load descriptor msg failed"
    L0_2(L1_2, L2_2)
  end
  L15_1.reload = L19_1
  function L19_1(A0_2, A1_2, ...)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
    L2_2 = A0_2.include_imports
    if L2_2 then
      L2_2 = A0_2.on_import
      L3_2 = {}
      function L4_2(A0_3)
        local L1_3, L2_3, L3_3
        L1_3 = L11_1
        L2_3 = L3_2
        L3_3 = A0_3
        L1_3(L2_3, L3_3)
      end
      A0_2.on_import = L4_2
      L4_2 = A1_2
      L5_2, L6_2, L7_2 = ...
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      L5_2 = L11_1
      L6_2 = L3_2
      L7_2 = L4_2
      L5_2(L6_2, L7_2)
      A0_2.on_import = L2_2
      L5_2 = {}
      L5_2.file = L3_2
      return L5_2
    end
    L2_2 = {}
    L3_2 = {}
    L4_2 = A1_2
    L5_2, L6_2, L7_2 = ...
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L3_2[3] = L6_2
    L3_2[4] = L7_2
    L2_2.file = L3_2
    return L2_2
  end
  function L20_1(A0_2, A1_2, A2_2)
    local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
    L3_2 = L15_1
    if A0_2 == L3_2 then
      L3_2 = L15_1.new
      L3_2 = L3_2()
      A0_2 = L3_2
    end
    L3_2 = L19_1
    L4_2 = A0_2
    L5_2 = A0_2.parse
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = A2_2
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
    L4_2 = L17_1.encode
    L5_2 = ".google.protobuf.FileDescriptorSet"
    L6_2 = L3_2
    return L4_2(L5_2, L6_2)
  end
  L15_1.compile = L20_1
  function L20_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2
    L2_2 = L15_1
    if A0_2 == L2_2 then
      L2_2 = L15_1.new
      L2_2 = L2_2()
      A0_2 = L2_2
    end
    L2_2 = L19_1
    L3_2 = A0_2
    L4_2 = A0_2.parsefile
    L5_2 = A0_2
    L6_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = L17_1.encode
    L4_2 = ".google.protobuf.FileDescriptorSet"
    L5_2 = L2_2
    return L3_2(L4_2, L5_2)
  end
  L15_1.compilefile = L20_1
  function L20_1(A0_2, A1_2, A2_2)
    local L3_2, L4_2, L5_2, L6_2, L7_2
    L3_2 = L15_1
    if A0_2 == L3_2 then
      L3_2 = L15_1.new
      L3_2 = L3_2()
      A0_2 = L3_2
    end
    L3_2 = L17_1.load
    L5_2 = A0_2
    L4_2 = A0_2.compile
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    if L3_2 then
      L5_2 = L3_2
      L6_2 = L4_2
      return L5_2, L6_2
    end
    L5_2 = L3_1
    L6_2 = "load failed at offset "
    L7_2 = L4_2
    L6_2 = L6_2 .. L7_2
    L5_2(L6_2)
  end
  L15_1.load = L20_1
  function L20_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2
    L2_2 = L15_1
    if A0_2 == L2_2 then
      L2_2 = L15_1.new
      L2_2 = L2_2()
      A0_2 = L2_2
    end
    L2_2 = L17_1.load
    L4_2 = A0_2
    L3_2 = A0_2.compilefile
    L5_2 = A1_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
    L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    if L2_2 then
      L4_2 = L2_2
      L5_2 = L3_2
      return L4_2, L5_2
    end
    L4_2 = L3_1
    L5_2 = "load failed at offset "
    L6_2 = L3_2
    L5_2 = L5_2 .. L6_2
    L4_2(L5_2)
  end
  L15_1.loadfile = L20_1
  L20_1 = L15_1.reload
  L20_1()
end
return L15_1
