local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Talk.TalkOptionItemRogueAeonPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TalkOptionItemRogueAeonPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  A0_2._action_name = nil
  A0_2._on_click = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.MLFINECMPPD
  L4_2 = A0_2._refresh_view
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
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
  L1_2 = A0_2._setup_disable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.init_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._do_on_btn_click
    L0_3(L1_3)
  end
  L4_2 = 0.3
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_click = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._on_click
  if L1_2 ~= nil then
    L1_2 = A0_2._on_click
    L1_2()
  end
end
L0_1._do_on_btn_click = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L4_2 = A1_2.action_name
  A0_2._action_name = L4_2
  L4_2 = A1_2.is_navigation
  A0_2._is_navigation = L4_2
  L4_2 = A1_2.on_click
  A0_2._on_click = L4_2
  A0_2._index = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_text
  L6_2 = A1_2.text_id
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
  L4_2 = A0_2._setup_disable
  L6_2 = A1_2.is_valid
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_option
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_text = L1_1
function L1_1(A0_2, A1_2)
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
L0_1._setup_color = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_option
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextColor
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_text_color = L1_1
function L1_1(A0_2, A1_2)
end
L0_1._set_icon_alpha = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_selected
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActiveByScale
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_key_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActiveByScale
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._is_navigation
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_in_control_button
    L2_2.ActionEnabled = false
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_in_control_button
    L2_2.ActionEnabled = A1_2
  end
end
L0_1._setup_selection = L1_1
function L1_1(A0_2)
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
      L0_3 = A0_2._binder
      if L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._setup_selection
        L2_3 = false
        L0_3(L1_3, L2_3)
      end
    end
    L1_2.OnDeselectTrigger = L2_2
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.is_gamepad_input
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = A0_2._index
      if L1_2 == 1 then
        L2_2 = A0_2
        L1_2 = A0_2._setup_selection
        L3_2 = true
        L1_2(L2_2, L3_2)
      end
    end
  end
end
L0_1._setup_in_control_tip = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= false then
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn
    L2_2.interactable = true
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_color
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn
  L2_2.interactable = false
end
L0_1._setup_disable = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2.event_trigger_listener
  L1_2.OnSelectTrigger = nil
  L1_2 = A0_2.event_trigger_listener
  L1_2.OnDeselectTrigger = nil
  A0_2.event_trigger_listener = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_add_exp
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = "+"
  L5_2 = tostring
  L6_2 = A1_2.AddExp
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  A0_2._prop_aeon_info = A1_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.RogueModule
  L3_2 = L2_2
  L2_2 = L2_2.GetRogueAeonData
  L4_2 = A1_2.AeonId
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.NetworkManager
    L3_2 = L3_2.OOGONDGGKMI
    L4_2 = L3_2
    L3_2 = L3_2.CIKALAHEDLF
    L3_2(L4_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_view
  L3_2(L4_2)
end
L0_1.setup_aeon_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._prop_aeon_info
  if L1_2 == nil then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.RogueModule
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueAeonData
  L3_2 = A0_2._prop_aeon_info
  L3_2 = L3_2.AeonId
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_level
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = L1_2.Level
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_add_exp
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2.Level
    L5_2 = L1_2.MaxLevel
    L4_2 = L4_2 ~= L5_2
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_max_level
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2.Level
    L5_2 = L1_2.MaxLevel
    L4_2 = L4_2 == L5_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._refresh_view = L1_1
return L0_1
