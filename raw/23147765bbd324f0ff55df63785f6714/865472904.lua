local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousMainStoryPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.Components.RogueNousMainStoryPanelWithLineBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousMainStoryPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_gamepad_status
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_root_btn_selected
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_root_btn_deselected
    L0_3(L1_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._lua_main_story_data = A1_2
  A0_2._is_in_rogue = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_title
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._lua_main_story_data
  L6_2 = L5_2
  L5_2 = L5_2.get_native
  L5_2 = L5_2(L6_2)
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_in_line_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_out_line_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_btn_status_layer
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_btn_active_layer
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_setup_can_take_reward_view
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._lua_main_story_data
  L3_2 = L2_2
  L2_2 = L2_2.get_native
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.IsNew
  if L2_2 ~= false then
    L2_2 = A0_2._lua_main_story_data
    L2_2 = L2_2.first_seen_effect_played
    if not L2_2 then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L3_2 = A0_2
  L2_2 = A0_2._is_story_panel_within_corners
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == false then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueNousUtils
  L2_2 = L2_2.SetRogueNousMainStorySeen
  L3_2 = A0_2._lua_main_story_data
  L4_2 = L3_2
  L3_2 = L3_2.get_native
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.MainStoryID
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.first_time_unlock_animation_cmpt
  L3_2 = L2_2
  L2_2 = L2_2.Play
  L2_2(L3_2)
  L2_2 = A0_2._lua_main_story_data
  L2_2.first_seen_effect_played = true
  L2_2 = A0_2._binder
  L2_2 = L2_2.unknown_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.try_trigger_effect_when_content_move = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._lua_main_story_data
  return L1_2
end
L0_1.get_story_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2[1]
  L2_2 = L2_2.y
  L3_2 = A0_2._binder
  L3_2 = L3_2.eff_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._binder
  L5_2 = L5_2.upper_root
  L5_2 = L5_2.position
  L5_2 = L5_2.y
  L5_2 = L2_2 > L5_2
  L3_2(L4_2, L5_2)
end
L0_1.trigger_hide_effect_when_content_move = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A2_2 == nil then
    return
  end
  L3_2 = A2_2[0]
  L3_2 = L3_2.y
  L4_2 = A1_2[0]
  L4_2 = L4_2.y
  L5_2 = A0_2._binder
  L5_2 = L5_2.line_effect_root
  if L5_2 == nil then
    return
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.line_effect_root
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = A0_2._binder
  L7_2 = L7_2.root
  L7_2 = L7_2.transform
  L7_2 = L7_2.position
  L7_2 = L7_2.y
  L7_2 = L3_2 > L7_2
  L5_2(L6_2, L7_2)
end
L0_1.update_line_effect_status = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  return L1_2
end
L0_1.get_navigation_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._lua_main_story_data
  L4_2 = L3_2
  L3_2 = L3_2.get_native
  L3_2 = L3_2(L4_2)
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.refresh = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.reward_panel
  L4_2 = L3_2
  L3_2 = L3_2.register_click_callback
  L5_2 = A0_2._on_reward_btn_clicked
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  A0_2._reward_click_cbk = A1_2
  A0_2._reward_click_owner = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._reward_click_cbk
  L4_2 = A0_2._reward_click_owner
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.save_navigation_target
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L5_2 = L5_2.gameObject
  L3_2(L4_2, L5_2)
end
L0_1._on_reward_btn_clicked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._lua_main_story_data
  L2_2 = L1_2
  L1_2 = L1_2.get_native
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.QuestStatus
  L2_2 = CS
  L2_2 = L2_2.LEOGBBOPKKO
  L2_2 = L2_2.JKFPIINHGPD
  L1_2 = L1_2 == L2_2
  return L1_2
end
L0_1.has_reward = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  L2_2 = L2_2.position
  L3_2 = A1_2[0]
  L3_2 = L3_2.x
  L4_2 = L2_2.x
  L3_2 = L3_2 <= L4_2
  return L3_2
end
L0_1.is_story_panel_higher_then_viewport = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  L2_2 = L2_2.position
  L3_2 = A1_2[0]
  L3_2 = L3_2.x
  L4_2 = L2_2.x
  L3_2 = L3_2 <= L4_2
  return L3_2
end
L0_1.is_story_panel_lower_then_viewport = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._lua_main_story_data
  L2_2 = L1_2
  L1_2 = L1_2.get_native
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.IsUnlocked
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.RogueDLC.RogueNous.Story.RogueNousStoryHintDialog"
    L3_2 = "UIText_RogueNous_Story_Unlock_Title"
    L4_2 = A0_2._lua_main_story_data
    L5_2 = L4_2
    L4_2 = L4_2.get_native
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2
    L4_2 = L4_2.GetUnlockConditionTextID
    L4_2 = L4_2(L5_2)
    L5_2 = true
    L1_2(L2_2, L3_2, L4_2, L5_2)
    return
  end
  L1_2 = A0_2._lua_main_story_data
  L2_2 = L1_2
  L1_2 = L1_2.get_native
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.IsMet
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.RogueDLC.RogueNous.Story.RogueNousStoryHintDialog"
    L3_2 = "UIText_RogueNous_Story_Untrigger_Title"
    L4_2 = A0_2._lua_main_story_data
    L5_2 = L4_2
    L4_2 = L4_2.get_native
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2
    L4_2 = L4_2.GetTriggerConditionText
    L4_2 = L4_2(L5_2)
    L5_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueStatic
  L1_2 = L1_2.IsInChessRogueMode
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_RogueNous_Story_Battle_Trigger_Tip_1"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._lua_main_story_data
  L2_2 = L1_2
  L1_2 = L1_2.get_native
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.Replay
  L1_2(L2_2)
end
L0_1._on_root_btn_clicked = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  L2_2 = L2_2.position
  L3_2 = A1_2[0]
  L3_2 = L3_2.x
  L4_2 = L2_2.x
  L3_2 = L3_2 <= L4_2
  return L3_2
end
L0_1._is_story_panel_within_corners = L1_1
function L1_1(A0_2, A1_2)
end
L0_1._is_story_panel_fully_out_of_corners = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.state_canvas
    L2_2.alpha = 0.2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.state_canvas
    L2_2.alpha = 1
  end
end
L0_1.set_dark = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L1_2 = L1_2.transform
  return L1_2
end
L0_1.get_tf = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.transform
  L2_2 = L2_2.localPosition
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.transform
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.Vector3
  L5_2 = L2_2.x
  L6_2 = -A1_2
  L7_2 = L2_2.z
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2.localPosition = L4_2
end
L0_1.setup_local_position_y = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._lua_main_story_data
  L2_2 = L1_2
  L1_2 = L1_2.get_native
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.IsUnlocked
  if L2_2 then
    L2_2 = L1_2.IsMet
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.root_animator
      L3_2 = L2_2
      L2_2 = L2_2.SetTrigger
      L4_2 = "StateNormal"
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = L1_2.IsUnlocked
    if L2_2 then
      L2_2 = L1_2.IsMet
      if not L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.root_animator
        L3_2 = L2_2
        L2_2 = L2_2.SetTrigger
        L4_2 = "StateUnknown"
        L2_2(L3_2, L4_2)
    end
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.root_animator
      L3_2 = L2_2
      L2_2 = L2_2.SetTrigger
      L4_2 = "StateLock"
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._setup_btn_status_layer = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = false
  L2_2 = A0_2._lua_main_story_data
  L3_2 = L2_2
  L2_2 = L2_2.get_native
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.IsUnlocked
  if L2_2 then
    L2_2 = A0_2._is_in_rogue
    if L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.RogueNousUtils
      L2_2 = L2_2.IsCurLayerAccessableMainStory
      L3_2 = A0_2._lua_main_story_data
      L4_2 = L3_2
      L3_2 = L3_2.get_native
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      if L2_2 then
        L1_2 = true
    end
    else
      L2_2 = A0_2._is_in_rogue
      if not L2_2 then
        L1_2 = true
      end
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_animator
  L3_2 = L2_2
  L2_2 = L2_2.SetBool
  L4_2 = "IsActive"
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_btn_active_layer = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._lua_main_story_data
  L2_2 = L1_2
  L1_2 = L1_2.get_native
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.IsMet
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._lua_main_story_data
    L4_2 = L3_2
    L3_2 = L3_2.get_native
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.Name
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._lua_main_story_data
    L2_2 = L1_2
    L1_2 = L1_2.get_native
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2
    L1_2 = L1_2.GetAreaRequirementText
    L1_2 = L1_2(L2_2)
    if L1_2 ~= "" then
      L2_2 = A0_2._is_in_rogue
      if L2_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.unknown_txt
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetActive
        L4_2 = true
        L2_2(L3_2, L4_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.unknown_txt
        L3_2 = L2_2
        L2_2 = L2_2.SetCustomizedText
        L4_2 = L1_2
        L2_2(L3_2, L4_2)
    end
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.unknown_txt
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._setup_title = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.left_line_root
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.left_line_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._lua_main_story_data
  L4_2 = L3_2
  L3_2 = L3_2.get_native
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.HasPrevLayer
  L1_2(L2_2, L3_2)
end
L0_1._setup_in_line_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.right_line_root
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.right_line_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._setup_out_line_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._lua_main_story_data
  L2_2 = L1_2
  L1_2 = L1_2.get_native
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.QuestStatus
  L2_2 = CS
  L2_2 = L2_2.LEOGBBOPKKO
  L2_2 = L2_2.JKFPIINHGPD
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.can_take_reward_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.can_take_reward_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._try_setup_can_take_reward_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.is_preview_panel_shown
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  A0_2._is_root_btn_selected = true
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.update_gamepad_hint
  L3_2 = {}
  L4_2 = "Menu_Confirm"
  L5_2 = "ActionGroup_Switch"
  L6_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._owner
  L2_2 = L1_2
  L1_2 = L1_2.move_scroll_rect_to
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_gamepad_status
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_root_btn_selected = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_root_btn_selected = false
  L2_2 = A0_2
  L1_2 = A0_2._update_gamepad_status
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.RogueNousShowSurfaceItemPreview
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_root_btn_deselected = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_in_control_btn
  L2_2.enabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_in_control_btn
  L2_2.enabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_in_control_tip
  L2_2 = L2_2.transform
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._update_gamepad_status = L1_1
return L0_1
