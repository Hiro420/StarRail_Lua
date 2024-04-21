local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Talk.TalkOptionItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TalkOptionItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.TalkModule
L2_1 = "TalkOptionInfoFadeIn"
L3_1 = "TalkOptionInfoFadeOut"
L4_1 = "TalkOptionInfoNormal"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ConstValueClientExcelTable
L5_1 = L5_1.GetData
L6_1 = "PamLevelReward_Type3_IconAddress"
L5_1 = L5_1(L6_1)
L5_1 = L5_1.Value
L5_1 = L5_1.StringValue
L6_1 = CS
L6_1 = L6_1.RPG
L6_1 = L6_1.GameCore
L6_1 = L6_1.ConstValueClientExcelTable
L6_1 = L6_1.GetData
L7_1 = "ActivityReward_Type4_IconAddress"
L6_1 = L6_1(L7_1)
L6_1 = L6_1.Value
L6_1 = L6_1.StringValue
function L7_1(A0_2)
  local L1_2
  A0_2._action_name = nil
  A0_2._on_click = nil
  A0_2._is_valid = true
  A0_2._is_hidden = false
end
L0_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.EventTriggerListener
  L1_2 = L1_2.Get
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L2_2 = L2_2.gameObject
  L1_2 = L1_2(L2_2)
  A0_2.event_trigger_listener = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._fade_in_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._fade_in_timer
      L1_3 = L0_3
      L0_3 = L0_3.reset
      L0_3(L1_3)
      L0_3 = A0_2._fade_in_timer
      L1_3 = L0_3
      L0_3 = L0_3.stop
      L0_3(L1_3)
    end
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fadein_end
    L0_3(L1_3)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim
  L5_2 = L4_2
  L4_2 = L4_2.GetClip
  L6_2 = L2_1
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fade_in_timer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._fade_out_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._fade_out_timer
      L1_3 = L0_3
      L0_3 = L0_3.reset
      L0_3(L1_3)
      L0_3 = A0_2._fade_out_timer
      L1_3 = L0_3
      L0_3 = L0_3.stop
      L0_3(L1_3)
    end
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fadeout_end
    L0_3(L1_3)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim
  L5_2 = L4_2
  L4_2 = L4_2.GetClip
  L6_2 = L3_1
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._fade_out_timer = L1_2
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_color
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_selection
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.hide_btn
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_disable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.init_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._is_hidden = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_interactable
  L2_2(L3_2)
end
L0_1.hide_btn = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_scale_zero
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._on_click
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_click = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._config
  if L1_2 == nil then
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._config
  L2_2 = L2_2.on_fadein_end
  L3_2 = nil
  L4_2 = A0_2._config
  L4_2 = L4_2.key
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_fadein_end = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._config
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.hide_btn
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._config
  L2_2 = L2_2.on_fadeout_end
  L3_2 = nil
  L4_2 = A0_2._config
  L4_2 = L4_2.key
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_fadeout_end = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = A0_2._binder
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.is_destroyed
      if not L1_2 then
        goto lbl_11
      end
    end
  end
  do return end
  ::lbl_11::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L0_1.finish_anim = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = A0_2._binder
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.is_destroyed
      if not L1_2 then
        goto lbl_11
      end
    end
  end
  do return end
  ::lbl_11::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._fade_in_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
end
L0_1.play_fadein = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = A0_2._binder
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.is_destroyed
      if not L1_2 then
        goto lbl_11
      end
    end
  end
  do return end
  ::lbl_11::
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._fade_out_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._fade_out_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
end
L0_1.play_fadeout = L7_1
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    return
  end
  L4_2 = A1_2.action_name
  A0_2._action_name = L4_2
  L4_2 = A1_2.is_navigation
  A0_2._is_navigation = L4_2
  L4_2 = A1_2.on_click
  A0_2._on_click = L4_2
  A0_2._config = A1_2
  A0_2._index = A3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn
  L5_2 = L4_2
  L4_2 = L4_2.ClearAnimationState
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2.hide_btn
  L6_2 = false
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_text
  L6_2 = A1_2.text_id
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_icon
  L6_2 = A1_2.icon_path
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_color
  L6_2 = A1_2.has_triggered
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_selection
  L6_2 = A1_2.is_selected
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_in_control_tip
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_extrainfo
  L6_2 = A1_2.extra_info
  L7_2 = A1_2.submission_menu_item
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_disable
  L6_2 = A1_2.is_valid
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if A1_2 == 0 or A1_2 == nil then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MenuItemExtraInfoExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 == nil then
    return
  end
  L4_2 = 0
  L5_2 = L3_2.ExtraInfoType
  L5_2 = L5_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2.ExtraInfoType
    L8_2 = L8_2[L7_2]
    if L8_2 == 1 then
      L9_2 = A0_2
      L8_2 = A0_2._set_text_color
      L10_2 = L3_2.ExtraInfoParam
      L8_2(L9_2, L10_2)
    else
      L8_2 = L3_2.ExtraInfoType
      L8_2 = L8_2[L7_2]
      if L8_2 == 2 then
        if A2_2 ~= nil and A2_2 ~= 0 then
          L8_2 = CS
          L8_2 = L8_2.RPG
          L8_2 = L8_2.Client
          L8_2 = L8_2.GlobalVars
          L8_2 = L8_2.s_ModuleManager
          L8_2 = L8_2.MissionModule
          L9_2 = L8_2
          L8_2 = L8_2.GetSubMissionRow
          L10_2 = A2_2
          L8_2 = L8_2(L9_2, L10_2)
          L9_2 = CS
          L9_2 = L9_2.RPG
          L9_2 = L9_2.Client
          L9_2 = L9_2.GlobalVars
          L9_2 = L9_2.s_ModuleManager
          L9_2 = L9_2.MissionModule
          L10_2 = L9_2
          L9_2 = L9_2.GetMainMissionRow
          L11_2 = L8_2.MainMissionID
          L9_2 = L9_2(L10_2, L11_2)
          L10_2 = CS
          L10_2 = L10_2.RPG
          L10_2 = L10_2.GameCore
          L10_2 = L10_2.MainMissionTypeConfigExcelTable
          L10_2 = L10_2.GetData
          L11_2 = L9_2.Type
          L10_2 = L10_2(L11_2)
          if L10_2 == nil then
            L11_2 = CS
            L11_2 = L11_2.RPG
            L11_2 = L11_2.GameCore
            L11_2 = L11_2.MainMissionTypeConfigExcelTable
            L11_2 = L11_2.GetData
            L12_2 = CS
            L12_2 = L12_2.RPG
            L12_2 = L12_2.GameCore
            L12_2 = L12_2.MainMissionType
            L12_2 = L12_2.None
            L11_2 = L11_2(L12_2)
            L10_2 = L11_2
          end
          L11_2 = L10_2.MenuItemIcon
          if L11_2 == nil or L11_2 == "" then
            L11_2 = L10_2.TypeIconMini
          end
          L13_2 = A0_2
          L12_2 = A0_2._setup_icon
          L14_2 = L11_2
          L12_2(L13_2, L14_2)
        end
      else
        L8_2 = L3_2.ExtraInfoType
        L8_2 = L8_2[L7_2]
        if L8_2 == 3 then
          L9_2 = A0_2
          L8_2 = A0_2._setup_icon
          L10_2 = L5_1
          L8_2(L9_2, L10_2)
        else
          L8_2 = L3_2.ExtraInfoType
          L8_2 = L8_2[L7_2]
          if L8_2 == 4 then
            L9_2 = A0_2
            L8_2 = A0_2._setup_icon
            L10_2 = L6_1
            L8_2(L9_2, L10_2)
          end
        end
      end
    end
  end
end
L0_1._set_extrainfo = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_option
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_text = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == nil or A1_2 == "" then
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_icon
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActiveByScale
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_icon
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_icon
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActiveByScale
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_icon = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._set_text_color
    L4_2 = "#7d7d7d"
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._set_icon_alpha
    L4_2 = 0.5
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._set_text_color
    L4_2 = "#ffffff"
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2._set_icon_alpha
    L4_2 = 1
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_color = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_option
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextColor
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_text_color = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetAlpha
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_icon_alpha = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._is_navigation
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.is_gamepad_input
    L2_2 = L2_2()
  end
  L2_2 = A0_2._is_navigation
  L2_2 = not L2_2 or L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_selected
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActiveByScale
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_key_info
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActiveByScale
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._is_navigation
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_in_control_button
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.is_gamepad_input
    L4_2 = L4_2()
    L4_2 = not L4_2
    L3_2.ActionEnabled = L4_2
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_in_control_button
    L3_2.ActionEnabled = A1_2
  end
end
L0_1._setup_selection = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SetInControlTipKey
  L3_2 = A0_2._action_name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_in_control_button
  L2_2 = L1_2
  L1_2 = L1_2.SetActionName
  L3_2 = A0_2._action_name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_navigation
  if L1_2 then
    L1_2 = A0_2.event_trigger_listener
    function L2_2()
      local L0_3, L1_3, L2_3
      L0_3 = G
      L0_3 = L0_3.Utils
      L0_3 = L0_3.is_gamepad_input
      L0_3 = L0_3()
      if not L0_3 then
        return
      end
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.save_navigation_target
      L2_3 = A0_2._binder
      L2_3 = L2_3.root
      L2_3 = L2_3.gameObject
      L0_3(L1_3, L2_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_selection
      L2_3 = true
      L0_3(L1_3, L2_3)
    end
    L1_2.OnSelectTrigger = L2_2
    L1_2 = A0_2.event_trigger_listener
    function L2_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._setup_selection
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
    L1_2.OnDeselectTrigger = L2_2
  end
end
L0_1._setup_in_control_tip = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2 ~= false
  A0_2._is_valid = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_interactable
  L2_2(L3_2)
  L2_2 = A0_2._is_valid
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_color
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_disable = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L2_2 = A0_2._is_valid
  if L2_2 then
    L2_2 = A0_2._is_hidden
    L2_2 = not L2_2
  end
  L1_2.interactable = L2_2
end
L0_1._refresh_interactable = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2.event_trigger_listener
  L1_2.OnSelectTrigger = nil
  L1_2 = A0_2.event_trigger_listener
  L1_2.OnDeselectTrigger = nil
  A0_2.event_trigger_listener = nil
end
L0_1._on_dispose = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn
  return L1_2
end
L0_1.get_first_selected_btn = L7_1
return L0_1
