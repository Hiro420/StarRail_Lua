local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityPenaconyGift.PenaconyGiftMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPenaconyGift.PenaconyGiftItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityPenaconyGift.PenaconyGiftItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityMonsterResearchModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.ActivityMonsterResearchConstExcelTable
L2_1 = L2_1.GetData
L3_1 = "PenaconyGift_ContentID"
L2_1 = L2_1(L3_1)
L2_1 = L2_1.Value
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.ActivityMonsterResearchConstExcelTable
L3_1 = L3_1.GetData
L4_1 = "PenaconyGift_PanelID"
L3_1 = L3_1(L4_1)
L3_1 = L3_1.Value
L4_1 = "UIText_PenaconyGift_Tip_1"
L5_1 = "UIText_PenaconyGift_Tip_2"
L6_1 = "PenaconyGiftEnterPage_FadeIn"
L7_1 = "PenaconyGiftEnterPage_FadeOut"
L8_1 = "PenaconyGiftEnterPage_FadeOut_Delay"
L9_1 = G
L9_1 = L9_1.Class
L10_1 = "PenaconyGiftMainPage"
L11_1 = G
L11_1 = L11_1.UIController
L9_1 = L9_1(L10_1, L11_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PenaconyGiftMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_EnterWithFastForward
  A0_2._transition_style = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  L1_2 = {}
  A0_2._research_ids = L1_2
  L1_2 = {}
  A0_2._main_mission_finish = L1_2
  A0_2._default_research_index = 1
  A0_2._cur_select_panel = nil
end
L9_1.ctor = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2 == "HideGoto"
  A0_2._is_hide_goto = L3_2
  A0_2.is_submit_page_open = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._init_research_id
  L3_2(L4_2)
end
L9_1.init = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2.override_transition_anim_type
  L3_2 = "PenaconyGiftItemInfoPage"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.UITransitionAnimType
  L4_2 = L4_2.Morph
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rule_tip
  L4_2 = A0_2._on_btn_rule_tip
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_item_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L9_1._on_load = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_scroll_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._scroll_to_first_unlock_gift
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ActivityPanelExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L3_1
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ScheduleModule
  L3_2 = L2_2
  L2_2 = L2_2.GetScheduleDataByActivityModuleID
  L4_2 = L1_2.ActivityModuleID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.remain_timer
  L4_2 = L3_2
  L3_2 = L3_2.SetTargetTime
  L5_2 = L2_2.EndTimeDate
  L6_2 = A0_2.exit
  L7_2 = A0_2
  L8_2 = 2
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  A0_2._anim_length = 0.5
  L4_2 = A0_2
  L3_2 = A0_2._add_count_down_timer
  L5_2 = A0_2._on_fade_in_finish
  L6_2 = A0_2._anim_length
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  A0_2._anim_timer = L3_2
  L3_2 = A0_2._anim_timer
  L4_2 = L3_2
  L3_2 = L3_2.reset
  L3_2(L4_2)
  L3_2 = A0_2._anim_timer
  L4_2 = L3_2
  L3_2 = L3_2.start
  L3_2(L4_2)
end
L9_1._setup_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_scroll_view
  L1_2(L2_2)
end
L9_1._on_return_to_top = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._remove_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MonsterResearchDataRefresh
  L4_2 = A0_2._refresh
  L1_2(L2_2, L3_2, L4_2)
end
L9_1._on_dispose = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_top_page
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = L8_1
    return L1_2
  end
  L1_2 = ""
  return L1_2
end
L9_1.get_custom_fade_out_anim_name = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.MonsterResearchDataRefresh
  L4_2 = A0_2._refresh
  L1_2(L2_2, L3_2, L4_2)
end
L9_1._add_handlers = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L9_1._init_ui_navigation = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._cur_click_panel
    if L2_2 ~= nil then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L4_2 = A0_2._cur_click_panel
      L5_2 = L4_2
      L4_2 = L4_2.get_first_selected_object
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      A0_2._cur_click_panel = nil
    else
      L2_2 = A0_2._cur_select_panel
      if L2_2 ~= nil then
        L3_2 = A0_2
        L2_2 = A0_2.set_navigation_target
        L4_2 = A0_2._cur_select_panel
        L5_2 = L4_2
        L4_2 = L4_2.get_first_selected_object
        L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
      else
        L2_2 = A0_2._binder
        L2_2 = L2_2.scroll_view
        L3_2 = L2_2
        L2_2 = L2_2.GetShownItemByItemIndex
        L4_2 = A0_2._default_research_index
        L4_2 = L4_2 - 1
        L2_2 = L2_2(L3_2, L4_2)
        if L2_2 ~= nil then
          L3_2 = L2_2.UserObjectData
          L5_2 = A0_2
          L4_2 = A0_2.set_navigation_target
          L7_2 = L3_2
          L6_2 = L3_2.get_first_selected_object
          L6_2, L7_2 = L6_2(L7_2)
          L4_2(L5_2, L6_2, L7_2)
        end
      end
    end
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = {}
    L5_2 = "Menu_Confirm"
    L6_2 = "ActionGroup_Return"
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L2_2(L3_2, L4_2)
  end
end
L9_1._on_enter_zoom = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._anim_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = A0_2._research_ids
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.scroll_view
    L6_2 = L5_2
    L5_2 = L5_2.GetShownItemByItemIndex
    L7_2 = L4_2 - 1
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 ~= nil then
      L6_2 = L5_2.UserObjectData
      L7_2 = L6_2
      L6_2 = L6_2.parent_fade_in_finish
      L6_2(L7_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L9_1._on_fade_in_finish = L10_1
function L10_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2.UserObjectData
  if L6_2 == nil then
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.PenaconyGiftItemPanel
    L10_2 = G
    L10_2 = L10_2.PenaconyGiftItemPanelBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L7_2
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2.transform
    L7_2(L8_2, L9_2)
    L5_2.UserObjectData = L6_2
  end
  L7_2 = false
  if A2_2 == 0 then
    L7_2 = true
  else
    L8_2 = A0_2._main_mission_finish
    L7_2 = L8_2[A2_2]
  end
  L9_2 = L6_2
  L8_2 = L6_2.setup_view
  L10_2 = A0_2._research_ids
  L11_2 = A2_2 + 1
  L10_2 = L10_2[L11_2]
  L11_2 = L7_2
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L6_2
  L8_2 = L6_2.register_btn_callback
  L10_2 = A0_2._on_item_click
  L11_2 = A0_2
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = L6_2
  L8_2 = L6_2.register_btn_select_navigation_callback
  L10_2 = A0_2._on_item_select
  L11_2 = A0_2
  L8_2(L9_2, L10_2, L11_2)
  return L5_2
end
L9_1._on_item_change = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = 1
  L4_2 = A0_2._research_ids
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._research_ids
    L7_2 = L7_2[L6_2]
    if A1_2 == L7_2 then
      L7_2 = A0_2._binder
      L7_2 = L7_2.scroll_view
      L8_2 = L7_2
      L7_2 = L7_2.GetShownItemByItemIndex
      L9_2 = L6_2 - 1
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 ~= nil then
        if A2_2 then
          L8_2 = L7_2.UserObjectData
          A0_2._cur_click_panel = L8_2
        else
          L8_2 = L7_2.UserObjectData
          A0_2._cur_select_panel = L8_2
        end
        A0_2._cur_id = A1_2
      end
    end
  end
end
L9_1._on_item_select = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2
  L3_2 = A0_2._on_item_select
  L5_2 = A1_2
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetResearchData
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.IsInSchedule
  if not L4_2 then
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.UIPileToastMessageTextID
    L6_2 = L4_1
    L4_2(L5_2, L6_2)
  else
    L4_2 = L3_2.IsInSchedule
    if L4_2 and not A2_2 then
      L4_2 = G
      L4_2 = L4_2.NotifyManager
      L4_2 = L4_2.notify
      L5_2 = G
      L5_2 = L5_2.CS
      L5_2 = L5_2.NotifyType
      L5_2 = L5_2.UIPileToastMessageTextID
      L6_2 = L5_1
      L4_2(L5_2, L6_2)
    else
      L4_2 = G
      L4_2 = L4_2.UIManager
      L4_2 = L4_2.load_and_async_show
      L5_2 = "Ui.Activity.ActivityPenaconyGift.PenaconyGiftItemInfoPage"
      L6_2 = A1_2
      L7_2 = false
      L8_2 = A0_2._is_hide_goto
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = L4_2.LuaTable
      L6_2 = L5_2
      L5_2 = L5_2.set_exit_callback_with_one_param
      L7_2 = A0_2._on_info_page_exit
      L8_2 = A0_2
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.Prefs
      L5_2 = L5_2.User
      L5_2 = L5_2.SeenPenaconyGiftNewUnlockGifts
      L6_2 = L5_2
      L5_2 = L5_2.Add
      L7_2 = A1_2
      L5_2(L6_2, L7_2)
    end
  end
end
L9_1._on_item_click = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperDebug
  L1_2 = L1_2.LogFormat
  L2_2 = "PenaconyGiftMainPage: \230\137\147\229\188\128\232\175\180\230\152\142\231\149\140\233\157\162"
  L1_2(L2_2)
end
L9_1._on_btn_rule_tip = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  if not A1_2 then
    return
  end
  L2_2 = A0_2.is_submit_page_open
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.exit
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_UIManager
    L3_2 = L2_2
    L2_2 = L2_2.BackToFirstPage
    L2_2(L3_2)
  end
end
L9_1._on_info_page_exit = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = 1
  L3_2 = A0_2._research_ids
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L0_1
    L7_2 = L6_2
    L6_2 = L6_2.TryGetResearchData
    L8_2 = A0_2._research_ids
    L8_2 = L8_2[L5_2]
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L6_2.IsComplete
    if L7_2 then
      L1_2 = L1_2 + 1
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_current_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_total_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._research_ids
  L4_2 = #L4_2
  L2_2(L3_2, L4_2)
end
L9_1._setup_text = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.TryGetContentData
  L5_2 = L2_1
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L3_2.Row
  L3_2 = L3_2.ContentParam
  L2_2 = L2_2(L3_2)
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._research_ids
    L9_2 = L2_2[L6_2]
    L7_2(L8_2, L9_2)
    L7_2 = L0_1
    L8_2 = L7_2
    L7_2 = L7_2.TryGetResearchData
    L9_2 = L2_2[L6_2]
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = L7_2.ResearchRow
    L10_2 = L10_2.MissionID
    L8_2(L9_2, L10_2)
  end
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.MainMissionDataPromised
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.Then
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L0_3 = 1
    L1_3 = L1_2
    L1_3 = #L1_3
    L2_3 = 1
    for L3_3 = L0_3, L1_3, L2_3 do
      L4_3 = L1_1
      L5_3 = L4_3
      L4_3 = L4_3.TryGetMainMissionData
      L6_3 = L1_2[L3_3]
      L4_3 = L4_3(L5_3, L6_3)
      if L4_3 == nil then
        L5_3 = table
        L5_3 = L5_3.insert
        L6_3 = A0_2._main_mission_finish
        L7_3 = false
        L5_3(L6_3, L7_3)
      else
        L5_3 = table
        L5_3 = L5_3.insert
        L6_3 = A0_2._main_mission_finish
        L7_3 = L4_3.IsFinish
        L5_3(L6_3, L7_3)
      end
    end
  end
  L3_2(L4_2, L5_2)
end
L9_1._init_research_id = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._research_ids
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L9_1._refresh_scroll_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 2
  L2_2 = A0_2._research_ids
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L0_1
    L6_2 = L5_2
    L5_2 = L5_2.TryGetResearchData
    L7_2 = A0_2._research_ids
    L7_2 = L7_2[L4_2]
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L5_2.IsUnlock
    if L6_2 then
      L6_2 = L5_2.IsComplete
      if not L6_2 then
        A0_2._default_research_index = L4_2
        L6_2 = A0_2._binder
        L6_2 = L6_2.scroll_view
        L7_2 = L6_2
        L6_2 = L6_2.MovePanelToItemByIndex
        L8_2 = L4_2 - 2
        L6_2(L7_2, L8_2)
        return
      end
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemByIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L9_1._scroll_to_first_unlock_gift = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetContentData
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.IsActivityEnd
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._refresh_scroll_view
    L1_2(L2_2)
    L2_2 = A0_2
    L1_2 = A0_2._scroll_to_first_unlock_gift
    L1_2(L2_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_root
    L3_2 = L6_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._anim_timer
    L2_2 = L1_2
    L1_2 = L1_2.reset
    L1_2(L2_2)
    L1_2 = A0_2._anim_timer
    L2_2 = L1_2
    L1_2 = L1_2.start
    L1_2(L2_2)
  end
end
L9_1._refresh = L10_1
function L10_1(A0_2, A1_2)
  A0_2.is_submit_page_open = A1_2
end
L9_1.set_is_submit_page_open = L10_1
return L9_1
