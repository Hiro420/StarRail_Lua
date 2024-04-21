local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "QuestTimeLimitItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.QuestModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.BigMapModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.ActivityModule
L4_1 = "UIText_ActivityQuestTimeLimit_Penacony_Locked_Tip"
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  A0_2._config_id_list = L1_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.GetActivityQuestTimeLimitData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._quest_id = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._on_select_callback = A1_2
  A0_2._on_select_callback_owner = A2_2
end
L0_1.register_on_select_callback = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L5_1
function L5_1(A0_2)
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
L0_1._on_left_stick_button_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get_reward
  L4_2 = A0_2._on_btn_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_goto
  L4_2 = A0_2._on_btn_goto
  L1_2(L2_2, L3_2, L4_2)
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
    L0_3 = A0_2._on_select_callback
    if L0_3 ~= nil then
      L0_3 = A0_2._on_select_callback_owner
      if L0_3 ~= nil then
        L0_3 = A0_2._on_select_callback
        L1_3 = A0_2._on_select_callback_owner
        L2_3 = A0_2._binder
        L2_3 = L2_3.root
        L0_3(L1_3, L2_3)
      end
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
      L0_3 = L0_3.setup_in_control_button_enable
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.goto_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.goto_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.get_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.get_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_in_control_button_enable = L5_1
function L5_1(A0_2)
  local L1_2
  A0_2._quest_data = nil
  A0_2._quest_id = nil
end
L0_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._quest_id
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._quest_data = L1_2
  L1_2 = A0_2._quest_data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_status
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_progress
  L1_2(L2_2)
end
L0_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_navigation_btn_gameobject = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2._config_id_list = L1_2
  L1_2 = A0_2._quest_data
  if L1_2 then
    L1_2 = A0_2._quest_data
    L1_2 = L1_2.DataRow
    L1_2 = L1_2.RewardID
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.RewardUtils
      L1_2 = L1_2.CreateRewardItemTableSorted
      L2_2 = A0_2._quest_data
      L2_2 = L2_2.DataRow
      L2_2 = L2_2.RewardID
      L1_2 = L1_2(L2_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_reward
      L3_2 = L2_2
      L2_2 = L2_2.set_all_get
      L4_2 = A0_2._quest_data
      L4_2 = L4_2.Status
      L5_2 = CS
      L5_2 = L5_2.LEOGBBOPKKO
      L5_2 = L5_2.CMOFEAFMGAK
      L4_2 = L4_2 == L5_2
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_reward
      L3_2 = L2_2
      L2_2 = L2_2.setup_view
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_reward
      L3_2 = L2_2
      L2_2 = L2_2.safe_set_active
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = G
      L2_2 = L2_2.RewardUtils
      L2_2 = L2_2.CreateConfigIDList
      L3_2 = A0_2._quest_data
      L3_2 = L3_2.DataRow
      L3_2 = L3_2.RewardID
      L2_2 = L2_2(L3_2)
      A0_2._config_id_list = L2_2
  end
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_reward
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_reward = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._quest_data
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_title
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_title
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = A0_2._quest_data
      L3_2 = L3_2.DataRow
      L3_2 = L3_2.QuestTitle
      L4_2 = A0_2._quest_data
      L4_2 = L4_2.FinishWayRow
      L4_2 = L4_2.ParamInt1
      L5_2 = A0_2._quest_data
      L5_2 = L5_2.FinishWayRow
      L5_2 = L5_2.ParamInt2
      L6_2 = A0_2._quest_data
      L6_2 = L6_2.FinishWayRow
      L6_2 = L6_2.ParamInt3
      L7_2 = A0_2._quest_data
      L7_2 = L7_2.TotalProgress
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
    end
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.QuestTimeLimitExcelTable
    L1_2 = L1_2.GetData
    L2_2 = A0_2._quest_id
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2.FigurePath
    if L2_2 ~= "" then
      L2_2 = A0_2._binder
      L2_2 = L2_2.img_icon
      if L2_2 ~= nil then
        L3_2 = A0_2
        L2_2 = A0_2._async_load_sprite_to
        L4_2 = A0_2._binder
        L4_2 = L4_2.img_icon
        L5_2 = L1_2.FigurePath
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end
L0_1._setup_title = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._quest_data
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_goto
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._quest_data
    L3_2 = L3_2.Status
    L4_2 = CS
    L4_2 = L4_2.LEOGBBOPKKO
    L4_2 = L4_2.KBBBFCIHJPC
    L4_2 = A0_2
    L3_2 = A0_2._can_goto
    L3_2 = L3_2 == L4_2 and L3_2
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_get_reward
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._quest_data
    L3_2 = L3_2.Status
    L4_2 = CS
    L4_2 = L4_2.LEOGBBOPKKO
    L4_2 = L4_2.JKFPIINHGPD
    L3_2 = L3_2 == L4_2
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_got
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = A0_2._quest_data
    L3_2 = L3_2.Status
    L4_2 = CS
    L4_2 = L4_2.LEOGBBOPKKO
    L4_2 = L4_2.CMOFEAFMGAK
    L3_2 = L3_2 == L4_2
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_status = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._quest_data
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_in_progress
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_in_progress
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = A0_2._quest_data
      L3_2 = L3_2.Status
      L4_2 = CS
      L4_2 = L4_2.LEOGBBOPKKO
      L4_2 = L4_2.KBBBFCIHJPC
      L3_2 = L3_2 == L4_2
      L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_cur_progress
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_cur_progress
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetText
      L3_2 = A0_2._quest_data
      L3_2 = L3_2.Progress
      L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_total_progress
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_total_progress
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetText
      L3_2 = A0_2._quest_data
      L3_2 = L3_2.TotalProgress
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._setup_progress = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._quest_data
  L1_2 = L1_2.DataRow
  L1_2 = L1_2.GotoID
  if L1_2 ~= 0 then
    L1_2 = true
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.NpcMonsterTrackQuestExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._quest_id
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = true
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L0_1._can_goto = L5_1
function L5_1(A0_2)
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
  L4_2 = A0_2._quest_id
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.JCCHEMBPEEE
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_btn_get_reward = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.QuestTimeLimitExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._quest_id
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SystemOpenModule
  L2_2 = L2_2.IsOpen
  L3_2 = L1_2.UnlockData
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = L4_1
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.TryGetQuestData
  L4_2 = A0_2._quest_id
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.DataRow
  L3_2 = L3_2.GotoID
  if L3_2 ~= 0 then
    L3_2 = G
    L3_2 = L3_2.GotoManager
    L3_2 = L3_2.Goto
    L4_2 = L2_2.DataRow
    L4_2 = L4_2.GotoID
    L3_2(L4_2)
  else
    L3_2 = A0_2._activity_data
    L4_2 = L3_2
    L3_2 = L3_2.TryTrackQuestMonster
    L5_2 = A0_2._quest_id
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_btn_goto = L5_1
return L0_1
