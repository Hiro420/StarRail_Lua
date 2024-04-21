local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherChallengeRewardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_root_btn
  L1_2 = L1_2(L2_2)
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._scroll_rect
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._scroll_rect
    L1_3 = L0_3
    L0_3 = L0_3.ScrollToTransform
    L2_3 = A0_2._binder
    L2_3 = L2_3.item_icon_panel
    L3_3 = L2_3
    L2_3 = L2_3.get_root_btn
    L2_3 = L2_3(L3_3)
    L2_3 = L2_3.transform
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateRewardItemTable
  L3_2 = A1_2.RewardID
  L2_2 = L2_2(L3_2)
  A0_2._reward_list = L2_2
  L2_2 = A1_2.IsFinished
  A0_2._is_got = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_item
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skill_core
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._has_skill_core_item = false
  L1_2 = A0_2._reward_list
  if L1_2 == nil then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2._reward_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.ItemExcelTable
    L6_2 = L6_2.GetData
    L7_2 = L5_2.ItemID
    L6_2 = L6_2(L7_2)
    L7_2 = L6_2.ItemSubType
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.ItemSubType
    L8_2 = L8_2.AetherSkill
    if L7_2 == L8_2 then
      L8_2 = A0_2
      L7_2 = A0_2._setup_skill_core_view
      L9_2 = L6_2
      L10_2 = L5_2.Count
      L7_2(L8_2, L9_2, L10_2)
    else
      L8_2 = A0_2
      L7_2 = A0_2._setup_item_view
      L9_2 = L6_2
      L10_2 = L5_2.Count
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L0_1._refresh = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._has_skill_core_item = true
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_skill_core
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.skill_item_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2.ID
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.skill_item_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_count
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.skill_item_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_attachment_getted
  L5_2 = A0_2._is_got
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_skill_core_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.ItemName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_skill_core_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.ItemDesc
  L3_2(L4_2, L5_2)
end
L0_1._setup_skill_core_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_item
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.item_icon_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2.ID
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.item_icon_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_count
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.item_icon_panel
  L4_2 = L3_2
  L3_2 = L3_2.set_attachment_getted
  L5_2 = A0_2._is_got
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_item_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.ItemName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_item_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.ItemDesc
  L3_2(L4_2, L5_2)
end
L0_1._setup_item_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.item_icon_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_root_btn
  L3_2 = L3_2(L4_2)
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3
    if A2_3 then
      return
    end
    L3_3 = A1_2
    L4_3 = A2_2
    L5_3 = A0_3
    L3_3(L4_3, L5_3)
  end
  L3_2.OnNaviHandler = L4_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.skill_item_panel
  L4_2 = L3_2
  L3_2 = L3_2.get_root_btn
  L3_2 = L3_2(L4_2)
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3
    if A2_3 then
      return
    end
    L3_3 = A1_2
    L4_3 = A2_2
    L5_3 = A0_3
    L3_3(L4_3, L5_3)
  end
  L3_2.OnNaviHandler = L4_2
end
L0_1.set_navi_out_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._has_skill_core_item
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.skill_item_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2)
  A0_2._scroll_rect = A1_2
end
L0_1.set_scroll_rect = L1_1
return L0_1
