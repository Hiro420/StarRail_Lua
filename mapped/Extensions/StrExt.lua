local L0_1, L1_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "StrExt"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 == nil then
    L1_2 = nil
    L2_2 = "the string parameter is nil"
    return L1_2, L2_2
  end
  L1_2 = string
  L1_2 = L1_2.gsub
  L2_2 = A0_2
  L3_2 = " "
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  return A0_2
end
L0_1.Trim = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 == nil then
    L1_2 = nil
    L2_2 = "the string parameter is nil"
    return L1_2, L2_2
  end
  L1_2 = string
  L1_2 = L1_2.sub
  L2_2 = A0_2
  L3_2 = 1
  L4_2 = 1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = string
  L2_2 = L2_2.len
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L1_2 < "a" or "z" < L1_2 then
    return A0_2
  end
  L3_2 = string
  L3_2 = L3_2.char
  L4_2 = string
  L4_2 = L4_2.byte
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 - 32
  L3_2 = L3_2(L4_2)
  L1_2 = L3_2
  if L2_2 == 1 then
    return L1_2
  else
    L3_2 = L1_2
    L4_2 = string
    L4_2 = L4_2.sub
    L5_2 = A0_2
    L6_2 = 2
    L7_2 = L2_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L3_2 .. L4_2
    return L3_2
  end
end
L0_1.Capitalize = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 == nil or A1_2 == nil then
    L4_2 = nil
    L5_2 = "the string or the sub-string parameter is nil"
    return L4_2, L5_2
  end
  if not A2_2 then
    A2_2 = 1
  end
  if A3_2 ~= nil then
    L4_2 = string
    L4_2 = L4_2.len
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if not (A3_2 > L4_2) then
      goto lbl_24
    end
  end
  L4_2 = string
  L4_2 = L4_2.len
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  A3_2 = L4_2
  ::lbl_24::
  L4_2 = string
  L4_2 = L4_2.sub
  L5_2 = A0_2
  L6_2 = A2_2
  L7_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = 0
  L6_2 = string
  L6_2 = L6_2.gsub
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = ""
  L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2)
  L5_2 = L7_2
  _ = L6_2
  return L5_2
end
L0_1.Count = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 == nil or A1_2 == nil then
    L2_2 = nil
    L3_2 = "the string or the sub-stirng parameter is nil"
    return L2_2, L3_2
  end
  L2_2 = string
  L2_2 = L2_2.find
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= 1 then
    L2_2 = false
    return L2_2
  else
    L2_2 = true
    return L2_2
  end
end
L0_1.StartsWith = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 == nil or A1_2 == nil then
    L2_2 = nil
    L3_2 = "the string or the sub-string parameter is nil"
    return L2_2, L3_2
  end
  L2_2 = string
  L2_2 = L2_2.reverse
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  str_tmp = L2_2
  L2_2 = string
  L2_2 = L2_2.reverse
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  substr_tmp = L2_2
  L2_2 = string
  L2_2 = L2_2.find
  L3_2 = str_tmp
  L4_2 = substr_tmp
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= 1 then
    L2_2 = false
    return L2_2
  else
    L2_2 = true
    return L2_2
  end
end
L0_1.EndsWith = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 == nil then
    L2_2 = nil
    L3_2 = "the string parameter is nil"
    return L2_2, L3_2
  end
  if not A1_2 then
    A1_2 = 8
  end
  L2_2 = string
  L2_2 = L2_2.gsub
  L3_2 = A0_2
  L4_2 = "\t"
  L5_2 = string
  L5_2 = L5_2.rep
  L6_2 = " "
  L7_2 = A1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2 = L2_2
  return A0_2
end
L0_1.ExpendTabs = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 == nil then
    L1_2 = nil
    L2_2 = "the string parameter is nil"
    return L1_2, L2_2
  end
  L1_2 = string
  L1_2 = L1_2.len
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = string
    L6_2 = L6_2.sub
    L7_2 = A0_2
    L8_2 = L5_2
    L9_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if (not ("a" <= L6_2) or not (L6_2 <= "z")) and (not ("A" <= L6_2) or not (L6_2 <= "Z")) and (not ("0" <= L6_2) or not (L6_2 <= "9")) then
      L7_2 = false
      return L7_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1.IsAlnum = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 == nil then
    L1_2 = nil
    L2_2 = "the string parameter is nil"
    return L1_2, L2_2
  end
  L1_2 = string
  L1_2 = L1_2.len
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = string
    L6_2 = L6_2.sub
    L7_2 = A0_2
    L8_2 = L5_2
    L9_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if (not ("a" <= L6_2) or not (L6_2 <= "z")) and (not ("A" <= L6_2) or not (L6_2 <= "Z")) then
      L7_2 = false
      return L7_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1.Isalpha = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 == nil then
    L1_2 = nil
    L2_2 = "the string parameter is nil"
    return L1_2, L2_2
  end
  L1_2 = string
  L1_2 = L1_2.len
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = string
    L6_2 = L6_2.sub
    L7_2 = A0_2
    L8_2 = L5_2
    L9_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 < "0" or "9" < L6_2 then
      L7_2 = false
      return L7_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1.Isdigit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 == nil then
    L1_2 = nil
    L2_2 = "the string parameter is nil"
    return L1_2, L2_2
  end
  L1_2 = string
  L1_2 = L1_2.len
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = string
    L6_2 = L6_2.sub
    L7_2 = A0_2
    L8_2 = L5_2
    L9_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 < "a" or "z" < L6_2 then
      L7_2 = false
      return L7_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1.Islower = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A0_2 == nil then
    L1_2 = nil
    L2_2 = "the string parameter is nil"
    return L1_2, L2_2
  end
  L1_2 = string
  L1_2 = L1_2.len
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = string
    L6_2 = L6_2.sub
    L7_2 = A0_2
    L8_2 = L5_2
    L9_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if L6_2 < "A" or "Z" < L6_2 then
      L7_2 = false
      return L7_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1.Isupper = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A0_2 == nil or A1_2 == nil then
    L2_2 = nil
    L3_2 = "the string or the sub-string parameter is nil"
    return L2_2, L3_2
  end
  L2_2 = string
  L2_2 = L2_2.len
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 - 1
  if L2_2 == 0 then
    return A0_2
  end
  L3_2 = ""
  L4_2 = 1
  L5_2 = L2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2
    L9_2 = string
    L9_2 = L9_2.sub
    L10_2 = A0_2
    L11_2 = L7_2
    L12_2 = L7_2
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = A1_2
    L3_2 = L8_2 .. L9_2 .. L10_2
  end
  L4_2 = L3_2
  L5_2 = string
  L5_2 = L5_2.sub
  L6_2 = A0_2
  L7_2 = L2_2 + 1
  L8_2 = L2_2 + 1
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L3_2 = L4_2 .. L5_2
  return L3_2
end
L0_1.Join = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 == nil then
    L1_2 = nil
    L2_2 = "the string parameter is nil"
    return L1_2, L2_2
  end
  L1_2 = string
  L1_2 = L1_2.len
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = ""
  L3_2 = 1
  L4_2 = L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = string
    L7_2 = L7_2.sub
    L8_2 = A0_2
    L9_2 = L6_2
    L10_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if "A" <= L7_2 and L7_2 <= "Z" then
      L8_2 = string
      L8_2 = L8_2.char
      L9_2 = string
      L9_2 = L9_2.byte
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L9_2 = L9_2 + 32
      L8_2 = L8_2(L9_2)
      L7_2 = L8_2
    end
    L8_2 = L2_2
    L9_2 = L7_2
    L2_2 = L8_2 .. L9_2
  end
  return L2_2
end
L0_1.Lower = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A0_2 == nil then
    L1_2 = nil
    L2_2 = "the string parameter is nil"
    return L1_2, L2_2
  end
  L1_2 = string
  L1_2 = L1_2.len
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = ""
  L3_2 = 1
  L4_2 = L1_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = string
    L7_2 = L7_2.sub
    L8_2 = A0_2
    L9_2 = L6_2
    L10_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if "a" <= L7_2 and L7_2 <= "z" then
      L8_2 = string
      L8_2 = L8_2.char
      L9_2 = string
      L9_2 = L9_2.byte
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L9_2 = L9_2 - 32
      L8_2 = L8_2(L9_2)
      L7_2 = L8_2
    end
    L8_2 = L2_2
    L9_2 = L7_2
    L2_2 = L8_2 .. L9_2
  end
  return L2_2
end
L0_1.Upper = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 == nil or A1_2 == nil then
    L2_2 = nil
    L3_2 = "the string or the sub-string parameter is nil"
    return L2_2, L3_2
  end
  L2_2 = string
  L2_2 = L2_2.len
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = string
  L3_2 = L3_2.find
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2, L5_2)
  end_idx = L4_2
  start_idx = L3_2
  L3_2 = start_idx
  if L3_2 ~= nil then
    L3_2 = end_idx
    if L3_2 ~= L2_2 then
      goto lbl_29
    end
  end
  L3_2 = A0_2
  L4_2 = ""
  L5_2 = ""
  do return L3_2, L4_2, L5_2 end
  ::lbl_29::
  L3_2 = string
  L3_2 = L3_2.sub
  L4_2 = A0_2
  L5_2 = 1
  L6_2 = start_idx
  L6_2 = L6_2 - 1
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = string
  L4_2 = L4_2.sub
  L5_2 = A0_2
  L6_2 = start_idx
  L7_2 = end_idx
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = string
  L5_2 = L5_2.sub
  L6_2 = A0_2
  L7_2 = end_idx
  L7_2 = L7_2 + 1
  L8_2 = L2_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
  return L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
end
L0_1.Partition = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 == nil then
    L2_2 = nil
    L3_2 = "the string parameter is nil"
    return L2_2, L3_2
  end
  if A1_2 == nil then
    return A0_2
  end
  L2_2 = "%0"
  L3_2 = A1_2
  L4_2 = "s"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = L2_2
  L5_2 = A0_2
  return L3_2(L4_2, L5_2)
end
L0_1.Zfill = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A0_2 == nil then
    L3_2 = nil
    L4_2 = "the string parameter is nil"
    return L3_2, L4_2
  end
  if not A2_2 then
    A2_2 = " "
  end
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2 or A1_2
  if not L3_2 then
    A1_2 = 0
  end
  L3_2 = string
  L3_2 = L3_2.len
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = string
  L4_2 = L4_2.rep
  L5_2 = A2_2
  L6_2 = A1_2 - L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = L4_2 .. L5_2
  return L4_2
end
L0_1.Ljust = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 == nil then
    L3_2 = nil
    L4_2 = "the string parameter is nil"
    return L3_2, L4_2
  end
  if not A2_2 then
    A2_2 = " "
  end
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2 or A1_2
  if not L3_2 then
    A1_2 = 0
  end
  L3_2 = string
  L3_2 = L3_2.len
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2
  L5_2 = string
  L5_2 = L5_2.rep
  L6_2 = A2_2
  L7_2 = A1_2 - L3_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2 .. L5_2
  return L4_2
end
L0_1.Rjust = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A0_2 == nil then
    L3_2 = nil
    L4_2 = "the string parameter is nil"
    return L3_2, L4_2
  end
  if not A2_2 then
    A2_2 = " "
  end
  L3_2 = tonumber
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  A1_2 = L3_2 or A1_2
  if not L3_2 then
    A1_2 = 0
  end
  L3_2 = string
  L3_2 = L3_2.len
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = A1_2 - L3_2
  L5_2 = L5_2 / 2
  L4_2 = L4_2(L5_2)
  rn_tmp = L4_2
  L4_2 = rn_tmp
  L4_2 = A1_2 - L4_2
  L4_2 = L4_2 - L3_2
  ln_tmp = L4_2
  L4_2 = string
  L4_2 = L4_2.rep
  L5_2 = A2_2
  L6_2 = rn_tmp
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L6_2 = string
  L6_2 = L6_2.rep
  L7_2 = A2_2
  L8_2 = ln_tmp
  L6_2 = L6_2(L7_2, L8_2)
  L4_2 = L4_2 .. L5_2 .. L6_2
  return L4_2
end
L0_1.Center = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = "" == A0_2 or nil == A0_2
  return L1_2
end
L0_1.IsNullOrEmpty = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = #A0_2
  L4_2 = A0_2
  L3_2 = A0_2.reverse
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.find
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2 - L3_2
  L2_2 = L2_2 + 1
  L3_2 = string
  L3_2 = L3_2.sub
  L4_2 = A0_2
  L5_2 = L2_2 + 1
  L6_2 = string
  L6_2 = L6_2.len
  L7_2 = A0_2
  L6_2, L7_2 = L6_2(L7_2)
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.SubstringAfterLast = L1_1
return L0_1
