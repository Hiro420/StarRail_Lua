local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportResultDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportRewardItemPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyTransportResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.AlleyTransportResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  A0_2._reward_item_display_data = L1_2
  L1_2 = {}
  A0_2._config_id_list = L1_2
  A0_2._is_need_go_transport = false
  A0_2._is_has_map_event = false
  L1_2 = {}
  A0_2._progress_score_info_list = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  A0_2._cur_show_layer = A1_2
end
L0_1.setup_show_layer = L2_1
function L2_1(A0_2, A1_2)
  A0_2._is_has_map_event = A1_2
end
L0_1.setup_has_map_event = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = G
  L1_2 = L1_2.AlleyTransport
  L1_2 = L1_2.cur_show_layer
  L2_2 = G
  L2_2 = L2_2.AlleyTransport
  L2_2 = L2_2.max_layer
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ActivityAlley_Airline_Finished_Special"
    L1_2(L2_2, L3_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.TextmapStatic
    L1_2 = L1_2.GetText
    L2_2 = G
    L2_2 = L2_2.AlleyTransport
    L2_2 = L2_2.layer_to_show_name
    L3_2 = A0_2._cur_show_layer
    L2_2 = L2_2[L3_2]
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_title
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityAlley_Airline_Finished_Title"
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
  end
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyMapIDByLayer
  L3_2 = A0_2._cur_show_layer
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetLogisticsScoreByMapID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L3_2 = L2_2.CurScore
    if L3_2 then
      goto lbl_46
    end
  end
  L3_2 = 0
  ::lbl_46::
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_cur_score
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L2_2 then
    L4_2 = L2_2.MaxScore
    if L4_2 then
      goto lbl_57
    end
  end
  L4_2 = 0
  ::lbl_57::
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_max_score
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  if L2_2 then
    L5_2 = L2_2.LastMaxScore
    if L5_2 then
      goto lbl_68
    end
  end
  L5_2 = 0
  ::lbl_68::
  L6_2 = L4_2 > L5_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_new_record
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = {}
  A0_2._config_id_list = L7_2
  L7_2 = L2_2 or L7_2
  if L2_2 then
    L7_2 = L2_2.Reward
  end
  if L7_2 then
    L8_2 = A0_2._binder
    L8_2 = L8_2.node_reward_list_panel
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetActive
    L10_2 = true
    L8_2(L9_2, L10_2)
    L8_2 = pairs
    L9_2 = L7_2.ItemList_
    if not L9_2 then
      L9_2 = {}
    end
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    for L11_2, L12_2 in L8_2, L9_2, L10_2 do
      L13_2 = CS
      L13_2 = L13_2.RPG
      L13_2 = L13_2.Client
      L13_2 = L13_2.ItemFactory
      L13_2 = L13_2.CreateDisplayItemData
      L14_2 = L12_2.ItemId
      L15_2 = L12_2.Num
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = A0_2._config_id_list
      L16_2 = L12_2.ItemId
      L14_2(L15_2, L16_2)
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = A0_2._reward_item_display_data
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
    end
    L8_2 = G
    L8_2 = L8_2.RewardUtils
    L8_2 = L8_2.sort_reward_item
    L9_2 = A0_2._reward_item_display_data
    L8_2(L9_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.scroll_view
    L9_2 = L8_2
    L8_2 = L8_2.SetListItemCount
    L10_2 = A0_2._reward_item_display_data
    L10_2 = #L10_2
    L11_2 = true
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = A0_2._binder
    L8_2 = L8_2.scroll_view
    L9_2 = L8_2
    L8_2 = L8_2.RefreshAllShownItem
    L8_2(L9_2)
  end
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_reward_list_panel
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = A0_2._reward_item_display_data
  L10_2 = #L10_2
  L10_2 = 0 < L10_2
  L8_2(L9_2, L10_2)
  L9_2 = A0_2
  L8_2 = A0_2._setup_progress_view
  L8_2(L9_2)
  L9_2 = A0_2
  L8_2 = A0_2._setup_progress_effect
  L8_2(L9_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
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
  if L4_2 then
    L5_2 = L4_2.UnlockLevel
    if 0 < L5_2 then
      if L4_2 then
        L5_2 = L4_2.CurScore
        if L5_2 then
          goto lbl_29
        end
      end
      L5_2 = 0
      ::lbl_29::
      L6_2 = L4_2.UnlockLevel
      L6_2 = L2_2[L6_2]
      L6_2 = L6_2.MapScore
      L7_2 = A0_2._binder
      L7_2 = L7_2.slider_current_score
      L8_2 = 0 / L6_2
      L7_2.value = L8_2
      L7_2 = A0_2._binder
      L7_2 = L7_2.node_completed
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = false
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.node_current_fill
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = A0_2._binder
      L7_2 = L7_2.text_total_score
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetText
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
      L7_2 = {}
      A0_2._score_progress_data_list = L7_2
      L7_2 = 1
      L8_2 = L4_2.UnlockLevel
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = {}
        L12_2 = L2_2[L10_2]
        L12_2 = L12_2.MapScore
        if L5_2 > L12_2 then
          L12_2 = {}
          L13_2 = L2_2[L10_2]
          L13_2 = L13_2.MapScore
          L12_2.map_score = L13_2
          L12_2.is_up = true
          L13_2 = table
          L13_2 = L13_2.insert
          L14_2 = A0_2._progress_score_info_list
          L15_2 = L12_2
          L13_2(L14_2, L15_2)
        end
        L12_2 = G
        L12_2 = L12_2.AlleyTransport
        L12_2 = L12_2.score_progress_state
        L12_2 = L12_2.empty
        L11_2.progress_state = L12_2
        L12_2 = table
        L12_2 = L12_2.insert
        L13_2 = A0_2._score_progress_data_list
        L14_2 = L11_2
        L12_2(L13_2, L14_2)
      end
      L7_2 = {}
      L7_2.map_score = L5_2
      L8_2 = G
      L8_2 = L8_2.MathUtils
      L8_2 = L8_2.float_equal
      L9_2 = L4_2.UnlockLevel
      L9_2 = L2_2[L9_2]
      L9_2 = L9_2.MapScore
      L10_2 = L5_2
      L8_2 = L8_2(L9_2, L10_2)
      L7_2.is_up = L8_2
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._progress_score_info_list
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._score_progress_list_panel
      L9_2 = L8_2
      L8_2 = L8_2.setup_view
      L10_2 = A0_2._score_progress_data_list
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1._setup_progress_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
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
  L5_2 = L4_2.UnlockLevel
  L5_2 = L2_2[L5_2]
  L5_2 = L5_2.MapScore
  L6_2 = 1
  L7_2 = A0_2._binder
  L7_2 = L7_2.animation_value_change
  L8_2 = 0 / L5_2
  L7_2.StartValue = L8_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.animation_value_change
  L8_2 = A0_2._progress_score_info_list
  L8_2 = L8_2[L6_2]
  L8_2 = L8_2.map_score
  L8_2 = L8_2 / L5_2
  L7_2.EndValue = L8_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.animation_value_change
  L7_2.Duration = 0.5
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GlobalVars
  L7_2 = L7_2.s_AudioManager
  L8_2 = L7_2
  L7_2 = L7_2.PostEvent
  L9_2 = "Ev_sfx_ui_feedback_activity_alley_resultDialog_pointGet"
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.animation_value_change
  L8_2 = L7_2
  L7_2 = L7_2.SetValueChangeCallback
  function L9_2(A0_3)
    local L1_3
    L1_3 = A0_2._binder
    L1_3 = L1_3.slider_current_score
    L1_3.value = A0_3
  end
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.animation_value_change
  L8_2 = L7_2
  L7_2 = L7_2.SetFinishCallback
  function L9_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._progress_score_info_list
    L1_3 = L6_2
    L0_3 = L0_3[L1_3]
    L0_3 = L0_3.is_up
    if L0_3 then
      L0_3 = A0_2._score_progress_list_panel
      L1_3 = L0_3
      L0_3 = L0_3.get_panel_by_index
      L2_3 = L6_2
      L0_3 = L0_3(L1_3, L2_3)
      if L0_3 then
        L1_3 = L0_3._binder
        L1_3 = L1_3.animator
        L2_3 = L1_3
        L1_3 = L1_3.SetTrigger
        L3_3 = G
        L3_3 = L3_3.AlleyTransport
        L3_3 = L3_3.score_progress_state
        L3_3 = L3_3.up
        L1_3(L2_3, L3_3)
      end
    end
    L0_3 = L6_2
    L0_3 = L0_3 + 1
    L6_2 = L0_3
    L0_3 = L6_2
    L1_3 = A0_2._progress_score_info_list
    L1_3 = #L1_3
    L1_3 = L1_3 + 1
    if L0_3 < L1_3 then
      L0_3 = A0_2._progress_score_info_list
      L1_3 = L6_2
      L0_3 = L0_3[L1_3]
      L0_3 = L0_3.map_score
      L1_3 = L5_2
      L0_3 = L0_3 / L1_3
      L1_3 = A0_2._binder
      L1_3 = L1_3.animation_value_change
      L2_3 = L1_3
      L1_3 = L1_3.Continue
      L3_3 = L0_3
      L1_3(L2_3, L3_3)
    end
  end
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.animation_value_change
  L8_2 = L7_2
  L7_2 = L7_2.Play
  L7_2(L8_2)
end
L0_1._setup_progress_effect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_game_pad
  L4_2 = A0_2._on_btn_game_pad_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go_transport
  L4_2 = A0_2._on_btn_go_transport_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.AlleyTransport
  L1_2 = L1_2.is_use_by_tutorial
  if L1_2 == false then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_btn_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_hint_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._bind_exit_btn
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_empty_close
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._is_has_map_event
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_tip_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.NodeListView
  L4_2 = G
  L4_2 = L4_2.NodeListViewBinder
  L5_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportScoreProgressItem"
  L6_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportScoreProgressItemBinder"
  L7_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  A0_2._score_progress_list_panel = L1_2
  L1_2 = A0_2._score_progress_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_progress_list
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  if L1_2 ~= nil then
    L1_2 = A0_2._config_id_list
    L1_2 = #L1_2
    if 0 < L1_2 then
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
L0_1._on_btn_game_pad_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  A0_2._is_need_go_transport = true
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_go_transport_click = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._reward_item_display_data
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ConfigID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_reward_item_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1.TransportResultNewEventID
  if 0 < L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportShopResultDialog"
    L3_2 = L1_1.TransportResultNewEventID
    L1_2(L2_2, L3_2)
  end
  L1_1.TransportResultNewEventID = 0
  L1_2 = A0_2._is_need_go_transport
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Activity.ActivityAlley.Transport.AlleyTransportMainPage"
    L1_2(L2_2)
  end
end
L0_1._on_dispose = L2_1
return L0_1
