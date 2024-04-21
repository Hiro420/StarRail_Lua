local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameReSha.MiniGameReShaPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameReSha.MiniGameReShaRoutePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameReSha.MiniGameReShaRoutePanelBinder"
L0_1(L1_1)
L0_1 = "MiniGameResha_InfoPanel_FadeIn"
L1_1 = "MiniGameResha_InfoPanel_FadeOut"
L2_1 = "MiniGameResha_InfoPanel_Repeat"
L3_1 = 0.9
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "MiniGameReShaPanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ReShaSceneSelectionModuleUIFacade
  L1_2 = L1_2.TryCreateCurModuleFacade
  L1_2 = L1_2()
  A0_2._module_facade = L1_2
  L1_2 = A0_2._module_facade
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "[ReSha] \229\189\147\229\137\141\230\178\161\230\156\137\230\173\163\229\156\168\232\191\144\232\161\140\231\154\132ReShaSceneSelectionModule"
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._module_facade
  L2_2 = L1_2
  L1_2 = L1_2.GetRouteDisplayRows
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  A0_2._route_display_rows = L2_2
  if L1_2 ~= nil then
    L2_2 = 0
    L3_2 = L1_2.Count
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = A0_2._route_display_rows
      L7_2 = L1_2[L5_2]
      L7_2 = L7_2.ID
      L8_2 = L1_2[L5_2]
      L6_2[L7_2] = L8_2
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._init_route_panels
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._bind_btn_callback
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_assistant
  L5_2 = A0_2._on_btn_assistant_click
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.ReShaOnRouteChange
  L5_2 = A0_2._on_resha_on_route_change
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.ReShaOnEasterEggPropStateChange
  L5_2 = A0_2._on_resha_on_easter_egg_prop_state_change
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._register_floor_saved_value_change_callback
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.rpg_anim_event_assistant
  L3_2 = L2_2
  L2_2 = L2_2.AddAnimationEvent
  L4_2 = L0_1
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_assistant_fade_in_anim_end
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.rpg_anim_event_assistant
  L3_2 = L2_2
  L2_2 = L2_2.AddAnimationEvent
  L4_2 = L1_1
  function L5_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_assistant_fade_out_anim_end
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2, L5_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._module_facade
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "[ReSha] \229\189\147\229\137\141\230\178\161\230\156\137\230\173\163\229\156\168\232\191\144\232\161\140\231\154\132ReShaSceneSelectionModule"
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_assistant
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._last_is_hidden_route_unlocked = false
  A0_2._cur_is_hidden_route_unlocked = false
  A0_2._last_is_assistant_show = false
  A0_2._cur_is_hidden_route_clear = false
  L2_2 = A0_2
  L1_2 = A0_2._refresh_route_change
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_click_hint
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_virtual_cursor
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = {}
  L4_2 = "ActionGroup_MoveCursor"
  L5_2 = "Menu_Confirm"
  L6_2 = "ActionGroup_Return"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L1_2(L2_2, L3_2)
end
L4_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._unregister_floor_saved_value_change_callback
  L1_2(L2_2)
end
L4_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._module_facade
  L1_2 = L1_2.IsCurRouteSelected
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UICenterToastMessageTextID
    L3_2 = "UIText_ReSha_Hint_Tips_NoSelect"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ReShaRouteDisplayExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._module_facade
  L2_2 = L2_2.CurRouteDisplayID
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2._cur_is_clue_got
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._show_route_assistant
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UICenterToastMessageTextID
    L4_2 = L1_2.NoClueHint
    L2_2(L3_2, L4_2)
  end
end
L4_1._on_btn_assistant_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_route_change
  L2_2(L3_2)
end
L4_1._on_resha_on_route_change = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_status_variables
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_condition_list
  L2_2(L3_2)
end
L4_1._on_resha_on_easter_egg_prop_state_change = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._cur_is_hidden_route_unlocked
  if L2_2 ~= nil then
    L2_2 = A0_2._cur_route_display_row
    L2_2 = L2_2.HiddenRouteUnlockFloorSavedValueKey
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._refresh_on_hidden_route_unlock
      L2_2(L3_2)
    end
  end
end
L4_1._on_floor_saved_value_change = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._cur_is_clue_got
  if L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromBegin
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_assistant
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
  end
end
L4_1._on_assistant_fade_in_anim_end = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_assistant
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_condition_list
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
end
L4_1._on_assistant_fade_out_anim_end = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AdventureModule
  L1_2 = L1_2.MapDef
  L1_2 = L1_2.FloorSavedValues
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_floor_saved_value_change
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  A0_2._on_floor_saved_value_change_callback = L2_2
  L2_2 = pairs
  L3_2 = A0_2._route_display_rows
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = G
    L7_2 = L7_2.StrExt
    L7_2 = L7_2.IsNullOrEmpty
    L8_2 = L6_2.HiddenRouteUnlockFloorSavedValueKey
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L8_2 = L1_2
      L7_2 = L1_2.RegisterOnSavedValueChange
      L9_2 = L6_2.HiddenRouteUnlockFloorSavedValueKey
      L10_2 = A0_2._on_floor_saved_value_change_callback
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L4_1._register_floor_saved_value_change_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._route_display_rows
  if L1_2 ~= nil then
    L1_2 = A0_2._on_floor_saved_value_change_callback
    if L1_2 ~= nil then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_ModuleManager
      L1_2 = L1_2.AdventureModule
      L1_2 = L1_2.MapDef
      L1_2 = L1_2.FloorSavedValues
      L2_2 = pairs
      L3_2 = A0_2._route_display_rows
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L7_2 = G
        L7_2 = L7_2.StrExt
        L7_2 = L7_2.IsNullOrEmpty
        L8_2 = L6_2.HiddenRouteUnlockFloorSavedValueKey
        L7_2 = L7_2(L8_2)
        if not L7_2 then
          L8_2 = L1_2
          L7_2 = L1_2.UnregisterOnSavedValueChange
          L9_2 = L6_2.HiddenRouteUnlockFloorSavedValueKey
          L10_2 = A0_2._on_floor_saved_value_change_callback
          L7_2(L8_2, L9_2, L10_2)
        end
      end
    end
  end
end
L4_1._unregister_floor_saved_value_change_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  A0_2._route_panels = L1_2
  L1_2 = pairs
  L2_2 = A0_2._route_display_rows
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = G
    L6_2 = L6_2.StrExt
    L6_2 = L6_2.IsNullOrEmpty
    L7_2 = L5_2.RoutePanelPrefab
    L6_2 = L6_2(L7_2)
    if not L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2.sync_load_prefab
      L8_2 = L5_2.RoutePanelPrefab
      L9_2 = A0_2._binder
      L9_2 = L9_2.node_route_panel_root
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L8_2 = A0_2
      L7_2 = A0_2.create_panel
      L9_2 = G
      L9_2 = L9_2.MiniGameReShaRoutePanel
      L10_2 = G
      L10_2 = L10_2.MiniGameReShaRoutePanelBinder
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L9_2 = L7_2
      L8_2 = L7_2.bind
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
      L8_2 = A0_2._route_panels
      L9_2 = L5_2.ID
      L8_2[L9_2] = L7_2
    end
  end
end
L4_1._init_route_panels = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_status_variables
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_route_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_assistant
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L4_1._refresh_route_change = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._route_display_rows
  L2_2 = A0_2._module_facade
  L2_2 = L2_2.CurRouteDisplayID
  L1_2 = L1_2[L2_2]
  A0_2._cur_route_display_row = L1_2
  L1_2 = A0_2._cur_is_hidden_route_unlocked
  A0_2._last_is_hidden_route_unlocked = L1_2
  L1_2 = A0_2._cur_route_display_row
  L2_2 = A0_2
  L1_2 = A0_2._is_hidden_route_unlocked
  L3_2 = A0_2._cur_route_display_row
  L1_2 = L1_2 ~= nil and L1_2
  A0_2._cur_is_hidden_route_unlocked = L1_2
  L1_2 = A0_2._cur_route_display_row
  L2_2 = A0_2
  L1_2 = A0_2._is_route_assistant_clue_got
  L3_2 = A0_2._cur_route_display_row
  L1_2 = L1_2 ~= nil and L1_2
  A0_2._cur_is_clue_got = L1_2
  L1_2 = A0_2._cur_route_display_row
  L2_2 = A0_2
  L1_2 = A0_2._is_hidden_route_clear
  L3_2 = A0_2._cur_route_display_row
  L1_2 = L1_2 ~= nil and L1_2
  A0_2._cur_is_hidden_route_clear = L1_2
  L1_2 = A0_2._cur_is_assistant_show
  A0_2._last_is_assistant_show = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._is_route_assistant_unlocked
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._cur_is_hidden_route_unlocked
    L1_2 = not L1_2
  end
  A0_2._cur_is_assistant_show = L1_2
end
L4_1._refresh_status_variables = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unselect_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = A0_2._route_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.safe_set_active
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._module_facade
  L1_2 = L1_2.IsCurRouteSelected
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_unselect_hint
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._route_panels
  L2_2 = A0_2._module_facade
  L2_2 = L2_2.CurRouteDisplayID
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.safe_set_active
    L4_2 = true
    L2_2(L3_2, L4_2)
    L3_2 = L1_2
    L2_2 = L1_2.setup_view
    L4_2 = A0_2._cur_route_display_row
    L5_2 = A0_2._cur_is_hidden_route_unlocked
    L6_2 = A0_2._cur_is_hidden_route_clear
    L7_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
end
L4_1._refresh_route_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_status_variables
  L1_2(L2_2)
  L1_2 = A0_2._route_panels
  L2_2 = A0_2._module_facade
  L2_2 = L2_2.CurRouteDisplayID
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.setup_view
    L4_2 = A0_2._cur_route_display_row
    L5_2 = A0_2._cur_is_hidden_route_unlocked
    L6_2 = A0_2._cur_is_hidden_route_clear
    L7_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_assistant
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L4_1._refresh_on_hidden_route_unlock = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._last_is_assistant_show
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_assistant
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._cur_is_assistant_show
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.UnityEngine
    L2_2 = L2_2.Time
    L2_2 = L2_2.frameCount
    A0_2._last_invoke_delay_assistant_fade_in_frame_count = L2_2
    L2_2 = A0_2._last_invoke_delay_assistant_fade_in_frame_count
    function L3_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2.is_destroyed
      if not L0_3 then
        L0_3 = A0_2._cur_is_assistant_show
        if L0_3 then
          L0_3 = A0_2._last_invoke_delay_assistant_fade_in_frame_count
          L1_3 = L2_2
          if L0_3 == L1_3 then
            goto lbl_12
          end
        end
      end
      do return end
      ::lbl_12::
      L0_3 = A0_2._binder
      L0_3 = L0_3.node_assistant
      L1_3 = L0_3
      L0_3 = L0_3.SafeSetActive
      L2_3 = true
      L0_3(L1_3, L2_3)
      L0_3 = A0_2._binder
      L0_3 = L0_3.btn_assistant
      L1_3 = A0_2._cur_is_clue_got
      L1_3 = not L1_3
      L0_3.IsInFakeDisableState = L1_3
      L0_3 = CS
      L0_3 = L0_3.RPG
      L0_3 = L0_3.Client
      L0_3 = L0_3.UIAnimationUtils
      L0_3 = L0_3.PlayFromBegin
      L1_3 = A0_2._binder
      L1_3 = L1_3.anim_assistant
      L2_3 = L0_1
      L0_3(L1_3, L2_3)
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._refresh_condition_list
      L0_3(L1_3)
    end
    if A1_2 then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.CoroutineUtils
      L4_2 = L4_2.InvokeAfterSeconds
      L5_2 = L3_1
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
    else
      L4_2 = L3_2
      L4_2()
    end
  end
end
L4_1._refresh_assistant = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_is_clue_got
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_condition_list
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._module_facade
    L2_2 = L1_2
    L1_2 = L1_2.GetCurRouteEasterEggConditionMatchedCount
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_condition_list
    L3_2 = L2_2
    L2_2 = L2_2.setup_view
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_condition_list
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L4_1._refresh_condition_list = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "ReSha_AssistantUnlockFloorSavedValueKey"
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Value
    if L2_2 ~= nil then
      L2_2 = L1_2.Value
      L2_2 = L2_2.IsString
      if L2_2 then
        goto lbl_18
      end
    end
  end
  do return end
  ::lbl_18::
  L3_2 = A0_2
  L2_2 = A0_2._check_floor_saved_value
  L4_2 = L1_2.Value
  L4_2 = L4_2.StringValue
  return L2_2(L3_2, L4_2)
end
L4_1._is_route_assistant_unlocked = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.AssistantItemID
  if L2_2 == 0 then
    L3_2 = true
    return L3_2
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.InventoryModule
  L4_2 = L3_2
  L3_2 = L3_2.GetItemCountByConfigID
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 0 < L3_2
  return L4_2
end
L4_1._is_route_assistant_clue_got = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.MazeMiniGame.MiniGamePanel.MiniGameReSha.MiniGameReShaAssistantDialog"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ReShaAssistantShow
  L2_2(L3_2)
end
L4_1._show_route_assistant = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.HiddenRouteUnlockFloorSavedValueKey
  L3_2 = G
  L3_2 = L3_2.StrExt
  L3_2 = L3_2.IsNullOrEmpty
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = false
    return L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._check_floor_saved_value
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end
L4_1._is_hidden_route_unlocked = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2.HiddenRouteClearFloorSavedValueKey
  L3_2 = G
  L3_2 = L3_2.StrExt
  L3_2 = L3_2.IsNullOrEmpty
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = false
    return L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2._check_floor_saved_value
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end
L4_1._is_hidden_route_clear = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.AdventureModule
  L2_2 = L2_2.MapDef
  L2_2 = L2_2.FloorSavedValues
  L4_2 = L2_2
  L3_2 = L2_2.GetValue
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 0 < L3_2
  return L4_2
end
L4_1._check_floor_saved_value = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_virtual_cursor
  L2_2(L3_2)
end
L4_1._on_in_control_input_switch = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_cursor
    L2_2 = L1_2
    L1_2 = L1_2.show
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_cursor
    L2_2 = L1_2
    L1_2 = L1_2.hide
    L1_2(L2_2)
  end
end
L4_1._refresh_virtual_cursor = L5_1
return L4_1
