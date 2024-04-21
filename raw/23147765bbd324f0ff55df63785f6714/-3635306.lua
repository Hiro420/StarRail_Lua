local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.Relic.Upgrade.RelicLevelUpResultDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicLevelUpResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.ConstValueClientExcelTable
L1_1 = L1_1.GetData
L2_1 = "ResultDialog_ClickProtectTime"
L1_1 = L1_1(L2_1)
L1_1 = L1_1.Value
L1_1 = L1_1.FloatValue
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RelicLevelUpResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._relic = A1_2
  A0_2._on_finish = A2_2
  A0_2._callback_self = A3_2
  L4_2 = A0_2._relic
  L4_2 = L4_2.LevelUpBeforeData
  A0_2._levelup_before_data = L4_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ItemChanged
  L4_2 = A0_2._on_item_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_timer_callback
  L4_2 = L1_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._exit_timer = L1_2
  A0_2._enable_exit = false
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._enable_exit = true
end
L0_1._on_timer_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L1_2 = A0_2._set_item
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_level
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_property
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.main_statu_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._main_property_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.status_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._property_compare_data
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = A0_2._property_compare_data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.status_panel
    L7_2 = L6_2
    L6_2 = L6_2.get_panel_by_index
    L8_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 ~= nil then
      L7_2 = A0_2._relic
      L7_2 = L7_2.SubAffixBonusRecord
      if L7_2 ~= nil then
        L7_2 = A0_2._relic
        L7_2 = L7_2.SubAffixBonusRecord
        L8_2 = L7_2
        L7_2 = L7_2.ContainsKey
        L9_2 = L5_2.PropertyType
        L7_2 = L7_2(L8_2, L9_2)
        if L7_2 then
          L8_2 = L6_2
          L7_2 = L6_2.show_level_up_mark
          L9_2 = true
          L10_2 = A0_2._relic
          L10_2 = L10_2.SubAffixBonusRecord
          L11_2 = L5_2.PropertyType
          L10_2 = L10_2[L11_2]
          L7_2(L8_2, L9_2, L10_2)
        end
      end
    end
  end
  L1_2 = A0_2._exit_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._exit_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_refresh_gamepad_hint
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_item_icon
  L4_2 = A0_2._relic
  L4_2 = L4_2.ItemFigureIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_relic_lock
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._relic
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_relic_lock
  L2_2 = L1_2
  L1_2 = L1_2.show_discard_btn
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_relic_lock
  L2_2 = L1_2
  L1_2 = L1_2.forbid_btn_navi_and_key_map
  L1_2(L2_2)
end
L0_1._set_item = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_pre_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._levelup_before_data
  L3_2 = L3_2.LevelBefore
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_next_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._relic
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._relic
  L1_2 = L1_2.LevelUpBeforeData
  L2_2 = A0_2._relic
  L2_2 = L2_2.Level
  L1_2.LevelBefore = L2_2
end
L0_1._set_level = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._property_compare_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_main_property_data
  L1_2(L2_2)
  L1_2 = A0_2._relic
  L1_2 = L1_2.SubAffixPropertyTypeArray
  L2_2 = 0
  L3_2 = L1_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = A0_2
    L6_2 = A0_2._insert_property_compare_data
    L8_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2)
  end
end
L0_1._set_property = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  A0_2._main_property_data = L1_2
  L1_2 = A0_2._main_property_data
  L2_2 = A0_2._relic
  L2_2 = L2_2.MainAffixPropertyType
  L1_2.PropertyType = L2_2
  L1_2 = A0_2._main_property_data
  L2_2 = A0_2._relic
  L3_2 = L2_2
  L2_2 = L2_2.GetPropertyValue
  L4_2 = A0_2._main_property_data
  L4_2 = L4_2.PropertyType
  L2_2 = L2_2(L3_2, L4_2)
  L1_2.NextNum = L2_2
  L1_2 = A0_2._main_property_data
  L2_2 = A0_2._levelup_before_data
  L2_2 = L2_2.MainAffixPropertyValueBefore
  L1_2.CurNum = L2_2
end
L0_1._init_main_property_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = {}
  L2_2.PropertyType = A1_2
  L3_2 = A0_2._relic
  L4_2 = L3_2
  L3_2 = L3_2.GetPropertyValue
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.NumAfter = L3_2
  L3_2 = A0_2._levelup_before_data
  L3_2 = L3_2.SubAffixPropertyValueBefore
  L4_2 = A0_2._relic
  L4_2 = L4_2.MainAffixPropertyType
  if A1_2 == L4_2 then
    L4_2 = A0_2._levelup_before_data
    L4_2 = L4_2.MainAffixPropertyValueBefore
    L2_2.NumBefore = L4_2
  else
    L5_2 = L3_2
    L4_2 = L3_2.ContainsKey
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L4_2 = not L4_2
    L2_2.IsNew = L4_2
    L4_2 = L2_2.IsNew
    if not L4_2 then
      L4_2 = L3_2[A1_2]
      if L4_2 then
        goto lbl_34
      end
    end
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.FixPoint
    L4_2 = L4_2.Zero
    ::lbl_34::
    L2_2.NumBefore = L4_2
  end
  L4_2 = L2_2.NumBefore
  L5_2 = L2_2.NumAfter
  if L4_2 == L5_2 then
    return
  end
  L4_2 = A0_2._property_compare_data
  L5_2 = A0_2._property_compare_data
  L5_2 = #L5_2
  L5_2 = L5_2 + 1
  L4_2[L5_2] = L2_2
end
L0_1._insert_property_compare_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._enable_exit
  if L1_2 == false then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._invoke_callback
  L3_2 = A0_2._on_finish
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._callback_self
  if L2_2 then
    L2_2 = A1_2
    L3_2 = A0_2._callback_self
    L2_2(L3_2)
  else
    L2_2 = A1_2
    L2_2()
  end
end
L0_1._invoke_callback = L2_1
L2_1 = "ActionGroup_RelicEnhance_Lock"
L3_1 = "ActionGroup_RelicEnhance_Unlock"
L4_1 = "ActionGroup_RelicEnhance_Obsolete"
L5_1 = "ActionGroup_RelicEnhance_Unobsolete"
L6_1 = "ActionGroupTextmapID_ActionGroup_RelicEnhance_Lock"
L7_1 = "ActionGroupTextmapID_ActionGroup_RelicEnhance_Unlock"
L8_1 = "ActionGroupTextmapID_ActionGroup_RelicEnhance_Obsolete"
L9_1 = "ActionGroupTextmapID_ActionGroup_RelicEnhance_Unobsolete"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_key_map_hint_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_key_map_hint_discard
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._relic
    L2_2 = L2_2.IsProtected
    L3_2 = A0_2._binder
    L3_2 = L3_2.in_control_tip_lock
    L4_2 = L3_2
    L3_2 = L3_2.SetInControlTipKey
    if L2_2 then
      L5_2 = L3_1
      if L5_2 then
        goto lbl_28
      end
    end
    L5_2 = L2_1
    ::lbl_28::
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_tip_lock
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    if L2_2 then
      L5_2 = L7_1
      if L5_2 then
        goto lbl_38
      end
    end
    L5_2 = L6_1
    ::lbl_38::
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._relic
    L3_2 = L3_2.IsDiscard
    L4_2 = A0_2._binder
    L4_2 = L4_2.in_control_tip_discard
    L5_2 = L4_2
    L4_2 = L4_2.SetInControlTipKey
    if L3_2 then
      L6_2 = L5_1
      if L6_2 then
        goto lbl_50
      end
    end
    L6_2 = L4_1
    ::lbl_50::
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_tip_discard
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    if L3_2 then
      L6_2 = L9_1
      if L6_2 then
        goto lbl_60
      end
    end
    L6_2 = L8_1
    ::lbl_60::
    L4_2(L5_2, L6_2)
  end
end
L0_1._try_refresh_gamepad_hint = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_refresh_gamepad_hint
  L1_2(L2_2)
end
L0_1._on_in_control_input_switch = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._try_refresh_gamepad_hint
  L1_2(L2_2)
end
L0_1._on_item_changed = L10_1
return L0_1
