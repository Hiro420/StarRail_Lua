local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = require
L1_1 = "Ui.Adventure.AdventureTalkBtnsPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.Utils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.TalkOptionItemRogueAeonPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.TalkOptionItemRogueAeonPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AdventureTalkBtnsPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.NotifyManager
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_GamePhaseManager
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.DialogueGroupExcelTable
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.GameCore
L4_1 = L4_1.DialogueIconExcelTable
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.NPCComponent
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.PropComponent
L7_1 = CS
L7_1 = L7_1.RPG
L7_1 = L7_1.GameCore
L7_1 = L7_1.TalkTrigger
L7_1 = L7_1.ShowTalkBtnParam
L8_1 = CS
L8_1 = L8_1.RPG
L8_1 = L8_1.GameCore
L8_1 = L8_1.DialogueGroupRow
L9_1 = CS
L9_1 = L9_1.RPG
L9_1 = L9_1.GameCore
L9_1 = L9_1.PropInteractionTrigger
L9_1 = L9_1.ButtonParam
L10_1 = CS
L10_1 = L10_1.RPG
L10_1 = L10_1.GameCore
L10_1 = L10_1.PropOptionTrigger
L10_1 = L10_1.ButtonParam
L11_1 = {}
L11_1.WaitIn = 0
L11_1.FadeIn = 1
L11_1.Normal = 2
L11_1.WaitOut = 3
L11_1.FadeOut = 4
L11_1.ToRemove = 5
L12_1 = 0.05
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.GetMainWorld
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.EntityManagerRef
  A0_2._EntityMng = L1_2
  L1_2 = {}
  A0_2._cached_configs = L1_2
  L1_2 = {}
  A0_2._cached_orderly_keys = L1_2
  L1_2 = {}
  A0_2._key_index_map = L1_2
  L1_2 = {}
  A0_2._trigger_configs = L1_2
  A0_2._last_trigger_count = 0
  A0_2._cur_selected_index = 1
  A0_2._cur_selected_key = nil
  A0_2._is_in_tutorial = false
end
L0_1.ctor = L13_1
function L13_1(A0_2)
  local L1_2
end
L0_1.init = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_trigger_active
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_HideInteractiveUI
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowTriggerUI
  L4_2 = A0_2._on_show_trigger_ui
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideTriggerUI
  L4_2 = A0_2._on_hide_trigger_ui
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowTriggerUIButton
  L4_2 = A0_2._on_show_trigger_ui_button
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideTriggerUIButton
  L4_2 = A0_2._on_hide_trigger_ui_button
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ShowOptionTriggerUI
  L4_2 = A0_2._on_show_option_trigger_ui
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HideOptionTriggerUI
  L4_2 = A0_2._on_hide_option_trigger_ui
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ManualHideTriggerUI
  L4_2 = A0_2._on_manual_remove_option_config
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.EnterTalkScope
  L4_2 = A0_2._on_enter_talk_scope
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ExitTalkScope
  L4_2 = A0_2._on_exit_talk_scope
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RefreshMission
  L4_2 = A0_2._on_refresh_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.CloseTalkDialogue
  L4_2 = A0_2._on_close_talk_dialogue
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialCleanUI
  L4_2 = A0_2._on_tutorial_clean_ui
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeInteractSelectUp
  L4_2 = A0_2._on_maze_interact_select_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MazeInteractSelectDown
  L4_2 = A0_2._on_maze_interact_select_down
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIHideInteractiveUI
  L4_2 = L0_1._on_hide_interactive_ui
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_list
  L2_2 = L1_2
  L1_2 = L1_2.init_node
  L3_2 = 2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_fadein_interval_end
  L4_2 = L12_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fadein_interval = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_fadeout_interval_end
  L4_2 = L12_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fadeout_interval = L1_2
end
L0_1._on_load = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._gen_key
  L4_2 = "SimpleTrigger"
  L5_2 = A1_2.HostRuntimeID
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._gen_simple_trigger_config
  L5_2 = A1_2.IconPath
  L6_2 = A1_2.TextID
  L7_2 = A1_2.HostRuntimeID
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._cache_config
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_apply_cached_configs
  L4_2(L5_2)
end
L0_1._on_show_trigger_ui = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._gen_key
  L4_2 = "SimpleTrigger"
  L5_2 = A1_2.HostRuntimeID
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._cache_config
  L5_2 = L2_2
  L6_2 = {}
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_apply_cached_configs
  L3_2(L4_2)
end
L0_1._on_hide_trigger_ui = L13_1
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil or A1_2 == "" then
    L4_2 = A0_2._binder
    L4_2 = L4_2.get_default_icon_path
    L4_2 = L4_2()
    A1_2 = L4_2
  end
  L5_2 = A0_2
  L4_2 = A0_2._gen_config
  L6_2 = A2_2
  L7_2 = A1_2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_button_common_clicked
    L2_3 = A2_2
    L0_3(L1_3, L2_3)
    L0_3 = L1_1.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.TriggerUIConfirm
    L2_3 = tostring
    L3_3 = A3_2
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
  end
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._gen_simple_trigger_config = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._gen_key
  L4_2 = "SimpleTrigger"
  L5_2 = A1_2.HostRuntimeID
  L6_2 = A1_2.ButtonName
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._gen_trigger_ui_button_config
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._cache_config
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_apply_cached_configs
  L4_2(L5_2)
end
L0_1._on_show_trigger_ui_button = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._gen_key
  L4_2 = "SimpleTrigger"
  L5_2 = A1_2.HostRuntimeID
  L6_2 = A1_2.ButtonName
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._cache_config
  L5_2 = L2_2
  L6_2 = {}
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_apply_cached_configs
  L3_2(L4_2)
end
L0_1._on_hide_trigger_ui_button = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.ButtonIcon
  if L2_2 == nil or L2_2 == "" then
    L3_2 = A0_2._binder
    L3_2 = L3_2.get_default_icon_path
    L3_2 = L3_2()
    L2_2 = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._gen_config
  L5_2 = A1_2.ButtonText
  L6_2 = L2_2
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_button_common_clicked
    L2_3 = A1_2.ButtonText
    L0_3(L1_3, L2_3)
    L0_3 = L1_1.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.TriggerUIButtonConfirm
    L2_3 = A1_2
    L0_3(L1_3, L2_3)
  end
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1._gen_trigger_ui_button_config = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = 0
  L3_2 = A1_2.OptionList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2.OptionList
    L6_2 = L6_2[L5_2]
    L8_2 = A0_2
    L7_2 = A0_2._gen_key
    L9_2 = "OptionTrigger"
    L10_2 = A1_2.HostRuntimeID
    L11_2 = L5_2 + 1
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L9_2 = A0_2
    L8_2 = A0_2._gen_option_trigger_config
    L10_2 = L6_2.ButtonIcon
    L11_2 = L6_2.OptionTextmapID
    L12_2 = L6_2.TriggerCustomString
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L10_2 = A0_2
    L9_2 = A0_2._cache_config
    L11_2 = L7_2
    L12_2 = L8_2
    L9_2(L10_2, L11_2, L12_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_apply_cached_configs
  L2_2(L3_2)
end
L0_1._on_show_option_trigger_ui = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = 0
  L3_2 = A1_2.OptionList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._gen_key
    L8_2 = "OptionTrigger"
    L9_2 = A1_2.HostRuntimeID
    L10_2 = L5_2 + 1
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L8_2 = A0_2
    L7_2 = A0_2._cache_config
    L9_2 = L6_2
    L10_2 = {}
    L7_2(L8_2, L9_2, L10_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_apply_cached_configs
  L2_2(L3_2)
end
L0_1._on_hide_option_trigger_ui = L13_1
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 == nil or A1_2 == "" then
    L4_2 = A0_2._binder
    L4_2 = L4_2.get_default_icon_path
    L4_2 = L4_2()
    A1_2 = L4_2
  end
  L5_2 = A0_2
  L4_2 = A0_2._gen_config
  L6_2 = A2_2
  L7_2 = A1_2
  function L8_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_button_common_clicked
    L2_3 = A2_2
    L0_3(L1_3, L2_3)
    L0_3 = L1_1.notify
    L1_3 = G
    L1_3 = L1_3.CS
    L1_3 = L1_3.NotifyType
    L1_3 = L1_3.OptionTriggered
    L2_3 = A3_2
    L0_3(L1_3, L2_3)
  end
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1._gen_option_trigger_config = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = 0
  L3_2 = A1_2.OptionList
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._gen_key
    L8_2 = "OptionTrigger"
    L9_2 = A1_2.HostRuntimeID
    L10_2 = L5_2 + 1
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L7_2 = A0_2._key_index_map
    L7_2 = L7_2[L6_2]
    if L7_2 ~= nil then
      L7_2 = A0_2._key_index_map
      L7_2 = L7_2[L6_2]
      L8_2 = A0_2._trigger_configs
      L8_2 = L8_2[L7_2]
      L9_2 = L11_1.ToRemove
      L8_2.status = L9_2
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._clean_configs
  L2_2(L3_2)
end
L0_1._on_manual_remove_option_config = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = A0_2
  L2_2 = A0_2._check_rogue_aeon
  L4_2 = A1_2.HostRuntimeID
  L2_2(L3_2, L4_2)
  L2_2 = 0
  L3_2 = A1_2.DialogueGroupInfos
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._gen_key
    L8_2 = "Dialogue"
    L9_2 = A1_2.HostRuntimeID
    L10_2 = L5_2 + 1
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L8_2 = A0_2
    L7_2 = A0_2._gen_dialogue_group_config
    L9_2 = A1_2.HostRuntimeID
    L10_2 = A1_2.GuestRuntimeID
    L11_2 = A1_2.DialogueGroupInfos
    L11_2 = L11_2[L5_2]
    L12_2 = L5_2 == 0
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L9_2 = A0_2
    L8_2 = A0_2._cache_config
    L10_2 = L6_2
    L11_2 = L7_2
    L8_2(L9_2, L10_2, L11_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_apply_cached_configs
  L2_2(L3_2)
end
L0_1._on_enter_talk_scope = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = 0
  L3_2 = A1_2.DialogueGroupInfos
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._gen_key
    L8_2 = "Dialogue"
    L9_2 = A1_2.HostRuntimeID
    L10_2 = L5_2 + 1
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    L8_2 = A0_2
    L7_2 = A0_2._cache_config
    L9_2 = L6_2
    L10_2 = {}
    L7_2(L8_2, L9_2, L10_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_apply_cached_configs
  L2_2(L3_2)
end
L0_1._on_exit_talk_scope = L13_1
function L13_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L5_2 = A0_2._EntityMng
  L6_2 = L5_2
  L5_2 = L5_2.GetEntityByRuntimeID
  L7_2 = A1_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 == nil then
    L6_2 = nil
    return L6_2
  end
  L6_2 = nil
  L7_2 = nil
  L8_2 = A3_2 ~= nil
  if L8_2 then
    L10_2 = A0_2
    L9_2 = A0_2._get_dialogue_group_data_by_id
    L11_2 = L5_2
    L12_2 = A3_2.DialogueGroupID
    L9_2, L10_2 = L9_2(L10_2, L11_2, L12_2)
    L7_2 = L10_2
    L6_2 = L9_2
  elseif A4_2 then
    L10_2 = A0_2
    L9_2 = A0_2._get_dialogue_group_data_by_entity
    L11_2 = L5_2
    L9_2, L10_2 = L9_2(L10_2, L11_2)
    L7_2 = L10_2
    L6_2 = L9_2
  else
    L9_2 = nil
    return L9_2
  end
  L10_2 = A0_2
  L9_2 = A0_2._gen_config
  L11_2 = L6_2
  L12_2 = L7_2
  function L13_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.GameCore
    L0_3 = L0_3.TalkTrigger
    L0_3 = L0_3.TalkNotifyParam
    L0_3 = L0_3()
    L1_3 = A1_2
    L0_3.HostRuntimeID = L1_3
    L1_3 = A2_2
    L0_3.GuestRuntimeID = L1_3
    L1_3 = A3_2
    L0_3.DialogueGroupInfo = L1_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_button_common_clicked
    L3_3 = L6_2
    L1_3(L2_3, L3_3)
    L1_3 = L1_1.notify
    L2_3 = G
    L2_3 = L2_3.CS
    L2_3 = L2_3.NotifyType
    L2_3 = L2_3.StartPlayDialogueGroup
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  return L9_2(L10_2, L11_2, L12_2, L13_2)
end
L0_1._gen_dialogue_group_config = L13_1
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = L3_1.GetData
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.InteractTitle
  L5_2 = L4_1.GetData
  L6_2 = L3_2.IconType
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.IconPath
  L6_2 = G
  L6_2 = L6_2.StrExt
  L6_2 = L6_2.IsNullOrEmpty
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.get_default_icon_path
    L6_2 = L6_2()
    L5_2 = L6_2
  end
  L7_2 = A1_2
  L6_2 = A1_2.GetComponent
  L8_2 = typeof
  L9_2 = L5_1
  L8_2, L9_2 = L8_2(L9_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 ~= nil then
    L8_2 = L6_2
    L7_2 = L6_2.GetNPCName
    L7_2 = L7_2(L8_2)
    L4_2 = L7_2
  end
  L7_2 = L4_2
  L8_2 = L5_2
  return L7_2, L8_2
end
L0_1._get_dialogue_group_data_by_id = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2
  L2_2 = A1_2.GetComponent
  L4_2 = typeof
  L5_2 = L5_1
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L4_2 = A1_2
  L3_2 = A1_2.GetComponent
  L5_2 = typeof
  L6_2 = L6_1
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = nil
  L5_2 = nil
  if L2_2 ~= nil then
    L7_2 = L2_2
    L6_2 = L2_2.GetNPCName
    L6_2 = L6_2(L7_2)
    L4_2 = L6_2
    L6_2 = L4_1.GetData
    L7_2 = L2_2.InteractIconType
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2.IconPath
  elseif L3_2 ~= nil then
    L4_2 = L3_2.InteractTitle
    L6_2 = L4_1.GetData
    L7_2 = L3_2.InteractIconType
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2.IconPath
  end
  L6_2 = G
  L6_2 = L6_2.StrExt
  L6_2 = L6_2.IsNullOrEmpty
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.get_default_icon_path
    L6_2 = L6_2()
    L5_2 = L6_2
  end
  L6_2 = L4_2
  L7_2 = L5_2
  return L6_2, L7_2
end
L0_1._get_dialogue_group_data_by_entity = L13_1
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A0_2
  L3_2 = A0_2._is_cached_to_remove
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._cached_configs
  L4_2 = L4_2[A1_2]
  L5_2 = L4_2 ~= nil
  L7_2 = A0_2
  L6_2 = A0_2._is_cached_to_remove
  L8_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2)
  if L5_2 and L3_2 ~= L6_2 then
    L7_2 = G
    L7_2 = L7_2.Utils
    L7_2 = L7_2.index_of_item
    L8_2 = A0_2._cached_orderly_keys
    L9_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L8_2 = table
      L8_2 = L8_2.remove
      L9_2 = A0_2._cached_orderly_keys
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
    L8_2 = A0_2._cached_configs
    L8_2[A1_2] = nil
    if not L3_2 then
      L9_2 = A0_2
      L8_2 = A0_2._apply_cached_config
      L10_2 = A1_2
      L11_2 = A2_2
      L8_2(L9_2, L10_2, L11_2)
      L9_2 = A0_2
      L8_2 = A0_2._setup_trigger_buttons
      L8_2(L9_2)
    end
    return
  end
  L7_2 = A0_2._cached_configs
  L8_2 = A2_2 or L8_2
  if L3_2 or not A2_2 then
    L8_2 = {}
  end
  L7_2[A1_2] = L8_2
  L7_2 = G
  L7_2 = L7_2.Utils
  L7_2 = L7_2.index_of_item
  L8_2 = A0_2._cached_orderly_keys
  L9_2 = A1_2
  L7_2 = L7_2(L8_2, L9_2)
  if L7_2 == nil then
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._cached_orderly_keys
    L10_2 = A1_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._cache_config = L13_1
function L13_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 == nil
  return L2_2
end
L0_1._is_cached_to_remove = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._applying_cache
  if L1_2 then
    return
  end
  A0_2._applying_cache = true
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 1
  function L3_2()
    local L0_3, L1_3
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
    L0_3 = L0_3._do_apply_cached_configs
    L0_3(L1_3)
    A0_2._applying_cache = false
  end
  L1_2(L2_2, L3_2)
end
L0_1._try_apply_cached_configs = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = ipairs
  L2_2 = A0_2._cached_orderly_keys
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._cached_configs
    L6_2 = L6_2[L5_2]
    L8_2 = A0_2
    L7_2 = A0_2._apply_cached_config
    L9_2 = L5_2
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
  end
  L1_2 = {}
  A0_2._cached_configs = L1_2
  L1_2 = {}
  A0_2._cached_orderly_keys = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_trigger_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._update_configs_when_interrupt
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_refresh_view
  L1_2(L2_2)
end
L0_1._do_apply_cached_configs = L13_1
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A2_2 ~= nil then
    L3_2 = A2_2.status
    if L3_2 == nil then
      L4_2 = A0_2
      L3_2 = A0_2._remove_config
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    else
      L4_2 = A0_2
      L3_2 = A0_2._set_config
      L5_2 = A1_2
      L6_2 = A2_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1._apply_cached_config = L13_1
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A3_2 == nil then
    L4_2 = A1_2
    L5_2 = tostring
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    return L4_2
  else
    L4_2 = A1_2
    L5_2 = tostring
    L6_2 = A2_2
    L5_2 = L5_2(L6_2)
    L6_2 = tostring
    L7_2 = A3_2
    L6_2 = L6_2(L7_2)
    L4_2 = L4_2 .. L5_2 .. L6_2
    return L4_2
  end
end
L0_1._gen_key = L13_1
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = {}
  L4_2.text_id = A1_2
  L4_2.icon_path = A2_2
  L4_2.has_triggered = false
  L4_2.is_selected = false
  L4_2.is_navigation = false
  L4_2.action_name = "Menu_MazeInteract"
  L4_2.on_click = A3_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_fadein_end
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L4_2.on_fadein_end = L5_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_fadeout_end
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L4_2.on_fadeout_end = L5_2
  L5_2 = L11_1.WaitIn
  L4_2.status = L5_2
  return L4_2
end
L0_1._gen_config = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReportOptionChosen
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_button_common_clicked = L13_1
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A2_2 == nil then
    return
  end
  L3_2 = A0_2._key_index_map
  L3_2 = L3_2[A1_2]
  if L3_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2._get_vacant_index
    L3_2 = L3_2(L4_2)
    if L3_2 == nil then
      L5_2 = A0_2
      L4_2 = A0_2._add_config
      L6_2 = A1_2
      L7_2 = A2_2
      L4_2(L5_2, L6_2, L7_2)
    else
      L5_2 = A0_2
      L4_2 = A0_2._replace_config
      L6_2 = A1_2
      L7_2 = A2_2
      L8_2 = L3_2
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  else
    L4_2 = A0_2
    L3_2 = A0_2._modify_config
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._set_config = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = ipairs
  L2_2 = A0_2._trigger_configs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.status
    L7_2 = L11_1.FadeOut
    if L6_2 == L7_2 then
      return L4_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1._get_vacant_index = L13_1
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._key_index_map
  L3_2 = L3_2[A1_2]
  if L3_2 ~= nil or A2_2 == nil then
    return
  end
  A2_2.key = A1_2
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = A0_2._trigger_configs
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._key_index_map
  L4_2 = A0_2._trigger_configs
  L4_2 = #L4_2
  L3_2[A1_2] = L4_2
end
L0_1._add_config = L13_1
function L13_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A2_2.key = A1_2
  L4_2 = A0_2._trigger_configs
  L4_2[A3_2] = A2_2
  L4_2 = A0_2._key_index_map
  L4_2[A1_2] = A3_2
end
L0_1._replace_config = L13_1
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A2_2.key = A1_2
  L3_2 = A0_2._trigger_configs
  L4_2 = A0_2._key_index_map
  L4_2 = L4_2[A1_2]
  L3_2[L4_2] = A2_2
end
L0_1._modify_config = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._key_index_map
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._key_index_map
  L2_2 = L2_2[A1_2]
  L3_2 = A0_2._trigger_configs
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.status
  L4_2 = L11_1.WaitIn
  if L3_2 == L4_2 then
    L3_2 = A0_2._trigger_configs
    L3_2 = L3_2[L2_2]
    L4_2 = L11_1.ToRemove
    L3_2.status = L4_2
  else
    L3_2 = A0_2._trigger_configs
    L3_2 = L3_2[L2_2]
    L4_2 = L11_1.WaitOut
    L3_2.status = L4_2
  end
end
L0_1._remove_config = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._trigger_configs
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._trigger_configs
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.status
    L7_2 = L11_1.FadeIn
    if L6_2 ~= L7_2 then
      L6_2 = L5_2.status
      L7_2 = L11_1.FadeOut
      if L6_2 ~= L7_2 then
        goto lbl_17
      end
    end
    do return end
    ::lbl_17::
  end
  L1_2 = A0_2._trigger_configs
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = -1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._trigger_configs
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.status
    L7_2 = L11_1.ToRemove
    if L6_2 == L7_2 then
      L6_2 = table
      L6_2 = L6_2.remove
      L7_2 = A0_2._trigger_configs
      L8_2 = L4_2
      L6_2(L7_2, L8_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_key_index_map
  L1_2(L2_2)
end
L0_1._clean_configs = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2._key_index_map = L1_2
  L1_2 = pairs
  L2_2 = A0_2._trigger_configs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._key_index_map
    L7_2 = L5_2.key
    L6_2[L7_2] = L4_2
  end
end
L0_1._refresh_key_index_map = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._key_index_map
  L2_2 = L2_2[A1_2]
  L3_2 = A0_2._trigger_configs
  L3_2 = L3_2[L2_2]
  if L3_2 == nil then
    return
  end
  L4_2 = L3_2.status
  L5_2 = L11_1.FadeIn
  if L4_2 == L5_2 then
    L4_2 = L11_1.Normal
    L3_2.status = L4_2
  else
    L4_2 = L3_2.status
    L5_2 = L11_1.FadeOut
    if L4_2 == L5_2 then
      L4_2 = L11_1.ToRemove
      L3_2.status = L4_2
    end
  end
end
L0_1._update_config_when_finish = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = ipairs
  L3_2 = A0_2._trigger_configs
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.status
    L8_2 = L11_1.WaitIn
    if L7_2 == L8_2 then
      if A1_2 then
        L8_2 = L11_1.WaitIn
        if L8_2 then
          goto lbl_15
        end
      end
      L8_2 = L11_1.Normal
      ::lbl_15::
      L6_2.status = L8_2
    else
      L8_2 = L11_1.FadeIn
      if L7_2 == L8_2 then
        if A1_2 then
          L8_2 = L11_1.WaitIn
          if L8_2 then
            goto lbl_26
          end
        end
        L8_2 = L11_1.Normal
        ::lbl_26::
        L6_2.status = L8_2
      else
        L8_2 = L11_1.Normal
        if L7_2 == L8_2 then
          if A1_2 then
            L8_2 = L11_1.WaitIn
            if L8_2 then
              goto lbl_37
            end
          end
          L8_2 = L11_1.Normal
          ::lbl_37::
          L6_2.status = L8_2
        end
      end
    end
    L8_2 = L11_1.WaitOut
    if L7_2 == L8_2 then
      L8_2 = L11_1.ToRemove
      L6_2.status = L8_2
    else
      L8_2 = L11_1.FadeOut
      if L7_2 == L8_2 then
        L8_2 = L11_1.ToRemove
        L6_2.status = L8_2
      end
    end
  end
end
L0_1._update_configs_when_interrupt = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._update_configs_when_interrupt
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._force_update_camera_zoom
  L1_2(L2_2)
end
L0_1._on_return_to_top = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == true then
    L3_2 = A0_2
    L2_2 = A0_2._update_configs_when_interrupt
    L5_2 = A0_2
    L4_2 = A0_2._should_trigger_active
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._try_refresh_view
    L2_2(L3_2)
  end
end
L0_1._on_owner_active_change = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._force_update_camera_zoom
  L1_2(L2_2)
end
L0_1._on_got_focus = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L0_1.setup_view = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.set_view_active_by_scale
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = 1
  L3_2 = A0_2._trigger_configs
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_option_list
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L8_2 = L6_2
      L7_2 = L6_2.hide_btn
      L9_2 = not A1_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._set_trigger_active = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_scale_zero
    L1_2 = L1_2(L2_2)
    L1_2 = not L1_2
  end
  return L1_2
end
L0_1._get_trigger_active = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._get_trigger_count
  L1_2 = L1_2(L2_2)
  L1_2 = A0_2._is_in_tutorial
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_HideInteractiveUI
  L1_2 = 0 < L1_2 and L1_2
  return L1_2
end
L0_1._should_trigger_active = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._should_trigger_active
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_trigger_active
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_camera_zoom
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_operation_hint
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_selection
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_rogue_aeon
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_rogue_aeon_view
    L2_2(L3_2)
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_trigger_buttons
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_start_anim
  L2_2(L3_2)
end
L0_1._refresh_view = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2._get_trigger_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_play_fadein
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_play_fadeout
  L1_2(L2_2)
  L1_2 = ipairs
  L2_2 = A0_2._trigger_configs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.status
    L7_2 = L11_1.Normal
    if L6_2 == L7_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.panel_option_list
      L7_2 = L6_2
      L6_2 = L6_2.get_panel_by_index
      L8_2 = L4_2
      L6_2 = L6_2(L7_2, L8_2)
      L8_2 = L6_2
      L7_2 = L6_2.finish_anim
      L7_2(L8_2)
    end
  end
end
L0_1._try_start_anim = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._trigger_configs
  L1_2 = #L1_2
  L2_2 = A0_2._last_trigger_count
  if L2_2 <= 1 and 1 < L1_2 then
    L2_2 = L1_1.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIUnLockCameraZoom
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._last_trigger_count
    if 1 < L2_2 and L1_2 <= 1 then
      L2_2 = L1_1.notify
      L3_2 = G
      L3_2 = L3_2.CS
      L3_2 = L3_2.NotifyType
      L3_2 = L3_2.UIUnLockCameraZoom
      L4_2 = true
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2._trigger_configs
  L2_2 = #L2_2
  A0_2._last_trigger_count = L2_2
end
L0_1._setup_camera_zoom = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.AppUtils
  L1_2 = L1_2.IsEditor
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.AppUtils
    L1_2 = L1_2.IsWindowsPlatform
    if not L1_2 then
      goto lbl_27
    end
  end
  L1_2 = L1_1.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIUnLockCameraZoom
  L3_2 = A0_2._trigger_configs
  L3_2 = #L3_2
  L3_2 = L3_2 <= 1
  L1_2(L2_2, L3_2)
  ::lbl_27::
end
L0_1._force_update_camera_zoom = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActiveByScale
  L4_2 = A0_2
  L3_2 = A0_2._get_trigger_count
  L3_2 = L3_2(L4_2)
  L3_2 = 1 < L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_operation_hint = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._trigger_configs
  function L4_2(A0_3)
    local L1_3
    L1_3 = A0_2._trigger_configs
    L1_3 = L1_3[A0_3]
    L1_3 = L1_3.on_click
    L1_3()
  end
  L5_2 = NavigationType
  L5_2 = L5_2.Vertical
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_option_list
  L2_2 = L2_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  L1_2(L2_2)
end
L0_1._setup_trigger_buttons = L13_1
function L13_1(A0_2)
  local L1_2
  L1_2 = A0_2._trigger_configs
  L1_2 = #L1_2
  return L1_2
end
L0_1._get_trigger_count = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._in_fadein_interval
  if L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2._trigger_configs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.status
    L7_2 = L11_1.WaitIn
    if L6_2 == L7_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.panel_option_list
      L7_2 = L6_2
      L6_2 = L6_2.get_panel_by_index
      L8_2 = L4_2
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = L11_1.FadeIn
      L5_2.status = L7_2
      A0_2._in_fadein_interval = true
      L8_2 = L6_2
      L7_2 = L6_2.play_fadein
      L7_2(L8_2)
      L7_2 = A0_2._fadein_interval
      L8_2 = L7_2
      L7_2 = L7_2.reset
      L7_2(L8_2)
      L7_2 = A0_2._fadein_interval
      L8_2 = L7_2
      L7_2 = L7_2.start
      L7_2(L8_2)
      return
    end
  end
end
L0_1._try_play_fadein = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._fadein_interval
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._fadein_interval
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  A0_2._in_fadein_interval = false
  L2_2 = A0_2
  L1_2 = A0_2._try_play_fadein
  L1_2(L2_2)
end
L0_1._on_fadein_interval_end = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._in_fadeout_interval
  if L1_2 then
    return
  end
  L1_2 = ipairs
  L2_2 = A0_2._trigger_configs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.status
    L7_2 = L11_1.WaitOut
    if L6_2 == L7_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.panel_option_list
      L7_2 = L6_2
      L6_2 = L6_2.get_panel_by_index
      L8_2 = L4_2
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = L11_1.FadeOut
      L5_2.status = L7_2
      A0_2._in_fadeout_interval = true
      L8_2 = L6_2
      L7_2 = L6_2.play_fadeout
      L7_2(L8_2)
      L7_2 = A0_2._fadeout_interval
      L8_2 = L7_2
      L7_2 = L7_2.reset
      L7_2(L8_2)
      L7_2 = A0_2._fadeout_interval
      L8_2 = L7_2
      L7_2 = L7_2.start
      L7_2(L8_2)
      return
    end
  end
end
L0_1._try_play_fadeout = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._fadeout_interval
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._fadeout_interval
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  A0_2._in_fadeout_interval = false
  L2_2 = A0_2
  L1_2 = A0_2._try_play_fadeout
  L1_2(L2_2)
end
L0_1._on_fadeout_interval_end = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._update_config_when_finish
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_refresh_view
  L2_2(L3_2)
end
L0_1._on_fadein_end = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._update_config_when_finish
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_refresh_view
  L2_2(L3_2)
end
L0_1._on_fadeout_end = L13_1
function L13_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._clean_configs
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L0_1._try_refresh_view = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_view
  L2_2(L3_2)
end
L0_1._on_refresh_mission = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_view
  L2_2(L3_2)
end
L0_1._on_close_talk_dialogue = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_in_tutorial = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._should_trigger_active
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._update_configs_when_interrupt
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_refresh_view
  L2_2(L3_2)
end
L0_1._on_tutorial_clean_ui = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._should_trigger_active
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._update_configs_when_interrupt
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_refresh_view
  L1_2(L2_2)
end
L0_1._on_hide_interactive_ui = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._is_selection_dirty
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._reset_selected_index
    L1_2(L2_2)
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = ipairs
    L2_2 = A0_2._trigger_configs
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L6_2 = A0_2._cur_selected_index
      L6_2 = L4_2 == L6_2
      L5_2.is_selected = L6_2
    end
  end
end
L0_1._setup_selection = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._trigger_configs
  L2_2 = A0_2._cur_selected_index
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2 == nil
  return L2_2
end
L0_1._is_selection_dirty = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._cur_selected_index = 1
  L1_2 = ipairs
  L2_2 = A0_2._trigger_configs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.key
    L7_2 = A0_2._cur_selected_key
    if L6_2 == L7_2 then
      A0_2._cur_selected_index = L4_2
      break
    end
  end
  L1_2 = A0_2._trigger_configs
  L2_2 = A0_2._cur_selected_index
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = L1_2.key
    A0_2._cur_selected_key = L2_2
  end
end
L0_1._reset_selected_index = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._trigger_configs
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    return
  end
  A0_2._cur_selected_index = A1_2
  L3_2 = L2_2.key
  A0_2._cur_selected_key = L3_2
end
L0_1._set_selected_index = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._trigger_configs
  L3_2 = A0_2._cur_selected_index
  L2_2 = L2_2[L3_2]
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._trigger_configs
  L3_2 = A0_2._cur_selected_index
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.on_click
  L2_2()
end
L0_1._on_maze_interact = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._cur_selected_index
  L2_2 = L2_2 - 1
  L3_2 = A0_2._trigger_configs
  L3_2 = L3_2[L2_2]
  if L3_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2._is_selection_loop
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = A0_2._trigger_configs
      L2_2 = #L3_2
    else
      L2_2 = 1
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._set_selected_index
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_refresh_view
  L3_2(L4_2)
end
L0_1._on_maze_interact_select_up = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._cur_selected_index
  L2_2 = L2_2 + 1
  L3_2 = A0_2._trigger_configs
  L3_2 = L3_2[L2_2]
  if L3_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2._is_selection_loop
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L2_2 = 1
    else
      L3_2 = A0_2._trigger_configs
      L2_2 = #L3_2
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._set_selected_index
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_refresh_view
  L3_2(L4_2)
end
L0_1._on_maze_interact_select_down = L13_1
function L13_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  return L1_2()
end
L0_1._is_selection_loop = L13_1
function L13_1(A0_2)
  local L1_2
  L1_2 = A0_2._prop_aeon_info
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1._is_rogue_aeon = L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._trigger_configs
  if L1_2 ~= nil then
    L1_2 = A0_2._trigger_configs
    L1_2 = #L1_2
    if not (L1_2 <= 0) then
      goto lbl_17
    end
  end
  A0_2._prop_aeon_info = nil
  L1_2 = A0_2._panel_rogue_aeon_item
  if L1_2 ~= nil then
    L1_2 = A0_2._panel_rogue_aeon_item
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  do return end
  ::lbl_17::
  L1_2 = A0_2._panel_rogue_aeon_item
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.instantiate_object
    L3_2 = A0_2._binder
    L3_2 = L3_2.load_prefab_meta
    L3_2 = L3_2.MultiPrefabList
    L3_2 = L3_2[1]
    L4_2 = A0_2._binder
    L4_2 = L4_2.load_prefab_meta
    L4_2 = L4_2.transform
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.TalkOptionItemRogueAeonPanel
    L5_2 = G
    L5_2 = L5_2.TalkOptionItemRogueAeonPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._panel_rogue_aeon_item = L2_2
    L2_2 = A0_2._panel_rogue_aeon_item
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L1_2 = A0_2._panel_rogue_aeon_item
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._panel_rogue_aeon_item
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._trigger_configs
  L3_2 = L3_2[1]
  function L4_2(A0_3)
    local L1_3
    L1_3 = A0_2._trigger_configs
    L1_3 = L1_3[A0_3]
    L1_3 = L1_3.on_click
    L1_3()
  end
  L5_2 = 1
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._panel_rogue_aeon_item
  L2_2 = L1_2
  L1_2 = L1_2.setup_aeon_view
  L3_2 = A0_2._prop_aeon_info
  L1_2(L2_2, L3_2)
end
L0_1._setup_rogue_aeon_view = L13_1
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._prop_aeon_info = nil
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  if L2_2 ~= nil then
    L3_2 = L2_2.RogueModule
    if L3_2 ~= nil then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L3_2 = L2_2.RogueModule
  L4_2 = L3_2
  L3_2 = L3_2.GetPropAeonInfo
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._prop_aeon_info = L3_2
end
L0_1._check_rogue_aeon = L13_1
return L0_1
