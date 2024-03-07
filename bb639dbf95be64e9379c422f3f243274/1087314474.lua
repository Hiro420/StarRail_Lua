local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Talk.OptionTalkPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.TalkOptionItemPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "OptionTalkPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.AdventureStatic
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.GameModeType
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.DialogueGroupExcelTable
L4_1 = "TalkOptionDialogueFadeIn"
function L5_1(A0_2)
  local L1_2
  A0_2._arg = nil
  A0_2._in_anim = false
  A0_2._has_chosen = false
  L1_2 = {}
  A0_2._option_configs = L1_2
  A0_2._heartdial_config = nil
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
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
  L4_2 = L4_2.TalkOptionItemPanel
  L5_2 = G
  L5_2 = L5_2.TalkOptionItemPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._option_panel_clockboy = L2_2
  L2_2 = A0_2._option_panel_clockboy
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_option_list
  L3_2 = L2_2
  L2_2 = L2_2.rebind_child_node_by_name
  L4_2 = 3
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_event
  L3_2 = L2_2
  L2_2 = L2_2.AddAnimationEvent
  L4_2 = L4_1
  function L5_2()
    local L0_3, L1_3
    A0_2._in_anim = false
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.clear_view = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._chose_callback = A1_2
  A0_2._chose_handler = A2_2
end
L0_1.register_chose_callback = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.safe_set_active
  L4_2 = true
  L2_2(L3_2, L4_2)
  if A1_2 ~= nil then
    L2_2 = A1_2.Count
    if not (L2_2 <= 0) then
      goto lbl_15
    end
  end
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogErrorFormat
  L3_2 = "invalid option data args"
  L2_2(L3_2)
  do return end
  ::lbl_15::
  A0_2._arg = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._show_options
  L2_2(L3_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_option_view
  L1_2(L2_2)
  A0_2._in_anim = true
  A0_2._has_chosen = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_fade_in
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L0_1._show_options = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_talk_option_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_option_navigation
  L1_2(L2_2)
end
L0_1._refresh_option_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  A0_2._option_configs = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_list
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._gen_option_configs
  L3_2 = A0_2._arg
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  A0_2._heartdial_config = L2_2
  A0_2._option_configs = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_talk_option_clockboy
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_list
  L2_2 = L1_2
  L1_2 = L1_2.rebind_child_node_by_name
  L3_2 = A0_2._option_configs
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._option_configs
  L4_2 = nil
  L5_2 = nil
  L6_2 = NavigationType
  L6_2 = L6_2.Vertical
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_talk_option_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._heartdial_config
  if L1_2 == nil then
    L1_2 = A0_2._option_panel_clockboy
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._option_panel_clockboy
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._option_panel_clockboy
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._heartdial_config
  L4_2 = nil
  L5_2 = 0
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_talk_option_clockboy = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = nil
  L4_2 = 0
  L5_2 = A1_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A1_2[L7_2]
    L8_2 = L8_2.OptionIconType
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.DialogueIconType
    L9_2 = L9_2.DreamlandIcon
    if L8_2 ~= L9_2 then
      L8_2 = A1_2[L7_2]
      L8_2 = L8_2.OptionIconType
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.DialogueIconType
      L9_2 = L9_2.HeartDialRaid
      if L8_2 ~= L9_2 then
        goto lbl_31
      end
    end
    L9_2 = A0_2
    L8_2 = A0_2._gen_config
    L10_2 = A1_2[L7_2]
    L8_2 = L8_2(L9_2, L10_2)
    L3_2 = L8_2
    goto lbl_38
    ::lbl_31::
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L11_2 = A0_2
    L10_2 = A0_2._gen_config
    L12_2 = A1_2[L7_2]
    L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
    L8_2(L9_2, L10_2, L11_2, L12_2)
    ::lbl_38::
  end
  L4_2 = L2_2
  L5_2 = L3_2
  return L4_2, L5_2
end
L0_1._gen_option_configs = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = {}
  L3_2 = A1_2.OptionIconType
  L2_2.icon_type = L3_2
  L3_2 = A1_2.Text
  L2_2.text_id = L3_2
  L3_2 = A1_2.IconPath
  L2_2.icon_path = L3_2
  L3_2 = A1_2.HasTriggered
  L2_2.has_triggered = L3_2
  L3_2 = A1_2.MenuItemExtraInfo
  L2_2.extra_info = L3_2
  L3_2 = A1_2.SubMissionIDForMenuItem
  L2_2.submission_menu_item = L3_2
  L2_2.is_selected = false
  L2_2.is_navigation = true
  L3_2 = A1_2.DialogueGroupID
  L2_2.dialogue_group_id = L3_2
  L3_2 = A1_2.DialogueEventID
  L2_2.dialogue_event_id = L3_2
  L3_2 = A1_2.IsValid
  L2_2.is_valid = L3_2
  L2_2.action_name = "Menu_Confirm"
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_option_clicked
    L2_3 = A1_2.InfoIndex
    L0_3(L1_3, L2_3)
  end
  L2_2.on_click = L3_2
  return L2_2
end
L0_1._gen_config = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = A0_2._heartdial_config
  if L2_2 ~= nil then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = A0_2._option_panel_clockboy
    L5_2 = L4_2
    L4_2 = L4_2.get_first_selected_btn
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  end
  L2_2 = 1
  L3_2 = A0_2._option_configs
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_option_list
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L10_2 = L6_2
    L9_2 = L6_2.get_first_selected_btn
    L9_2, L10_2 = L9_2(L10_2)
    L7_2(L8_2, L9_2, L10_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = L1_2
  L5_2 = NavigationType
  L5_2 = L5_2.Vertical
  L6_2 = true
  L7_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._refresh_option_navigation = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._in_anim
  if not L2_2 then
    L2_2 = A0_2._has_chosen
    if not L2_2 then
      goto lbl_9
    end
  end
  L2_2 = false
  do return L2_2 end
  ::lbl_9::
  A0_2._has_chosen = true
  L2_2 = A0_2._chose_callback
  if L2_2 ~= nil then
    L2_2 = A0_2._chose_handler
    if L2_2 ~= nil then
      L2_2 = A0_2._chose_callback
      L3_2 = A0_2._chose_handler
      L2_2(L3_2)
    else
      L2_2 = A0_2._chose_callback
      L2_2()
    end
  end
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TalkChooseOption
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = true
  return L2_2
end
L0_1._on_option_clicked = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_fade_in
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L0_1.replay_fade_in = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_option_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_in_control_input_switch = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    L1_2 = nil
    return L1_2
  end
  L2_2 = A0_2
  L1_2 = A0_2._get_first_not_triggered_panel
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = L1_2
  L2_2 = L1_2.get_first_selected_object
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.UIUtils
  L3_2 = L3_2.is_active
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L2_2 or L3_2
  if not L3_2 or not L2_2 then
    L3_2 = nil
  end
  return L3_2
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._heartdial_config
  if L1_2 ~= nil then
    L1_2 = A0_2._heartdial_config
    L1_2 = L1_2.has_triggered
    if not L1_2 then
      L1_2 = A0_2._option_panel_clockboy
      return L1_2
    end
  end
  L1_2 = ipairs
  L2_2 = A0_2._option_configs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.has_triggered
    if not L6_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.panel_option_list
      L7_2 = L6_2
      L6_2 = L6_2.get_panel_by_index
      L8_2 = L4_2
      return L6_2(L7_2, L8_2)
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_option_list
  L2_2 = L1_2
  L1_2 = L1_2.get_panel_by_index
  L3_2 = 1
  return L1_2(L2_2, L3_2)
end
L0_1._get_first_not_triggered_panel = L5_1
return L0_1
