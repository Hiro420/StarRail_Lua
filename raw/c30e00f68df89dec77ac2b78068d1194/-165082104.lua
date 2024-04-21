local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.RogueModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "RogueEndlessRewardAreaItemPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.get_first_selected_object
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_clicked
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L2_1.register_click_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._area_id = A1_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.RogueEndlessGetAreaData
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._area_data = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_info_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_status_view
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "RogueEndlessAreaReward"
  L5_2 = A0_2._area_id
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.set_checked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._area_data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
end
L2_1._refresh_info_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._area_data
  L2_2 = L1_2
  L1_2 = L1_2.GetRewardQuestIDs
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.Count
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetQuestStatusCount
  L5_2 = L1_2
  L6_2 = CS
  L6_2 = L6_2.LEOGBBOPKKO
  L6_2 = L6_2.CMOFEAFMGAK
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = L3_2 == L2_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_progress
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_finish
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  if not L4_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_progress_current
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetText
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_progress_total
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetText
    L7_2 = L2_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_special
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L8_2 = A0_2
  L7_2 = A0_2._has_special_reward
  L9_2 = L1_2
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L2_1._refresh_status_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueCommonExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "Activity_Special_Display_ItemID"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.UintValue
  L3_2 = 0
  L4_2 = A1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A1_2[L6_2]
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.QuestDataExcelTable
    L8_2 = L8_2.GetData
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = L8_2.RewardID
    L10_2 = G
    L10_2 = L10_2.RewardUtils
    L10_2 = L10_2.CreateConfigIDList
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    L11_2 = G
    L11_2 = L11_2.Utils
    L11_2 = L11_2.index_of_item
    L12_2 = L10_2
    L13_2 = L2_2
    L11_2 = L11_2(L12_2, L13_2)
    if nil ~= L11_2 then
      L11_2 = true
      return L11_2
    end
  end
  L3_2 = false
  return L3_2
end
L2_1._has_special_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_handler
  L4_2 = A0_2._area_id
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_btn_clicked = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L2_1._get_first_selected_area_object = L3_1
return L2_1
