local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportRewardDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportRewardItemPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyTransportRewardDialog"
L2_1 = G
L2_1 = L2_1.BaseDialog
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AlleyTransportRewardDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = 1
  end
  A0_2._cur_show_layer = L2_2
end
L0_1.init = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    L2_2 = L2_2._binder
    L2_2 = L2_2.btn_root
    L2_2 = L2_2.gameObject
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.title_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityAlley_Airline_Finished_Reward"
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetShowAlleyMapRewardRowListByLayer
  L3_2 = A0_2._cur_show_layer
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.cs_list_to_table
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetAlleyMapIDByLayer
  L5_2 = A0_2._cur_show_layer
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetLogisticsScoreByMapID
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._logistics_score = L4_2
  L4_2 = {}
  A0_2._map_reward_data_list = L4_2
  L4_2 = A0_2._logistics_score
  if L4_2 then
    L4_2 = A0_2._logistics_score
    L4_2 = L4_2.UnlockLevel
    if L4_2 then
      goto lbl_34
    end
  end
  L4_2 = 0
  ::lbl_34::
  L5_2 = A0_2._logistics_score
  if L5_2 then
    L5_2 = A0_2._logistics_score
    L5_2 = L5_2.LastLevel
    if L5_2 then
      goto lbl_42
    end
  end
  L5_2 = 0
  ::lbl_42::
  if 0 < L4_2 then
    L6_2 = 1
    L7_2 = L4_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = {}
      L10_2.index = L9_2
      L10_2.is_empty = false
      L11_2 = L9_2 <= L5_2
      L10_2.is_got_reward = L11_2
      L11_2 = L2_2[L9_2]
      L10_2.map_reward_data = L11_2
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = A0_2._map_reward_data_list
      L13_2 = L10_2
      L11_2(L12_2, L13_2)
    end
  end
  L6_2 = table
  L6_2 = L6_2.sort
  L7_2 = A0_2._map_reward_data_list
  function L8_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.is_got_reward
    if L2_3 == true then
      L2_3 = A1_3.is_got_reward
      if L2_3 == false then
        L2_3 = false
        return L2_3
    end
    else
      L2_3 = A0_3.is_got_reward
      if L2_3 == false then
        L2_3 = A1_3.is_got_reward
        if L2_3 == true then
          L2_3 = true
          return L2_3
      end
      else
        L2_3 = A0_3.index
        L3_3 = A1_3.index
        L2_3 = L2_3 < L3_3
        return L2_3
      end
    end
  end
  L6_2(L7_2, L8_2)
  L6_2 = #L2_2
  if L4_2 < L6_2 then
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_unlock_tip
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetActive
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.text_unlock_tip
    L7_2 = L6_2
    L6_2 = L6_2.SafeSetTextID
    L8_2 = "UIText_ActivityAlley_Airline_ScoreLocked"
    L6_2(L7_2, L8_2)
  end
  L6_2 = A0_2._binder
  L6_2 = L6_2.scroll_view
  L7_2 = L6_2
  L6_2 = L6_2.SetListItemCount
  L8_2 = A0_2._map_reward_data_list
  L8_2 = #L8_2
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.scroll_view
  L7_2 = L6_2
  L6_2 = L6_2.RefreshAllShownItem
  L6_2(L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._init_ui_navigation
  L6_2(L7_2)
  L6_2 = A0_2._logistics_score
  if L6_2 then
    L6_2 = A0_2._logistics_score
    L6_2 = L6_2.MaxScore
    if L6_2 then
      goto lbl_103
    end
  end
  L6_2 = 0
  ::lbl_103::
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_tips
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetTextID
  L9_2 = "UIText_ActivityAlley_Airline_HighestScore"
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 35
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_21
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.AlleyTransportRewardItemPanel
  L8_2 = G
  L8_2 = L8_2.AlleyTransportRewardItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._map_reward_data_list
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_item_change = L2_1
return L0_1
