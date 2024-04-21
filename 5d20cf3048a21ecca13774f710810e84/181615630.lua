local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_UIManager
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SystemOpenModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "BaseCommand"
L2_1 = L2_1(L3_1)
L2_1._text_func_lock = "UIText_FuncLockedDesc"
L2_1._text_cannot_goto = "UIText_Goto_Error_04"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogErrorFormat
  L3_2 = "Derived class is required to implement this function!"
  L2_2(L3_2)
end
L2_1.execute = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_unlock
  L4_2 = A1_2.UnlockID
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.SystemOpenModule
    L3_2 = L3_2.GetIsNotOpenReason
    L4_2 = A1_2.UnlockID
    L3_2 = L3_2(L4_2)
    L4_2 = G
    L4_2 = L4_2.StrExt
    L4_2 = L4_2.IsNullOrEmpty
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = false
      L5_2 = L3_2
      L6_2 = true
      return L4_2, L5_2, L6_2
    end
    L4_2 = false
    L5_2 = L2_1._text_func_lock
    return L4_2, L5_2
  end
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.HasGotoType
  L5_2 = A1_2.GotoType
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = false
    L5_2 = L2_1._text_cannot_goto
    return L4_2, L5_2
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.GlobalVars
  L4_2 = L4_2.s_ModuleManager
  L4_2 = L4_2.SystemOpenModule
  L5_2 = L4_2
  L4_2 = L4_2.IsGotoTypeBlocked
  L6_2 = A1_2.GotoType
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = false
    L5_2 = L2_1._text_cannot_goto
    return L4_2, L5_2
  end
  L5_2 = A0_2
  L4_2 = A0_2._check_goto_condition
  L6_2 = A1_2
  L7_2 = A2_2
  return L4_2(L5_2, L6_2, L7_2)
end
L2_1.can_goto = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = true
  L4_2 = ""
  return L3_2, L4_2
end
L2_1._check_goto_condition = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = A0_2.ParamIntList
  L2_2 = L2_2.Length
  if 0 < L2_2 then
    L2_2 = 0
    L3_2 = A0_2.ParamIntList
    L3_2 = L3_2.Length
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = #L1_2
      L6_2 = L6_2 + 1
      L7_2 = A0_2.ParamIntList
      L7_2 = L7_2[L5_2]
      L1_2[L6_2] = L7_2
    end
  end
  return L1_2
end
L2_1.get_params = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.GetAllPageNames
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = string
    L7_2 = L7_2.sub
    L8_2 = A0_2
    L9_2 = string
    L9_2 = L9_2.len
    L10_2 = L6_2
    L9_2 = L9_2(L10_2)
    L9_2 = -L9_2
    L7_2 = L7_2(L8_2, L9_2)
    if L6_2 == L7_2 then
      L7_2 = false
      return L7_2
    end
  end
  L2_2 = true
  return L2_2
end
L2_1.check_page_not_already_open = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.TopPage
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.Name
  L3_2 = string
  L3_2 = L3_2.sub
  L4_2 = A0_2
  L5_2 = string
  L5_2 = L5_2.len
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L5_2 = -L5_2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L2_2 == L3_2
  return L3_2
end
L2_1.check_page_is_top = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GotoType2Page
  L2_2 = A0_2.GotoType
  L1_2 = L1_2[L2_2]
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_UIManager
  L3_2 = L2_2
  L2_2 = L2_2.TopPage
  L2_2 = L2_2(L3_2)
  L3_2 = L2_1.check_page_is_top
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = L2_2.LuaTable
  L4_2 = L4_2._enable_inner_goto
  if L4_2 then
    L4_2 = L2_2.LuaTable
    L4_2 = L4_2._do_inner_goto
    L4_2 = L4_2 ~= nil
  end
  return L4_2
end
L2_1.check_inner_goto_condition = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.string_split
    L2_2 = A0_2
    L3_2 = "."
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = L1_2 or L2_2
    if L1_2 then
      L2_2 = #L1_2
      L2_2 = L1_2[L2_2]
    end
    return L2_2
  end
end
L2_1.get_page_name_from_full_path_name = L3_1
return L2_1
