local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Achievement.AchievementListInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AchievementListInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AchievementModule
L2_1 = "UIText_AvatarAtlas_TimeCode "
L3_1 = 10
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._data = A3_2
  L4_2 = {}
  A0_2._config_id_list = L4_2
  A0_2._is_overflow = false
  A0_2._is_resized = false
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.IsSelectedByController
    if L1_2 then
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
L0_1._on_left_stick_button_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.title_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.Row
  L3_2 = L3_2.AchievementTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.desc_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.Row
  L3_2 = L3_2.AchievementDesc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item1
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item2
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_btn
  L4_2 = A0_2._on_reward_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_rarity
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
    A0_2._is_controller_selected = true
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
      L0_3 = L0_3.setup_in_control_button_enable
      L2_3 = false
      L0_3(L1_3, L2_3)
      A0_2._is_controller_selected = false
    end
  end
  L1_2.onDeselectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.desc_resize_btn
  L4_2 = A0_2._on_resize_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.desc_element
  L1_2 = L1_2.preferredHeight
  A0_2._default_height = L1_2
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_in_control_tip
  L2_2.IsShowTip = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.localized_tip
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.LayoutRebuilder
  L2_2 = L2_2.ForceRebuildLayoutImmediate
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_in_control_tip
  L3_2 = L3_2.gameObject
  L3_2 = L3_2.transform
  L2_2(L3_2)
end
L0_1.setup_in_control_button_enable = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A1_2 then
    A0_2._data = A1_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._reset_params
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._find_progress_node
  L3_2(L4_2)
  A0_2._index = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._update_static_content
  L3_2(L4_2)
  L3_2 = A0_2._data
  L3_2 = L3_2.QuestStatus
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.BFIPIHOJADI
  if L3_2 ~= L4_2 then
    L3_2 = A0_2._data
    L3_2 = L3_2.QuestStatus
    L4_2 = CS
    L4_2 = L4_2.LEOGBBOPKKO
    L4_2 = L4_2.KBBBFCIHJPC
    if L3_2 ~= L4_2 then
      goto lbl_28
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._update_doing_quest
  L3_2(L4_2)
  goto lbl_40
  ::lbl_28::
  L3_2 = A0_2._data
  L3_2 = L3_2.QuestStatus
  L4_2 = CS
  L4_2 = L4_2.LEOGBBOPKKO
  L4_2 = L4_2.JKFPIINHGPD
  if L3_2 == L4_2 then
    L4_2 = A0_2
    L3_2 = A0_2._update_finish_quest
    L3_2(L4_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._update_closed_quest
    L3_2(L4_2)
  end
  ::lbl_40::
  L4_2 = A0_2
  L3_2 = A0_2._update_btn_status
  L3_2(L4_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.MathUtils
  L1_2 = L1_2.digit_num
  L2_2 = A0_2._data
  L2_2 = L2_2.FinishWay
  L2_2 = L2_2.Progress
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.MathUtils
  L2_2 = L2_2.digit_num
  L3_2 = A0_2._data
  L3_2 = L3_2.CurrentProgress
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 + L2_2
  L2_2 = L3_1
  if L1_2 > L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.progress_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.long_range_progress_root
    A0_2._progress_root = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.long_range_cur_progress_num
    A0_2._cur_progress = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.long_range_ttl_progress_num
    A0_2._ttl_progress = L2_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.long_range_progress_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.progress_root
    A0_2._progress_root = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.cur_progress_num
    A0_2._cur_progress = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.ttl_progress_num
    A0_2._ttl_progress = L2_2
  end
end
L0_1._find_progress_node = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_resized
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.Vector3
    L2_2 = 0
    L3_2 = 0
    L4_2 = 180
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.localized_img
    L2_2 = L2_2.transform
    L3_2 = L2_2
    L2_2 = L2_2.Rotate
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.desc_resize_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._is_overflow = false
  A0_2._is_resized = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.desc_element
  L2_2 = A0_2._default_height
  L1_2.preferredHeight = L2_2
end
L0_1._reset_params = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.status_title_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.complete_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.record_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.bg_img
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.status_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.Row
  L1_2 = L1_2.ShowType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ShowType
  L2_2 = L2_2.HiddenDesc
  if L1_2 ~= L2_2 then
    L1_2 = A0_2._progress_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._cur_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = A0_2._data
    L3_2 = L3_2.CurrentProgress
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._ttl_progress
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = A0_2._data
    L3_2 = L3_2.FinishWay
    L3_2 = L3_2.Progress
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._progress_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.Row
  L1_2 = L1_2.ShowType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ShowType
  L2_2 = L2_2.HiddenDesc
  if L1_2 == L2_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.QuestStatus
    L2_2 = CS
    L2_2 = L2_2.LEOGBBOPKKO
    L2_2 = L2_2.BFIPIHOJADI
    if L1_2 ~= L2_2 then
      L1_2 = A0_2._data
      L1_2 = L1_2.QuestStatus
      L2_2 = CS
      L2_2 = L2_2.LEOGBBOPKKO
      L2_2 = L2_2.KBBBFCIHJPC
      if L1_2 ~= L2_2 then
        goto lbl_92
      end
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.status
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  ::lbl_92::
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.status
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._update_doing_quest = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.bg_img
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.complete_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.status_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.status
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._progress_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Achievement_Finished"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_update_continues_record_info
  L1_2(L2_2)
end
L0_1._update_finish_quest = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.bg_img
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.complete_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.status_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.status
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_btn
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._progress_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = tonumber
  L2_2 = os
  L2_2 = L2_2.date
  L3_2 = "%Y"
  L4_2 = A0_2._data
  L4_2 = L4_2.AchievedTime
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L2_2(L3_2, L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = tonumber
  L3_2 = os
  L3_2 = L3_2.date
  L4_2 = "%m"
  L5_2 = A0_2._data
  L5_2 = L5_2.AchievedTime
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2, L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2 = tonumber
  L4_2 = os
  L4_2 = L4_2.date
  L5_2 = "%d"
  L6_2 = A0_2._data
  L6_2 = L6_2.AchievedTime
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.num1
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L2_1
  L7_2 = L1_2
  L8_2 = L2_2
  L9_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.status
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = "UIText_Achievement_Received"
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_update_continues_record_info
  L4_2(L5_2)
end
L0_1._update_closed_quest = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  A0_2._config_id_list = L1_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTableSorted
  L2_2 = A0_2._data
  L2_2 = L2_2.Reward
  L2_2 = L2_2.RewardID
  L1_2 = L1_2(L2_2)
  L2_2 = #L1_2
  if 0 < L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.RewardItemIconLite
    L5_2 = G
    L5_2 = L5_2.RewardItemIconLiteBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.bind
    L5_2 = A0_2._binder
    L5_2 = L5_2.item1
    L3_2(L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.setup_view
    L5_2 = L1_2[1]
    L5_2 = L5_2.ItemID
    L3_2(L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.set_count
    L5_2 = L1_2[1]
    L5_2 = L5_2.Count
    L3_2(L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.hide_item_num
    L3_2(L4_2)
    L4_2 = L2_2
    L3_2 = L2_2.set_attachment_getted
    L5_2 = A0_2._data
    L5_2 = L5_2.QuestStatus
    L6_2 = CS
    L6_2 = L6_2.LEOGBBOPKKO
    L6_2 = L6_2.CMOFEAFMGAK
    L5_2 = L5_2 == L6_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.item1
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._config_id_list
    L5_2 = L1_2[1]
    L5_2 = L5_2.ItemID
    L3_2(L4_2, L5_2)
  end
  L2_2 = #L1_2
  if 1 < L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.RewardItemIconLite
    L5_2 = G
    L5_2 = L5_2.RewardItemIconLiteBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.bind
    L5_2 = A0_2._binder
    L5_2 = L5_2.item2
    L3_2(L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.setup_view
    L5_2 = L1_2[2]
    L5_2 = L5_2.ItemID
    L3_2(L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.set_count
    L5_2 = L1_2[2]
    L5_2 = L5_2.Count
    L3_2(L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.hide_item_num
    L3_2(L4_2)
    L4_2 = L2_2
    L3_2 = L2_2.set_attachment_getted
    L5_2 = A0_2._data
    L5_2 = L5_2.QuestStatus
    L6_2 = CS
    L6_2 = L6_2.LEOGBBOPKKO
    L6_2 = L6_2.CMOFEAFMGAK
    L5_2 = L5_2 == L6_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.item2
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._config_id_list
    L5_2 = L1_2[2]
    L5_2 = L5_2.ItemID
    L3_2(L4_2, L5_2)
  else
    L2_2 = #L1_2
    if L2_2 == 0 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.item2
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.item1
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._set_texts
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._update_rarity
  L2_2(L3_2)
end
L0_1._update_static_content = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._data
  L1_2 = L1_2.Row
  L1_2 = L1_2.RecordType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RecordType
  L2_2 = L2_2.None
  if L1_2 ~= L2_2 then
    L1_2 = L1_1.RecordProcess
    L2_2 = L1_2
    L1_2 = L1_2.ContainsKey
    L3_2 = A0_2._data
    L3_2 = L3_2.Row
    L3_2 = L3_2.RecordType
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 ~= false then
      goto lbl_25
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.record_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  do return end
  ::lbl_25::
  L1_2 = A0_2._binder
  L1_2 = L1_2.record_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = L1_1.RecordProcess
  L2_2 = A0_2._data
  L2_2 = L2_2.Row
  L2_2 = L2_2.RecordType
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2._binder
  L2_2 = L2_2.record_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._data
  L4_2 = L4_2.Row
  L4_2 = L4_2.RecordText
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._try_update_continues_record_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._data
  L1_2 = L1_2.Row
  L1_2 = L1_2.ShowType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ShowType
  L2_2 = L2_2.HiddenDesc
  if L1_2 == L2_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.QuestStatus
    L2_2 = CS
    L2_2 = L2_2.LEOGBBOPKKO
    L2_2 = L2_2.BFIPIHOJADI
    if L1_2 ~= L2_2 then
      L1_2 = A0_2._data
      L1_2 = L1_2.QuestStatus
      L2_2 = CS
      L2_2 = L2_2.LEOGBBOPKKO
      L2_2 = L2_2.KBBBFCIHJPC
      if L1_2 ~= L2_2 then
        goto lbl_109
      end
    end
    L1_2 = G
    L1_2 = L1_2.TextmapStatic
    L1_2 = L1_2.GetText
    L2_2 = A0_2._data
    L2_2 = L2_2.Row
    L2_2 = L2_2.AchievementDesc
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.title_text
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._data
    L4_2 = L4_2.Row
    L4_2 = L4_2.AchievementTitle
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._data
    L2_2 = L2_2.Row
    L2_2 = L2_2.ParamList
    if L2_2 ~= nil then
      L2_2 = A0_2._data
      L2_2 = L2_2.Row
      L2_2 = L2_2.ParamList
      L2_2 = L2_2.Length
      if 0 < L2_2 then
        L2_2 = {}
        L3_2 = 0
        L4_2 = A0_2._data
        L4_2 = L4_2.Row
        L4_2 = L4_2.ParamList
        L4_2 = L4_2.Length
        L4_2 = L4_2 - 1
        L5_2 = 1
        for L6_2 = L3_2, L4_2, L5_2 do
          L7_2 = table
          L7_2 = L7_2.insert
          L8_2 = L2_2
          L9_2 = A0_2._data
          L9_2 = L9_2.Row
          L9_2 = L9_2.ParamList
          L9_2 = L9_2[L6_2]
          L7_2(L8_2, L9_2)
        end
        L3_2 = A0_2._binder
        L3_2 = L3_2.desc_text
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetTextID
        L5_2 = A0_2._data
        L5_2 = L5_2.Row
        L5_2 = L5_2.HideAchievementDesc
        L6_2 = table
        L6_2 = L6_2.unpack
        L7_2 = L2_2
        L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    end
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.desc_text
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = A0_2._data
      L4_2 = L4_2.Row
      L4_2 = L4_2.HideAchievementDesc
      L2_2(L3_2, L4_2)
    end
    L2_2 = A0_2._binder
    L2_2 = L2_2.status_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.status_title_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.status
    L2_2 = L2_2.transform
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.status
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Quest_Label_InProgress"
    L2_2(L3_2, L4_2)
  ::lbl_109::
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.status_title_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.title_text
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._data
    L3_2 = L3_2.Row
    L3_2 = L3_2.AchievementTitle
    L1_2(L2_2, L3_2)
    L1_2 = G
    L1_2 = L1_2.TextmapStatic
    L1_2 = L1_2.GetText
    L2_2 = A0_2._data
    L2_2 = L2_2.Row
    L2_2 = L2_2.AchievementDesc
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._data
    L2_2 = L2_2.Row
    L2_2 = L2_2.ParamList
    if L2_2 ~= nil then
      L2_2 = A0_2._data
      L2_2 = L2_2.Row
      L2_2 = L2_2.ParamList
      L2_2 = L2_2.Length
      if 0 < L2_2 then
        L2_2 = {}
        L3_2 = 0
        L4_2 = A0_2._data
        L4_2 = L4_2.Row
        L4_2 = L4_2.ParamList
        L4_2 = L4_2.Length
        L4_2 = L4_2 - 1
        L5_2 = 1
        for L6_2 = L3_2, L4_2, L5_2 do
          L7_2 = table
          L7_2 = L7_2.insert
          L8_2 = L2_2
          L9_2 = A0_2._data
          L9_2 = L9_2.Row
          L9_2 = L9_2.ParamList
          L9_2 = L9_2[L6_2]
          L7_2(L8_2, L9_2)
        end
        L3_2 = A0_2._binder
        L3_2 = L3_2.desc_text
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetTextID
        L5_2 = A0_2._data
        L5_2 = L5_2.Row
        L5_2 = L5_2.AchievementDesc
        L6_2 = table
        L6_2 = L6_2.unpack
        L7_2 = L2_2
        L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
        L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    end
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.desc_text
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = A0_2._data
      L4_2 = L4_2.Row
      L4_2 = L4_2.AchievementDesc
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._set_texts = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AchievementSeriesExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._data
  L2_2 = L2_2.SeriesID
  L1_2 = L1_2(L2_2)
  A0_2._rarity_icon_path = ""
  L2_2 = A0_2._data
  L2_2 = L2_2.Row
  L2_2 = L2_2.Rarity
  if L2_2 == "Low" then
    L2_2 = L1_2.CopperIconPath
    A0_2._rarity_icon_path = L2_2
  else
    L2_2 = A0_2._data
    L2_2 = L2_2.Row
    L2_2 = L2_2.Rarity
    if L2_2 == "Mid" then
      L2_2 = L1_2.SilverIconPath
      A0_2._rarity_icon_path = L2_2
    else
      L2_2 = A0_2._data
      L2_2 = L2_2.Row
      L2_2 = L2_2.Rarity
      if L2_2 == "High" then
        L2_2 = L1_2.GoldIconPath
        A0_2._rarity_icon_path = L2_2
      end
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.rarity_icon
  L5_2 = A0_2._rarity_icon_path
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._update_rarity = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L3_2 = L1_2
  L2_2 = L1_2.Add
  L4_2 = A0_2._data
  L4_2 = L4_2.Quest
  L4_2 = L4_2.ID
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.SendTakeQuestRewardPacket
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.update_list_panel_index
  L4_2 = A0_2._index
  L2_2(L3_2, L4_2)
end
L0_1._on_reward_btn_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._is_controller_selected
    if L1_2 ~= nil then
      L1_2 = A0_2._is_controller_selected
      if L1_2 == false then
        return
      end
    end
  end
  L1_2 = A0_2._is_resized
  if L1_2 == false then
    L1_2 = A0_2._binder
    L1_2 = L1_2.desc_element
    L1_2 = L1_2.preferredHeight
    A0_2._previous_height = L1_2
    L1_2 = A0_2._binder
    L1_2 = L1_2.desc_element
    L2_2 = A0_2._binder
    L2_2 = L2_2.desc_text
    L2_2 = L2_2.preferredHeight
    L1_2.preferredHeight = L2_2
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.Vector3
    L2_2 = 0
    L3_2 = 0
    L4_2 = 180
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.localized_img
    L2_2 = L2_2.transform
    L3_2 = L2_2
    L2_2 = L2_2.Rotate
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    A0_2._is_resized = true
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.desc_element
    L2_2 = A0_2._previous_height
    L1_2.preferredHeight = L2_2
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.Vector3
    L2_2 = 0
    L3_2 = 0
    L4_2 = 180
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.localized_img
    L2_2 = L2_2.transform
    L3_2 = L2_2
    L2_2 = L2_2.Rotate
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    A0_2._is_resized = false
  end
  L1_2 = A0_2._refresh_callback
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.UnityEngine
    L1_2 = L1_2.UI
    L1_2 = L1_2.LayoutRebuilder
    L1_2 = L1_2.ForceRebuildLayoutImmediate
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L2_2 = L2_2.transform
    L1_2(L2_2)
    L1_2 = A0_2._refresh_callback
    L2_2 = A0_2._refresh_owner
    L3_2 = A0_2._index
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_resize_btn_clicked = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._refresh_owner = A1_2
  A0_2._refresh_callback = A2_2
end
L0_1.register_refresh_callback = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1.do_refresh_for_desc_btn = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.get_string_display_length
  L2_2 = A0_2._binder
  L2_2 = L2_2.desc_text
  L2_2 = L2_2.text
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = 0
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.desc_text
  L3_2 = L2_2
  L2_2 = L2_2.GetDisplayLength
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 ~= L2_2
  A0_2._is_overflow = L1_2
end
L0_1._update_text_overflow_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_resized
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.desc_resize_btn
    L1_2 = L1_2.transform
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.desc_resize_btn
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 10
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    if L0_3 ~= nil then
      L0_3 = A0_2._binder
      if L0_3 ~= nil then
        goto lbl_8
      end
    end
    do return end
    ::lbl_8::
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._update_text_overflow_status
    L0_3(L1_3)
    L0_3 = A0_2._binder
    L0_3 = L0_3.desc_resize_btn
    L0_3 = L0_3.transform
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = A0_2._is_overflow
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._update_btn_status = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_cmpt
  L1_2 = L1_2.isPlaying
  if L1_2 == false then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animation_cmpt
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L1_2(L2_2)
  end
end
L0_1.play_hidden_achievement_effect = L4_1
return L0_1
