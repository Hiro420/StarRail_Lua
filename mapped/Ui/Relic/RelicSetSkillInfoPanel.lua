local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicSetSkillInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicSetSkillInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A1_2 == nil then
    return
  end
  A0_2._set_skill_id = A1_2
  A0_2._is_show_count = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._init_set_skill_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_all_skill_detail
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_set_skill_name
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A0_2
  L3_2 = A0_2._set_all_skill_info_state
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = ipairs
  L4_2 = A0_2._set_skill_indexs
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._binder
    L8_2 = L8_2.skill_detail_infos
    L8_2 = L8_2[L6_2]
    if L7_2 <= A1_2 then
      L10_2 = L8_2
      L9_2 = L8_2.safe_set_active
      L11_2 = true
      L9_2(L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.set_match
      L11_2 = true
      L9_2(L10_2, L11_2)
      A0_2.contains_set_skill_info = true
    elseif A2_2 then
      L10_2 = L8_2
      L9_2 = L8_2.set_match
      L11_2 = false
      L9_2(L10_2, L11_2)
    end
  end
  A0_2._count = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._set_set_skill_name
  L3_2(L4_2)
end
L0_1.set_count = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A0_2
  L3_2 = A0_2._set_all_skill_info_state
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = ipairs
  L4_2 = A0_2._set_skill_indexs
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = A0_2._binder
    L8_2 = L8_2.skill_detail_infos
    L8_2 = L8_2[L6_2]
    if L7_2 <= A1_2 and A2_2 < L7_2 then
      L10_2 = L8_2
      L9_2 = L8_2.safe_set_active
      L11_2 = true
      L9_2(L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.set_lose
      L9_2(L10_2)
      A0_2.contains_set_skill_info = true
    elseif A1_2 < L7_2 and L7_2 <= A2_2 then
      L10_2 = L8_2
      L9_2 = L8_2.safe_set_active
      L11_2 = true
      L9_2(L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.set_match
      L11_2 = true
      L9_2(L10_2, L11_2)
      A0_2.contains_set_skill_info = true
    end
  end
end
L0_1.set_replace = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2._set_skill_row
  if L2_2 ~= nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.RelicConfigExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.RelicBaseTypeExcelTable
    L4_2 = L4_2.GetData
    L5_2 = L3_2.Type
    L4_2 = L4_2(L5_2)
    L5_2 = G
    L5_2 = L5_2.TextmapStatic
    L5_2 = L5_2.GetText
    L6_2 = L2_2.SetName
    L5_2 = L5_2(L6_2)
    L6_2 = G
    L6_2 = L6_2.TextmapStatic
    L6_2 = L6_2.GetText
    L7_2 = L4_2.BaseTypeText
    L6_2 = L6_2(L7_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.relic_set_name
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetTextID
    L9_2 = "UIText_ShopPage_RelicTip"
    L10_2 = L5_2
    L11_2 = L6_2
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
end
L0_1.set_set_skill_name_with_type = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RelicSetConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._set_skill_id
  L1_2 = L1_2(L2_2)
  A0_2._set_skill_row = L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._set_skill_row
  L2_2 = L2_2.SetSkillList
  L1_2 = L1_2(L2_2)
  A0_2._set_skill_indexs = L1_2
end
L0_1._init_set_skill_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2._set_all_skill_info_state
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = ipairs
  L2_2 = A0_2._set_skill_indexs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.skill_detail_infos
    L6_2 = L6_2[L4_2]
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.RelicSetSkillConfigExcelTable
    L7_2 = L7_2.GetData
    L8_2 = A0_2._set_skill_id
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    L9_2 = L6_2
    L8_2 = L6_2.setup_view
    L10_2 = L7_2
    L11_2 = L5_2
    L8_2(L9_2, L10_2, L11_2)
    L9_2 = L6_2
    L8_2 = L6_2.safe_set_active
    L10_2 = true
    L8_2(L9_2, L10_2)
    L9_2 = L6_2
    L8_2 = L6_2.set_normal
    L8_2(L9_2)
    A0_2.contains_set_skill_info = true
  end
end
L0_1._init_all_skill_detail = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == nil then
    A1_2 = false
  end
  A0_2.contains_set_skill_info = A1_2
  L2_2 = ipairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.skill_detail_infos
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.safe_set_active
    L9_2 = A1_2 or L9_2
    if A1_2 then
      L9_2 = A0_2._set_skill_indexs
      L9_2 = #L9_2
      L9_2 = L5_2 <= L9_2
    end
    L7_2(L8_2, L9_2)
  end
end
L0_1._set_all_skill_info_state = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._set_skill_row
  if L1_2 ~= nil then
    L2_2 = A0_2._is_show_count
    if L2_2 then
      L2_2 = A0_2._count
      if L2_2 ~= nil then
        L2_2 = G
        L2_2 = L2_2.TextmapStatic
        L2_2 = L2_2.GetText
        L3_2 = L1_2.SetName
        L2_2 = L2_2(L3_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.relic_set_name
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetTextID
        L5_2 = "UIText_AvatarRelic_SetName_WithCount"
        L6_2 = L2_2
        L7_2 = A0_2._count
        L3_2(L4_2, L5_2, L6_2, L7_2)
    end
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.relic_set_name
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L1_2.SetName
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._set_set_skill_name = L1_1
return L0_1
