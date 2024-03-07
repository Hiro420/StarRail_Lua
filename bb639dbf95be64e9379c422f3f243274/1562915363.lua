local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.ActivityFeverTime.Reward.FeverTimeRewardInfoRowBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FeverTimeRewardInfoRow"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = A0_2._on_btn_get
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_in_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._setup_in_control_button_enable
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = A1_2.ID
  A0_2._quest_id = L5_2
  L5_2 = A1_2.DataRow
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.FinishWayExcelTable
  L6_2 = L6_2.GetData
  L7_2 = L5_2.FinishWayID
  L6_2 = L6_2(L7_2)
  L7_2 = A1_2.Progress
  if L7_2 ~= nil then
    L7_2 = A1_2.TotalProgress
    if L7_2 ~= nil then
      L7_2 = A0_2._binder
      L7_2 = L7_2.text_progress_cur
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetText
      L9_2 = tostring
      L10_2 = A1_2.Progress
      L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.text_progress_total
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetText
      L9_2 = tostring
      L10_2 = A1_2.TotalProgress
      L9_2, L10_2, L11_2, L12_2, L13_2 = L9_2(L10_2)
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    end
  end
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_desc
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetTextID
  L9_2 = L5_2.QuestTitle
  L10_2 = L6_2.ParamInt1
  L11_2 = L6_2.ParamInt2
  L12_2 = L6_2.ParamInt3
  L13_2 = L6_2.Progress
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L7_2 = A1_2.Status
  L9_2 = A0_2
  L8_2 = A0_2._refresh_reward_info
  L10_2 = L5_2.RewardID
  L11_2 = CS
  L11_2 = L11_2.BLHLCHNAJKK
  L11_2 = L11_2.CDJHHIHBNMN
  L11_2 = L7_2 == L11_2
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = A0_2
  L8_2 = A0_2._refresh_btn_state
  L10_2 = CS
  L10_2 = L10_2.BLHLCHNAJKK
  L10_2 = L10_2.CDJHHIHBNMN
  L10_2 = L7_2 == L10_2
  L11_2 = CS
  L11_2 = L11_2.BLHLCHNAJKK
  L11_2 = L11_2.FMLBEGJJHMJ
  L11_2 = L7_2 == L11_2
  L12_2 = A2_2
  L13_2 = A3_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
end
L0_1.setup_view_by_quest = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RewardExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.IsSpecial
  A0_2._is_special = L4_2
  A0_2._is_reward_taken = A2_2
  A0_2._reward_id = A1_2
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.CreateRewardItemTableSorted
  L5_2 = A0_2._reward_id
  L4_2 = L4_2(L5_2)
  A0_2._reward_data = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_reward
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A0_2._reward_data
  L4_2(L5_2, L6_2)
end
L0_1._refresh_reward_info = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_lock
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not A3_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_got
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A2_2 or L7_2
  if A2_2 then
    L7_2 = A3_2
  end
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_progress
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_progress_count
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  if not A1_2 and not A2_2 and A3_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_progress
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = not A4_2
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_progress_count
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = A4_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_get
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A1_2 or L7_2
  L7_2 = A1_2 and not A2_2 and L7_2
  L5_2(L6_2, L7_2)
end
L0_1._refresh_btn_state = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.AMFNHGKACLB
  L3_2 = A0_2._quest_id
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_get = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._reward_data
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = A0_2._reward_data
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.ItemID
    L6_2(L7_2, L8_2)
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.Common.ItemTip.ItemTipsDialog"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_detail = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_btn_get
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_tip_get
  L2_2.IsShowTip = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_btn_detail
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_key_map_zoom
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_in_control_button_enable = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L1_1
return L0_1
