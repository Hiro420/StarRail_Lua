local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.BattlePass.Common.DotItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.DotItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BattlePassModule
L1_1 = "BattlePass_LightConeSwitch_R"
L2_1 = "BattlePass_LightConeSwitch_L"
L3_1 = 3
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "BattlePassRewardLightconePanel"
L6_1 = G
L6_1 = L6_1.BasePanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = {}
  A0_2._lightcone_datas = L1_2
  A0_2._current_index = 1
  L2_2 = A0_2
  L1_2 = A0_2._init_lightcone_datas
  L1_2(L2_2)
end
L4_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._lightcone_datas = L1_2
  L1_2 = L0_1.DisplayedLightConeIDs
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.ItemFactory
    L6_2 = L6_2.CreateEquipmentItemData
    L7_2 = L1_2[L5_2]
    L6_2 = L6_2(L7_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._lightcone_datas
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  A0_2._current_index = 1
end
L4_1._init_lightcone_datas = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._in_swipe = true
  L2_2 = A0_2._switch_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._switch_timer
  L3_2 = L2_2
  L2_2 = L2_2.stop
  L2_2(L3_2)
end
L4_1._on_swipe_start = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._in_swipe = false
  L2_2 = A1_2.swipeVector
  L2_2 = L2_2.x
  if 0 < L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._switch_to_left
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._switch_to_right
    L2_2(L3_2)
  end
end
L4_1._on_swipe_end = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_container1
  L4_2 = A0_2._on_btn_container
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_container2
  L4_2 = A0_2._on_btn_container
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_dot
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_list_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.SwipeStart
  L4_2 = A0_2._on_swipe_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_gesture
  L3_2 = GestureType
  L3_2 = L3_2.SwipeEnd
  L4_2 = A0_2._on_swipe_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._switch_to_right
  L4_2 = L3_1
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._switch_timer = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L1_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._switch_timer
    L1_3 = L0_3
    L0_3 = L0_3.reset
    L0_3(L1_3)
    L0_3 = A0_2._switch_timer
    L1_3 = L0_3
    L0_3 = L0_3.start
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_view
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L2_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._switch_timer
    L1_3 = L0_3
    L0_3 = L0_3.reset
    L0_3(L1_3)
    L0_3 = A0_2._switch_timer
    L1_3 = L0_3
    L0_3 = L0_3.start
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh_view
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.HedgehogTeam
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.AddUIIgnoredGameobject
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_container1
  L2_2 = L2_2.gameObject
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.HedgehogTeam
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.AddUIIgnoredGameobject
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_container2
  L2_2 = L2_2.gameObject
  L1_2(L2_2)
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.ClearEvent
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.HedgehogTeam
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.RemoveUIIgnoredGameobject
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_container1
  L2_2 = L2_2.gameObject
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.HedgehogTeam
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.EasyTouch
  L1_2 = L1_2.RemoveUIIgnoredGameobject
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_container2
  L2_2 = L2_2.gameObject
  L1_2(L2_2)
end
L4_1._on_dispose = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L4_1.register_click_callback = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L2_2 = A0_2._switch_timer
    L3_2 = L2_2
    L2_2 = L2_2.reset
    L2_2(L3_2)
    L2_2 = A0_2._switch_timer
    L3_2 = L2_2
    L2_2 = L2_2.start
    L2_2(L3_2)
  else
    L2_2 = A0_2._switch_timer
    L3_2 = L2_2
    L2_2 = L2_2.reset
    L2_2(L3_2)
    L2_2 = A0_2._switch_timer
    L3_2 = L2_2
    L2_2 = L2_2.stop
    L2_2(L3_2)
  end
end
L4_1._on_owner_active_change = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._current_index = 1
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._switch_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._switch_timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L4_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_lightcone_view
  L3_2 = A0_2._current_index
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_dot_view
  L1_2(L2_2)
end
L4_1._refresh_view = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_container
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._lightcone_datas
  L4_2 = L4_2[A1_2]
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_container_next
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._lightcone_datas
  L4_2 = L4_2[A1_2]
  L2_2(L3_2, L4_2)
end
L4_1._setup_lightcone_view = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._lightcone_datas
  L1_2 = #L1_2
  return L1_2
end
L4_1._get_count = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_dot
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L4_2 = A0_2
  L3_2 = A0_2._get_count
  L3_2 = L3_2(L4_2)
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_dot
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L4_1._setup_dot_view = L5_1
function L5_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.DotItemPanel
    L8_2 = G
    L8_2 = L8_2.DotItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A2_2 + 1
  L8_2 = A0_2._current_index
  L7_2 = L7_2 == L8_2
  L5_2(L6_2, L7_2)
  return L3_2
end
L4_1._on_list_item_changed = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._switch_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._switch_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_container
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._lightcone_datas
  L4_2 = A0_2._current_index
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._current_index
  L1_2 = L1_2 - 1
  A0_2._current_index = L1_2
  L1_2 = A0_2._current_index
  if L1_2 == 0 then
    L1_2 = A0_2._lightcone_datas
    L1_2 = #L1_2
    A0_2._current_index = L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_container_next
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._lightcone_datas
  L4_2 = A0_2._current_index
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_dot_view
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L4_1._switch_to_left = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._switch_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._switch_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_container
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._lightcone_datas
  L4_2 = A0_2._current_index
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._current_index
  L1_2 = L1_2 + 1
  A0_2._current_index = L1_2
  L1_2 = A0_2._current_index
  L2_2 = A0_2._lightcone_datas
  L2_2 = #L2_2
  if L1_2 > L2_2 then
    A0_2._current_index = 1
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_container_next
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._lightcone_datas
  L4_2 = A0_2._current_index
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_dot_view
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L4_1._switch_to_right = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._switch_to_left
  L1_2(L2_2)
end
L4_1.switch_to_left = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._switch_to_right
  L1_2(L2_2)
end
L4_1.switch_to_right = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._in_swipe
  if L1_2 then
    return
  end
  L1_2 = A0_2._switch_timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._switch_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_handler
  L5_2 = A0_2
  L4_2 = A0_2._get_current_lightcone
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L4_1._on_btn_container = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._lightcone_datas
  L2_2 = A0_2._current_index
  L1_2 = L1_2[L2_2]
  return L1_2
end
L4_1._get_current_lightcone = L5_1
return L4_1
