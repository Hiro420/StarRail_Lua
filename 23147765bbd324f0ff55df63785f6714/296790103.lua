local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Talk.TalkHistory.TalkHistoryPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.TalkHistory.TalkHistoryItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Talk.TalkHistory.TalkHistoryItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.TalkModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "TalkHistoryPage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.TalkHistoryPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  A0_2._datas = L1_2
  A0_2._select_index = 0
  A0_2._playing_voice_id = 0
  A0_2._playing_index = 0
  A0_2._playing_voice_instance_id = 0
  A0_2._has_played_voice = false
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GamePlayLockModule
  L2_2 = L1_2
  L1_2 = L1_2.Lock
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LockSource
  L3_2 = L3_2.PausePerformance
  L1_2(L2_2, L3_2)
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GamePlayLockModule
  L2_2 = L1_2
  L1_2 = L1_2.Unlock
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LockSource
  L3_2 = L3_2.PausePerformance
  L1_2(L2_2, L3_2)
end
L1_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = 0
  end
  A0_2._playing_voice_id = L2_2
  A0_2._playing_index = 0
end
L1_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_up
  L4_2 = A0_2._on_btn_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_down
  L4_2 = A0_2._on_btn_down
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.OnReboundEvent
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_rebound
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._do_refresh_btns
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_up
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_down
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._playing_voice_instance_id
  if L1_2 ~= 0 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_AudioManager
    L2_2 = L1_2
    L1_2 = L1_2.StopEventID
    L3_2 = A0_2._playing_voice_instance_id
    L1_2(L2_2, L3_2)
  end
end
L1_1._on_unload = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_items
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btns
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1.HistoryDatas
  L1_2 = L1_2(L2_2)
  A0_2._datas = L1_2
  L1_2 = A0_2._playing_voice_id
  if L1_2 ~= 0 then
    L1_2 = A0_2._datas
    L1_2 = #L1_2
    L2_2 = 1
    L3_2 = -1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = A0_2._datas
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2.VoiceID
      L7_2 = A0_2._playing_voice_id
      if L6_2 == L7_2 then
        A0_2._playing_index = L4_2
        break
      end
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._datas
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToByItemIndexAndOffsetPercent
  L3_2 = A0_2._datas
  L3_2 = #L3_2
  L4_2 = 1.0
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._setup_items = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 2
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._do_refresh_btns
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L1_1._refresh_btns = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = L1_2
  L1_2 = L1_2.CanScroll
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_up
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_down
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_up
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view
  L4_2 = L3_2
  L3_2 = L3_2.IsItemWithinViewport
  L5_2 = 0
  L6_2 = 0.9
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2 = not L3_2
  L2_2.interactable = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_down
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_view
  L4_2 = L3_2
  L3_2 = L3_2.IsItemWithinViewport
  L5_2 = A0_2._datas
  L5_2 = #L5_2
  L5_2 = L5_2 - 1
  L6_2 = 0.9
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L3_2 = not L3_2
  L2_2.interactable = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.control_tip_up
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_up
  L3_2 = L3_2.interactable
  L2_2.IsShowTip = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.control_tip_down
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_down
  L3_2 = L3_2.interactable
  L2_2.IsShowTip = L3_2
end
L1_1._do_refresh_btns = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A2_2 + 1
  L4_2 = A0_2._datas
  L4_2 = L4_2[L3_2]
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L8_2 = A0_2
  L7_2 = A0_2._get_prefab_index
  L9_2 = L4_2
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L7_2(L8_2, L9_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = L5_2.UserObjectData
  if L6_2 == nil then
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.TalkHistoryItemPanel
    L10_2 = G
    L10_2 = L10_2.TalkHistoryItemPanelBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L7_2
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2.transform
    L7_2(L8_2, L9_2)
    L5_2.UserObjectData = L6_2
    L8_2 = L6_2
    L7_2 = L6_2.register_voice_callback
    L9_2 = A0_2._on_voice_changed
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = L6_2
    L7_2 = L6_2.register_select_callback
    L9_2 = A0_2._on_select_changed
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
  end
  L7_2 = A0_2._playing_voice_id
  L7_2 = L7_2 ~= 0
  L9_2 = L6_2
  L8_2 = L6_2.setup_view
  L10_2 = L4_2
  L11_2 = L3_2
  L12_2 = L7_2
  L13_2 = A0_2._playing_voice_instance_id
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L9_2 = A1_2
  L8_2 = A1_2.PushTrackIndex
  L10_2 = A2_2
  L8_2(L9_2, L10_2)
  return L5_2
end
L1_1._on_item_changed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.Type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TalkHistoryType
  L3_2 = L3_2.Simple
  if L2_2 == L3_2 then
    L2_2 = A1_2.IsPlayer
    if L2_2 then
      L2_2 = 1
      return L2_2
    else
      L2_2 = 0
      return L2_2
    end
  else
    L2_2 = A1_2.Type
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TalkHistoryType
    L3_2 = L3_2.Option
    if L2_2 == L3_2 then
      L2_2 = 2
      return L2_2
    else
      L2_2 = A1_2.Type
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.TalkHistoryType
      L3_2 = L3_2.Aside
      if L2_2 == L3_2 then
        L2_2 = 3
        return L2_2
      else
        L2_2 = A1_2.Type
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.TalkHistoryType
        L3_2 = L3_2.Item
        if L2_2 == L3_2 then
          L2_2 = 4
          return L2_2
        else
          L2_2 = A1_2.Type
          L3_2 = CS
          L3_2 = L3_2.RPG
          L3_2 = L3_2.Client
          L3_2 = L3_2.TalkHistoryType
          L3_2 = L3_2.Read
          if L2_2 == L3_2 then
            L2_2 = 5
            return L2_2
          end
        end
      end
    end
  end
end
L1_1._get_prefab_index = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  if A3_2 then
    L5_2 = A0_2._playing_voice_id
    if L5_2 == A2_2 then
      L5_2 = A0_2._playing_index
      if L5_2 == A1_2 then
        return
      end
    end
    A0_2._has_played_voice = true
  else
    L5_2 = A0_2._playing_voice_id
    if L5_2 ~= A2_2 then
      return
    end
  end
  L5_2 = A2_2 or L5_2
  if not A3_2 or not A2_2 then
    L5_2 = 0
  end
  A0_2._playing_voice_id = L5_2
  L5_2 = A1_2 or L5_2
  if not A3_2 or not A1_2 then
    L5_2 = 0
  end
  A0_2._playing_index = L5_2
  L5_2 = A4_2 or L5_2
  if not A3_2 or not A4_2 then
    L5_2 = 0
  end
  A0_2._playing_voice_instance_id = L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.list_view
  L6_2 = L5_2
  L5_2 = L5_2.RefreshAllShownItem
  L5_2(L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._refresh_short_cut_hint
  L5_2(L6_2)
end
L1_1._on_voice_changed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._select_index = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_short_cut_hint
  L2_2(L3_2)
end
L1_1._on_select_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_short_cut_id
  L3_2 = A0_2._select_index
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = L1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.scroll_rect
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._refresh_short_cut_hint = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._datas
  L2_2 = L2_2[A1_2]
  if L2_2 == nil then
    L3_2 = 148
    return L3_2
  end
  L3_2 = L2_2.HasExtra
  if L3_2 then
    L3_2 = L2_2.Type
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.TalkHistoryType
    L4_2 = L4_2.Read
    if L3_2 == L4_2 then
      L3_2 = 149
      return L3_2
    end
  else
    L3_2 = L2_2.HasVoice
    if L3_2 then
      L3_2 = A0_2._playing_voice_id
      L4_2 = L2_2.VoiceID
      L3_2 = L3_2 == L4_2
      if L3_2 then
        L4_2 = 147
        if L4_2 then
          goto lbl_39
        end
      end
      L4_2 = 146
      ::lbl_39::
      return L4_2
    end
  end
  L3_2 = 148
  return L3_2
end
L1_1._get_short_cut_id = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.list_view
    L1_3 = L0_3
    L0_3 = L0_3.MovePanelToItemIndex
    L2_3 = 0
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.get_selected_object
    L2_3 = 1
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3.set_navigation_target
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
    if L0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.save_navigation_target
      L3_3 = L0_3
      L1_3(L2_3, L3_3)
    end
  end
  L4_2 = 0.1
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_btn_up = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._button_mutex
  L2_2 = L1_2
  L1_2 = L1_2.Check
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.list_view
    L1_3 = L0_3
    L0_3 = L0_3.MovePanelToByItemIndexAndOffsetPercent
    L2_3 = A0_2._datas
    L2_3 = #L2_3
    L3_3 = 1.0
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.force_set_first_navigation_target
    L0_3(L1_3)
  end
  L4_2 = 0.1
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_btn_down = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.force_set_default_navigation_target
  L2_2(L3_2)
end
L1_1._on_rebound = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L1_1._init_navigation = L2_1
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
L1_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._datas
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.get_selected_object
  L3_2 = A0_2._datas
  L3_2 = #L3_2
  return L1_2(L2_2, L3_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2 - 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      goto lbl_13
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_13::
  L3_2 = L2_2.UserObjectData
  L4_2 = L3_2
  L3_2 = L3_2.get_first_selected_object
  return L3_2(L4_2)
end
L1_1.get_selected_object = L2_1
return L1_1
