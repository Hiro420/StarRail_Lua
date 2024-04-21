local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildLevelRewardListRowBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.EvolveBuildModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "EvolveBuildLevelRewardListRow"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.get_btn
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
  L1_2 = L1_2.root_btn
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
    L2_3 = L2_3.root_btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
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
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  L1_2.onSelectTrigger = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  L1_2.onDeselectTrigger = nil
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2.Level
  L5_2 = G
  L5_2 = L5_2.RewardUtils
  L5_2 = L5_2.CreateRewardItemTableSorted
  L6_2 = A1_2.RewardID
  L5_2 = L5_2(L6_2)
  A0_2.reward_items = L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.title
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.reward_list
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = A0_2.reward_items
  L5_2(L6_2, L7_2)
  L5_2 = A1_2.RequiredExp
  L6_2 = A3_2 >= L4_2
  L7_2 = A2_2 >= L5_2 and L7_2
  L8_2 = A2_2 < L5_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.finish_panel
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = L6_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.got_panel
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = L6_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.get_btn
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = L7_2
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._binder
  L9_2 = L9_2.in_progress_panel
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  A0_2._is_available = L7_2
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.RewardExcelTable
  L9_2 = L9_2.GetData
  L10_2 = A1_2.RewardID
  L9_2 = L9_2(L10_2)
  L10_2 = A0_2._binder
  L10_2 = L10_2.node_normal
  L11_2 = L10_2
  L10_2 = L10_2.SafeSetActive
  L12_2 = L9_2.IsSpecial
  L12_2 = not L12_2
  L10_2(L11_2, L12_2)
  L10_2 = A0_2._binder
  L10_2 = L10_2.node_rare
  L11_2 = L10_2
  L10_2 = L10_2.SafeSetActive
  L12_2 = L9_2.IsSpecial
  L10_2(L11_2, L12_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._is_available
  if not L2_2 then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeAfterSeconds
  L3_2 = A1_2 * 0.1
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2._binder
      L0_3 = L0_3.anim
      if L0_3 then
        L0_3 = A0_2._binder
        L0_3 = L0_3.anim
        L1_3 = L0_3
        L0_3 = L0_3.Play
        L2_3 = "UI_EvolveLvRewardListRow_HintFlow"
        L0_3(L1_3, L2_3)
      end
    end
  end
  L2_2(L3_2, L4_2)
end
L1_1.play_anim = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
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
  L5_2 = L5_2.finish_panel
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
  L5_2 = L5_2.node_get
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A1_2 or L7_2
  L7_2 = A1_2 and not A2_2 and L7_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_dark_cover
  if L5_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_dark_cover
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = A2_2
    L5_2(L6_2, L7_2)
  end
end
L1_1._refresh_btn_state = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.RequestTakeFameReward
  L1_2(L2_2)
end
L1_1._on_btn_get = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2.reward_items
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = A0_2.reward_items
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
L1_1._on_btn_detail = L2_1
function L2_1(A0_2, A1_2)
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
L1_1._setup_in_control_button_enable = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1._on_leave_special_zoom = L2_1
return L1_1
