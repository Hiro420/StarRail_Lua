local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.MonopolyEventOptionItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.Event.MonopolyEventOptionItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.FeatureSwitchModule
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityMonopolyOptionalEventOptionListPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_list_view
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_option_list_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIMonopolySelectOptionEventFinish
  L4_2 = A0_2._on_select_option_finish
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._event_data = A1_2
  A0_2._is_show_bubble = A2_2
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A0_2._event_data
  L4_2 = L4_2.OptionList
  L3_2 = L3_2(L4_2)
  A0_2._option_data_table = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._event_data
  L5_2 = L5_2.Content
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_desc_sp
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._event_data
  L5_2 = L5_2.Content
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._event_data
  L5_2 = L5_2.IsSpecial
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_desc_sp
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._event_data
  L5_2 = L5_2.IsSpecial
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_option_list_view
  L3_2(L4_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_list_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L4_2 = L2_2
    L3_2 = L2_2.get_first_selected_object
    return L3_2(L4_2)
  end
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MonopolyEventOptionItemPanel
    L8_2 = G
    L8_2 = L8_2.MonopolyEventOptionItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._option_data_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.register_click_callback
  L8_2 = A0_2._on_option_click
  L9_2 = A0_2
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L2_1._on_option_list_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.option_list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._option_data_table
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._refresh_option_list_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._click_option_finish_callback = A1_2
  A0_2._click_option_finish_handler = A2_2
end
L2_1.register_click_option_finish_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._select_option_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block_for_packet
  L4_2 = CS
  L4_2 = L4_2.PBIBDHBOIGI
  L4_2 = L4_2.FGKECAKAKLC
  L2_2(L3_2, L4_2)
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.SendMonopolySelectOptionCsReq
  L4_2 = A1_2.ID
  L5_2 = A0_2._event_data
  L5_2 = L5_2.ID
  L2_2(L3_2, L4_2, L5_2)
end
L2_1._on_option_click = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A1_2
  L3_2 = A0_2._select_option_data
  L3_2 = L3_2.ID
  L4_2 = L2_2.OptionID
  if L3_2 ~= L4_2 then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogErrorFormat
    L4_2 = "[UI] ActivityMonopolyRandomOptionPage \233\128\137\230\139\169ID\228\184\141\229\140\185\233\133\141"
    L3_2(L4_2)
    return
  end
  L3_2 = 1
  L4_2 = A0_2._option_data_table
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.option_list_view
    L8_2 = L7_2
    L7_2 = L7_2.GetShownItemByItemIndex
    L9_2 = L6_2 - 1
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L8_2 = L7_2.UserObjectData
      L9_2 = A0_2._option_data_table
      L9_2 = L9_2[L6_2]
      L9_2 = L9_2.ID
      L10_2 = L2_2.OptionID
      L9_2 = L9_2 == L10_2
      L10_2 = L1_1
      L11_2 = L10_2
      L10_2 = L10_2.IsFeatureClosed
      L12_2 = CS
      L12_2 = L12_2.KJMOMPDBPKH
      L12_2 = L12_2.GBKPNMDNGJI
      L10_2 = L10_2(L11_2, L12_2)
      L12_2 = L8_2
      L11_2 = L8_2.after_option_select
      L13_2 = L9_2
      L15_2 = L2_2
      L14_2 = L2_2.GetOptionRatio
      L16_2 = A0_2._option_data_table
      L16_2 = L16_2[L6_2]
      L16_2 = L16_2.ID
      L14_2 = L14_2(L15_2, L16_2)
      L15_2 = A0_2._event_data
      L15_2 = L15_2.IsDataReport
      L16_2 = L10_2
      L17_2 = A0_2._is_show_bubble
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
  end
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.invoke_callback
  L4_2 = A0_2._click_option_finish_callback
  L5_2 = A0_2._click_option_finish_handler
  L6_2 = A0_2._select_option_data
  L3_2(L4_2, L5_2, L6_2)
end
L2_1._on_select_option_finish = L3_1
return L2_1
