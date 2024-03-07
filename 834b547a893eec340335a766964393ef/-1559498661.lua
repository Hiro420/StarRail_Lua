local L0_1, L1_1
L0_1 = {}
L0_1.log = true
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = tostring
  L2_2 = A0_2
  return L1_2(L2_2)
end
L0_1.str = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = assert
  L2_2 = G
  L2_2 = L2_2.IsClass
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = "can not get class"
  L1_2(L2_2, L3_2)
  return A0_2
end
L0_1.get_class_table = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  if A0_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = L0_1.get_class_table
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = false
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = type
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 == "function" then
      L9_2 = string
      L9_2 = L9_2.match
      L10_2 = L7_2
      L11_2 = "(hotfix_)([a-zA-Z_]+)"
      L9_2, L10_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        L11_2 = {}
        L11_2.func = L8_2
        L11_2.name = L10_2
        A1_2[L10_2] = L11_2
        L3_2 = true
      end
    end
  end
  L4_2 = L0_1.log
  if L4_2 and L3_2 then
    L4_2 = pairs
    L5_2 = A1_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L9_2 = print
      L10_2 = "func:"
      L11_2 = L0_1.str
      L12_2 = L8_2.func
      L11_2 = L11_2(L12_2)
      L12_2 = ",name:"
      L13_2 = L8_2.name
      L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2
      L9_2(L10_2)
    end
  end
  return L3_2
end
L0_1.find_hotfix_function = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L5_2 = assert
  L6_2 = A0_2 ~= nil and A1_2 ~= nil
  L7_2 = "function is nil"
  L5_2(L6_2, L7_2)
  L5_2 = assert
  L6_2 = type
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 == "function"
  L7_2 = "old_func is not function"
  L5_2(L6_2, L7_2)
  L5_2 = assert
  L6_2 = type
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2 == "function"
  L7_2 = "new_func is not function"
  L5_2(L6_2, L7_2)
  L5_2 = assert
  L6_2 = A0_2 ~= A1_2
  L7_2 = "old_func should not equal to new func"
  L5_2(L6_2, L7_2)
  L5_2 = assert
  L6_2 = A2_2 ~= nil
  L7_2 = "module_list is nil"
  L5_2(L6_2, L7_2)
  L5_2 = assert
  L6_2 = #A2_2
  L6_2 = 0 < L6_2
  L7_2 = "module_list is empty"
  L5_2(L6_2, L7_2)
  if A2_2 == nil then
    return
  end
  L5_2 = ipairs
  L6_2 = A2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = L9_2.__name
    if not L10_2 then
      L10_2 = "unkown"
    end
    L11_2 = nil
    L12_2 = pairs
    L13_2 = L9_2
    L12_2, L13_2, L14_2 = L12_2(L13_2)
    for L15_2, L16_2 in L12_2, L13_2, L14_2 do
      L17_2 = type
      L18_2 = L16_2
      L17_2 = L17_2(L18_2)
      if L17_2 == "table" then
        L17_2 = {}
        L17_2.func_name = A3_2
        L18_2 = {}
        L19_2 = L16_2
        L18_2[1] = L19_2
        L17_2.visit = L18_2
        L17_2.path = L15_2
        L17_2.ignore_obj = A4_2
        L17_2.module_name = L10_2
        function L18_2(A0_3, A1_3)
          local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
          L2_3 = false
          L3_3 = pairs
          L4_3 = A0_3.visit
          L3_3, L4_3, L5_3 = L3_3(L4_3)
          for L6_3, L7_3 in L3_3, L4_3, L5_3 do
            if L7_3 == A1_3 then
              L2_3 = true
              break
            end
          end
          return L2_3
        end
        L17_2.isvisited = L18_2
        L18_2 = L0_1.recursive_replace
        L19_2 = A0_2
        L20_2 = A1_2
        L21_2 = L16_2
        L22_2 = L17_2
        L18_2(L19_2, L20_2, L21_2, L22_2)
      else
        L17_2 = type
        L18_2 = L16_2
        L17_2 = L17_2(L18_2)
        if L17_2 == "function" and L16_2 == A0_2 then
          L11_2 = L15_2
        end
      end
    end
    if L11_2 ~= nil then
      L9_2[L11_2] = A1_2
      L12_2 = L0_1.log
      if L12_2 then
        L12_2 = print
        L13_2 = string
        L13_2 = L13_2.format
        L14_2 = "replace [%s] in [%s] of [%s] old[%s] new[%s] !!!"
        L15_2 = A3_2
        L16_2 = L11_2
        L17_2 = L10_2
        L18_2 = tostring
        L19_2 = A0_2
        L18_2 = L18_2(L19_2)
        L19_2 = tostring
        L20_2 = A1_2
        L19_2, L20_2, L21_2, L22_2 = L19_2(L20_2)
        L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
        L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
      end
    end
  end
end
L0_1.replace_function_by_reference = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = assert
  L5_2 = A2_2 ~= nil
  L6_2 = "value_table is nil"
  L4_2(L5_2, L6_2)
  L4_2 = A3_2.func_name
  L5_2 = A3_2.path
  L6_2 = A3_2.ignore_obj
  L7_2 = A3_2.module_name
  L8_2 = table
  L8_2 = L8_2.insert
  L9_2 = A3_2.visit
  L10_2 = A2_2
  L8_2(L9_2, L10_2)
  L8_2 = nil
  L9_2 = pairs
  L10_2 = A2_2
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  for L12_2, L13_2 in L9_2, L10_2, L11_2 do
    L14_2 = type
    L15_2 = L13_2
    L14_2 = L14_2(L15_2)
    if L14_2 == "table" then
      if L6_2 then
        L14_2 = G
        L14_2 = L14_2.IsInstance
        L15_2 = L13_2
        L14_2 = L14_2(L15_2)
      end
      if not L14_2 then
        L15_2 = A3_2
        L14_2 = A3_2.isvisited
        L16_2 = L13_2
        L14_2 = L14_2(L15_2, L16_2)
        if not L14_2 then
          L14_2 = L5_2
          L15_2 = "."
          L16_2 = L12_2
          L14_2 = L14_2 .. L15_2 .. L16_2
          A3_2.path = L14_2
          L14_2 = L0_1.recursive_replace
          L15_2 = A0_2
          L16_2 = A1_2
          L17_2 = L13_2
          L18_2 = A3_2
          L14_2(L15_2, L16_2, L17_2, L18_2)
          A3_2.path = L5_2
        end
      end
    else
      L14_2 = type
      L15_2 = L13_2
      L14_2 = L14_2(L15_2)
      if L14_2 == "function" and L13_2 == A0_2 then
        L8_2 = L12_2
      end
    end
  end
  if L8_2 ~= nil and L8_2 ~= "__index" then
    A2_2[L8_2] = A1_2
    L9_2 = L0_1.log
    if L9_2 then
      L9_2 = print
      L10_2 = string
      L10_2 = L10_2.format
      L11_2 = "replace [%s]in[%s] of[%s] old[%s] new[%s] !!!"
      L12_2 = L4_2
      L13_2 = L5_2
      L14_2 = "."
      L15_2 = L8_2
      L13_2 = L13_2 .. L14_2 .. L15_2
      L14_2 = L7_2
      L15_2 = tostring
      L16_2 = A0_2
      L15_2 = L15_2(L16_2)
      L16_2 = tostring
      L17_2 = A1_2
      L16_2, L17_2, L18_2 = L16_2(L17_2)
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    end
  end
end
L0_1.recursive_replace = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = assert
  L3_2 = A0_2 ~= nil and A1_2 ~= nil
  L4_2 = "oldmodule or newmodule is nil"
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L3_2 = L0_1.find_hotfix_function
  L4_2 = A1_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = print
    L5_2 = "can not find reload function "
    L6_2 = tostring
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    L7_2 = "because it have no hotfix function"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    L4_2 = false
    return L4_2
  end
  L4_2 = {}
  L5_2 = A0_2.__name
  if not L5_2 then
    L5_2 = "unkown"
  end
  L6_2 = {}
  L7_2 = L0_1.get_class_table
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L8_2 = pairs
  L9_2 = L2_2
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = L7_2[L11_2]
    if L13_2 ~= nil then
      L13_2 = {}
      L14_2 = L7_2[L11_2]
      L13_2.func = L14_2
      L13_2.name = L11_2
      L6_2[L11_2] = L13_2
    end
    L13_2 = table
    L13_2 = L13_2.insert
    L14_2 = L4_2
    L15_2 = L11_2
    L13_2(L14_2, L15_2)
  end
  L8_2 = G
  L8_2 = L8_2.reload_modules
  L9_2 = table
  L9_2 = L9_2.insert
  L10_2 = L8_2
  L11_2 = A0_2
  L9_2(L10_2, L11_2)
  L9_2 = assert
  L10_2 = #L4_2
  L10_2 = 0 < L10_2
  L11_2 = "there have not replace function"
  L9_2(L10_2, L11_2)
  L9_2 = print
  L10_2 = string
  L10_2 = L10_2.format
  L11_2 = "find replace_function name count: %s "
  L12_2 = #L4_2
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L10_2(L11_2, L12_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L9_2 = pairs
  L10_2 = L4_2
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  for L12_2, L13_2 in L9_2, L10_2, L11_2 do
    L14_2 = L6_2[L13_2]
    L14_2 = L14_2 ~= nil
    L15_2 = print
    L16_2 = string
    L16_2 = L16_2.format
    L17_2 = "<<<reload_module function name: %s action [%s], start"
    L18_2 = L13_2
    if L14_2 then
      L19_2 = "replace"
      if L19_2 then
        goto lbl_97
      end
    end
    L19_2 = "new"
    ::lbl_97::
    L16_2, L17_2, L18_2, L19_2, L20_2 = L16_2(L17_2, L18_2, L19_2)
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
    if L14_2 then
      L15_2 = L0_1.replace_function_by_reference
      L16_2 = L6_2[L13_2]
      L16_2 = L16_2.func
      L17_2 = L2_2[L13_2]
      L17_2 = L17_2.func
      L18_2 = L8_2
      L19_2 = L13_2
      L20_2 = true
      L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
    else
      L15_2 = L2_2[L13_2]
      L15_2 = L15_2.func
      L7_2[L13_2] = L15_2
      L15_2 = print
      L16_2 = string
      L16_2 = L16_2.format
      L17_2 = "add new func name: %s of [%s] !!!"
      L18_2 = L13_2
      L19_2 = L5_2
      L16_2, L17_2, L18_2, L19_2, L20_2 = L16_2(L17_2, L18_2, L19_2)
      L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
    end
    L15_2 = print
    L16_2 = string
    L16_2 = L16_2.format
    L17_2 = "<<<reload_module function name: %s, end"
    L18_2 = L13_2
    L16_2, L17_2, L18_2, L19_2, L20_2 = L16_2(L17_2, L18_2)
    L15_2(L16_2, L17_2, L18_2, L19_2, L20_2)
  end
end
L0_1.reload_module = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = assert
  L2_2 = A0_2 ~= nil
  L3_2 = "newmodule is nil"
  L1_2(L2_2, L3_2)
  L1_2 = {}
  L2_2 = L0_1.find_hotfix_function
  L3_2 = A0_2
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = print
    L4_2 = "can not find reload function "
    L5_2 = tostring
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L6_2 = "because it have no hotfix function"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
    L3_2 = false
    return L3_2
  end
  L3_2 = true
  return L3_2
end
L0_1.need_reload = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = print
  L2_2 = "look_at_object "
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  if A0_2 == nil then
    L1_2 = print
    L2_2 = "obj is nil"
    L1_2(L2_2)
  else
    L1_2 = type
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 == "userdata" then
      L1_2 = getmetatable
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 ~= nil then
        L2_2 = pairs
        L3_2 = L1_2
        L2_2, L3_2, L4_2 = L2_2(L3_2)
        for L5_2, L6_2 in L2_2, L3_2, L4_2 do
          L7_2 = print
          L8_2 = string
          L8_2 = L8_2.format
          L9_2 = "cs metatable name:%s is type: [%s]"
          L10_2 = L5_2
          L11_2 = L6_2
          L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2)
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        end
        L2_2 = G
        L2_2 = L2_2.UtilXLuaWrap
        L2_2 = L2_2.get_cs_class_by_name
        L3_2 = L1_2.__name
        L2_2 = L2_2(L3_2)
        L3_2 = pairs
        L4_2 = L2_2
        L3_2, L4_2, L5_2 = L3_2(L4_2)
        for L6_2, L7_2 in L3_2, L4_2, L5_2 do
          L8_2 = print
          L9_2 = string
          L9_2 = L9_2.format
          L10_2 = "cs class name:%s is type: [%s]"
          L11_2 = L6_2
          L12_2 = L7_2
          L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
          L8_2(L9_2, L10_2, L11_2, L12_2)
        end
      else
        L2_2 = pairs
        L3_2 = A0_2
        L2_2, L3_2, L4_2 = L2_2(L3_2)
        for L5_2, L6_2 in L2_2, L3_2, L4_2 do
          L7_2 = print
          L8_2 = string
          L8_2 = L8_2.format
          L9_2 = "cs object name:%s is type: [%s]"
          L10_2 = L5_2
          L11_2 = L6_2
          L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2)
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        end
      end
    else
      L1_2 = type
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 == "table" then
        L1_2 = G
        L1_2 = L1_2.IsClass
        L2_2 = class
        L1_2 = L1_2(L2_2)
        if L1_2 then
          L1_2 = pairs
          L2_2 = A0_2
          L1_2, L2_2, L3_2 = L1_2(L2_2)
          for L4_2, L5_2 in L1_2, L2_2, L3_2 do
            L6_2 = print
            L7_2 = string
            L7_2 = L7_2.format
            L8_2 = "lua class name:%s is type: [%s]"
            L9_2 = L4_2
            L10_2 = L5_2
            L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2, L9_2, L10_2)
            L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
          end
      end
      else
        L1_2 = type
        L2_2 = A0_2
        L1_2 = L1_2(L2_2)
        if L1_2 == "table" then
          L1_2 = G
          L1_2 = L1_2.IsInstance
          L2_2 = A0_2
          L1_2 = L1_2(L2_2)
          if L1_2 then
            L1_2 = pairs
            L2_2 = A0_2
            L1_2, L2_2, L3_2 = L1_2(L2_2)
            for L4_2, L5_2 in L1_2, L2_2, L3_2 do
              L6_2 = print
              L7_2 = string
              L7_2 = L7_2.format
              L8_2 = "lua class object name:%s is type: [%s]"
              L9_2 = L4_2
              L10_2 = L5_2
              L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2, L9_2, L10_2)
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
            end
            L1_2 = G
            L1_2 = L1_2.GetClass
            L2_2 = A0_2
            L1_2 = L1_2(L2_2)
            L2_2 = pairs
            L3_2 = L1_2
            L2_2, L3_2, L4_2 = L2_2(L3_2)
            for L5_2, L6_2 in L2_2, L3_2, L4_2 do
              L7_2 = print
              L8_2 = string
              L8_2 = L8_2.format
              L9_2 = "lua class object name:%s is type: [%s]"
              L10_2 = L5_2
              L11_2 = L6_2
              L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2)
              L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
            end
            L2_2 = G
            L2_2 = L2_2.GetSuper
            L3_2 = L1_2
            L2_2 = L2_2(L3_2)
            while L2_2 ~= nil do
              L3_2 = pairs
              L4_2 = L1_2
              L3_2, L4_2, L5_2 = L3_2(L4_2)
              for L6_2, L7_2 in L3_2, L4_2, L5_2 do
                L8_2 = print
                L9_2 = string
                L9_2 = L9_2.format
                L10_2 = "lua super class name:%s is type: [%s]"
                L11_2 = L6_2
                L12_2 = L7_2
                L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
                L8_2(L9_2, L10_2, L11_2, L12_2)
              end
              L3_2 = G
              L3_2 = L3_2.GetSuper
              L4_2 = L2_2
              L3_2 = L3_2(L4_2)
              L2_2 = L3_2
            end
        end
        else
          L1_2 = type
          L2_2 = A0_2
          L1_2 = L1_2(L2_2)
          if L1_2 == "table" then
            L1_2 = pairs
            L2_2 = A0_2
            L1_2, L2_2, L3_2 = L1_2(L2_2)
            for L4_2, L5_2 in L1_2, L2_2, L3_2 do
              L6_2 = print
              L7_2 = string
              L7_2 = L7_2.format
              L8_2 = "lua table name:%s is type: [%s]"
              L9_2 = L4_2
              L10_2 = L5_2
              L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2, L9_2, L10_2)
              L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
            end
          end
        end
      end
    end
  end
  L1_2 = print
  L2_2 = "look_at_object "
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = " end"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
end
L0_1.look_at_object = L1_1
return L0_1
