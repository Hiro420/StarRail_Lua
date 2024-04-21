local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Common.CommonRewardListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.CommonRewardListPanelNoMaskBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HandbookBattleCollegeGroupPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.BattleCollegeModule
L2_1 = "DailyMission_TeachInfoRow_Lock"
L3_1 = "DailyMission_TeachInfoRow_Unlock"
L4_1 = "DailyMission_TeachInfoRow_UnlockHint"
L5_1 = 1
function L6_1(A0_2)
  local L1_2
end
L0_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2.on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2.on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.CommonRewardListPanel
  L4_2 = G
  L4_2 = L4_2.CommonRewardListPanelNoMaskBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.reward_panel = L1_2
  L1_2 = A0_2.reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reward
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._enable_in_control
  L3_2 = false
  L1_2(L2_2, L3_2)
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
    L0_3 = A0_2.unlock
    if L0_3 ~= nil then
      L0_3 = A0_2.unlock
      if not L0_3 then
        goto lbl_17
      end
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._enable_in_control
    L2_3 = true
    L0_3(L1_3, L2_3)
    ::lbl_17::
    L0_3 = A0_2._on_select_callback
    if L0_3 ~= nil then
      L0_3 = A0_2._on_select_callback
      L1_3 = A0_2._on_select_listener
      L2_3 = A0_2._on_select_param
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._enable_in_control
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.unlock
  if not L1_2 then
    return
  end
  L1_2 = A0_2._config_id_list
  if L1_2 ~= nil then
    L1_2 = A0_2._config_id_list
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_id_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1.show_reward_dialog = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TutorialSupportModule
  L4_2 = L3_2
  L3_2 = L3_2.SetNodeDynamicKey
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_go
  L5_2 = L5_2.gameObject
  L6_2 = A1_2.ID
  L3_2(L4_2, L5_2, L6_2)
  A0_2.data = A1_2
  L3_2 = A0_2.data
  L4_2 = L3_2
  L3_2 = L3_2.IsUnlock
  L3_2 = L3_2(L4_2)
  A0_2.unlock = L3_2
  L3_2 = A1_2.ID
  L3_2 = L3_2 == A2_2
  A0_2.fake_lock = L3_2
  L4_2 = A0_2
  L3_2 = A0_2.custom_setup_view
  L3_2(L4_2)
end
L0_1.setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_status_view
  L3_2 = A0_2.unlock
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_rewards
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  L1_2(L2_2)
end
L0_1.custom_setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_status_view
  L3_2 = A0_2.unlock
  L1_2(L2_2, L3_2)
end
L0_1._on_return_to_top = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.fadeInTimer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
end
L0_1.play_unlock_anim = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "BattleCollegeGroupTabUnlock"
  L4_2 = A0_2.data
  L4_2 = L4_2.ID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.seen_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "BattleCollegeGroupTabNew"
  L4_2 = A0_2.data
  L4_2 = L4_2.ID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.seen_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 < 10 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_index
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = "0"
    L5_2 = A1_2
    L4_2 = L4_2 .. L5_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_index
    L3_2 = L2_2
    L2_2 = L2_2.SetCustomizedText
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_index = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2.reward_id_list = L1_2
  L1_2 = 0
  L2_2 = A0_2.data
  L2_2 = L2_2.BattleCollegeDataList
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2.reward_id_list
    L7_2 = A0_2.data
    L7_2 = L7_2.BattleCollegeDataList
    L7_2 = L7_2[L4_2]
    L7_2 = L7_2.Row
    L7_2 = L7_2.RewardID
    L5_2(L6_2, L7_2)
  end
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTableFromRewardList
  L2_2 = A0_2.reward_id_list
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = {}
  end
  A0_2.all_rewards = L1_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.sort_reward_item
  L2_2 = A0_2.all_rewards
  L1_2(L2_2)
end
L0_1._calc_rewards = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._calc_rewards
  L1_2(L2_2)
  L1_2 = A0_2.reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_all_get
  L3_2 = A0_2.data
  L3_2 = L3_2.IsFinish
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2.all_rewards
  L1_2(L2_2, L3_2)
  L1_2 = {}
  A0_2._config_id_list = L1_2
  L1_2 = ipairs
  L2_2 = A0_2.all_rewards
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._config_id_list
    L8_2 = L5_2.ItemID
    L6_2(L7_2, L8_2)
  end
end
L0_1._setup_rewards = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_normal_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.data
  L3_2 = L3_2.IsAdvanced
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_advance_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.data
  L3_2 = L3_2.IsAdvanced
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2.data
  L3_2 = L3_2.Row
  L3_2 = L3_2.BattleCollegeTypeGroupIDTitle
  L1_2(L2_2, L3_2)
end
L0_1._setup_info_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.progress_bar
  L1_2 = L1_2.MaskComp
  L2_2 = A0_2.data
  L2_2 = L2_2.FinishCount
  L3_2 = A0_2.data
  L3_2 = L3_2.TotalCount
  L2_2 = L2_2 / L3_2
  L1_2.fillAmount = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_current_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2.data
  L3_2 = L3_2.FinishCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_total_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2.data
  L3_2 = L3_2.TotalCount
  L1_2(L2_2, L3_2)
end
L0_1._setup_progress_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
  end
  if not A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_lock
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_BattleCollege_LockByProgress"
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_complete
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2.data
  L4_2 = L4_2.IsFinish
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_index
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._setup_status_view = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._on_select_callback = A1_2
  A0_2._on_select_listener = A2_2
  A0_2._on_select_param = A3_2
end
L0_1.register_select_callback = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.canvas_group
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L6_2.alpha = A1_2
  end
end
L0_1.set_canvas_translucent = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.unlock
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_BattleCollege_LockByProgress"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.BattleCollege.BattleCollegePage"
  L3_2 = A0_2.data
  L3_2 = L3_2.ID
  L1_2(L2_2, L3_2)
end
L0_1.on_btn_go = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIUtils
  L2_2 = L2_2.setup_in_control_tip_enable
  L3_2 = A0_2._binder
  L3_2 = L3_2.controls_tip
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._enable_in_control = L6_1
return L0_1
