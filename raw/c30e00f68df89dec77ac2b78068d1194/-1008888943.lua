local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.MusicAlbum.MusicAlbumMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MusicAlbum.MusicAlbumItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MusicAlbum.MusicItemPanel"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MusicAlbumModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = 0.25
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "MusicAlbumMainPage"
L5_1 = G
L5_1 = L5_1.UIController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MusicAlbumMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  A0_2._music_album_config_list = L1_2
  L1_2 = {}
  A0_2._music_config_list = L1_2
  L1_2 = {}
  A0_2._played_music_id_list = L1_2
  L1_2 = A0_2._played_music_id_list
  L2_2 = L0_1.CurUseMusicID
  L1_2[L2_2] = true
  L1_2 = L0_1.CurUseMusicID
  A0_2._cur_playing_music_id = L1_2
  L1_2 = A0_2._cur_playing_music_id
  A0_2._cur_select_music_id = L1_2
  A0_2._cur_selected_music_index = 1
  A0_2._cur_selected_music_album_index = 1
  A0_2._cur_selected_music_album_panel = nil
  A0_2._cur_selected_music_item_panel = nil
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.LeftStickRight
  A0_2._to_next_zoom_left_stick_type = L1_2
  L1_2 = CS
  L1_2 = L1_2.InControl
  L1_2 = L1_2.InputControlType
  L1_2 = L1_2.DPadRight
  A0_2._to_next_zoom_dpad_type = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone2
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.listen_zooms = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 1
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2.setup_short_cut_hint_panel
    L4_2 = 32
    L2_2(L3_2, L4_2)
  else
    L2_2 = NavigationZoneType
    L2_2 = L2_2.Zone2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.set_navigation_target
      L5_2 = A0_2
      L4_2 = A0_2.get_first_music_object
      L4_2, L5_2 = L4_2(L5_2)
      L2_2(L3_2, L4_2, L5_2)
      L3_2 = A0_2
      L2_2 = A0_2.setup_short_cut_hint_panel
      L4_2 = 39
      L2_2(L3_2, L4_2)
    end
  end
end
L3_1._on_enter_zoom = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_group_zoom_1
    L2_2.alpha = 0.5
  end
end
L3_1._on_leave_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_music_album
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = A0_2._cur_selected_music_album_index
  L3_2 = L3_2 - 1
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
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_music
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_music
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
L3_1.get_first_music_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L3_1._init_ui_navigation = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_selected_music_item_panel
  if L2_2 then
    L2_2 = A0_2._cur_selected_music_item_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_checked_force
    L4_2 = G
    L4_2 = L4_2.Utils
    L4_2 = L4_2.is_gamepad_input
    L4_2 = L4_2()
    L4_2 = not L4_2
    L2_2(L3_2, L4_2)
  end
end
L3_1._on_in_control_input_switch = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L1_2(L2_2)
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.SetTrialMusicID
  L3_2 = L0_1.CurUseMusicID
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIUnlockMusicSuccess
  L4_2 = L3_1._on_unlock_music_success
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UISetMusicSuccess
  L4_2 = L3_1._on_set_music_success
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UITrialMusicSuccess
  L4_2 = L3_1._on_trial_music_success
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_use
  L4_2 = A0_2._on_btn_use_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_music_album
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_music_album_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_music
  L2_2 = L1_2
  L1_2 = L1_2.InitListView
  L3_2 = 0
  L4_2 = A0_2._on_music_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = "Ev_global_ui_jukebox_open"
  L1_2(L2_2, L3_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_unlock_back_ground_music
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._inti_music_album_config_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_music_album_scroll
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_music_scroll
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_music
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_music_scroll
  L1_2(L2_2)
end
L3_1._on_return_to_top = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ItemSubType
  L4_2 = L4_2.MusicAlbum
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetItemsBySubTypes
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.Collections
  L3_2 = L3_2.Generic
  L3_2 = L3_2.List
  L4_2 = CS
  L4_2 = L4_2.System
  L4_2 = L4_2.UInt32
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2()
  L4_2 = L2_2.Count
  if 0 < L4_2 then
    L4_2 = pairs
    L5_2 = L2_2
    L4_2, L5_2, L6_2 = L4_2(L5_2)
    for L7_2, L8_2 in L4_2, L5_2, L6_2 do
      L10_2 = L3_2
      L9_2 = L3_2.Add
      L11_2 = L8_2.Key
      L9_2(L10_2, L11_2)
    end
  end
  L4_2 = L0_1
  L5_2 = L4_2
  L4_2 = L4_2.UnlockBackGroundMusicCsReq
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L3_1._try_unlock_back_ground_music = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetUnLockMusicAlbumConfigList
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  A0_2._music_album_config_list = L2_2
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._music_album_config_list
    L8_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = A0_2._music_album_config_list
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.ID
    L3_3 = A1_3.ID
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.BackGroundMusicConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L0_1.CurUseMusicID
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = A0_2._music_album_config_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ID
    L9_2 = L2_2.GroupID
    if L8_2 == L9_2 then
      A0_2._cur_selected_music_album_index = L6_2
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2._inti_music_config_list
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_AudioManager
  L4_2 = L3_2
  L3_2 = L3_2.SetBGMGameState
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.AudioGameState
  L5_2 = L5_2.JukeBox
  L3_2(L4_2, L5_2)
end
L3_1._inti_music_album_config_list = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2._music_album_config_list
  L2_2 = A0_2._cur_selected_music_album_index
  L1_2 = L1_2[L2_2]
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetUnLockMusicConfigList
  L4_2 = L1_2.ID
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = {}
  A0_2._music_config_list = L3_2
  if L2_2 then
    L3_2 = L2_2.Count
    if 0 < L3_2 then
      L3_2 = 0
      L4_2 = L2_2.Count
      L4_2 = L4_2 - 1
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = {}
        L8_2 = L2_2[L6_2]
        L7_2.music_row = L8_2
        L7_2.is_un_lock = true
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = A0_2._music_config_list
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.GetLockMusicConfigList
  L5_2 = L1_2.ID
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = L3_2.Count
    if 0 < L4_2 then
      L4_2 = 0
      L5_2 = L3_2.Count
      L5_2 = L5_2 - 1
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = {}
        L9_2 = L3_2[L7_2]
        L8_2.music_row = L9_2
        L8_2.is_un_lock = false
        L9_2 = table
        L9_2 = L9_2.insert
        L10_2 = A0_2._music_config_list
        L11_2 = L8_2
        L9_2(L10_2, L11_2)
      end
    end
  end
  L4_2 = table
  L4_2 = L4_2.sort
  L5_2 = A0_2._music_config_list
  function L6_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_3.is_un_lock
    if L2_3 == true then
      L2_3 = A1_3.is_un_lock
      if L2_3 == false then
        L2_3 = true
        return L2_3
    end
    else
      L2_3 = A0_3.is_un_lock
      if L2_3 == false then
        L2_3 = A1_3.is_un_lock
        if L2_3 == true then
          L2_3 = false
          return L2_3
      end
      else
        L2_3 = A0_2
        L3_3 = L2_3
        L2_3 = L2_3._is_played_music_id
        L4_3 = A0_3.music_row
        L4_3 = L4_3.ID
        L2_3 = L2_3(L3_3, L4_3)
        if not L2_3 then
          L2_3 = A0_2
          L3_3 = L2_3
          L2_3 = L2_3._is_played_music_id
          L4_3 = A1_3.music_row
          L4_3 = L4_3.ID
          L2_3 = L2_3(L3_3, L4_3)
          if L2_3 then
            L2_3 = true
            return L2_3
        end
        else
          L2_3 = A0_2
          L3_3 = L2_3
          L2_3 = L2_3._is_played_music_id
          L4_3 = A0_3.music_row
          L4_3 = L4_3.ID
          L2_3 = L2_3(L3_3, L4_3)
          if L2_3 then
            L2_3 = A0_2
            L3_3 = L2_3
            L2_3 = L2_3._is_played_music_id
            L4_3 = A1_3.music_row
            L4_3 = L4_3.ID
            L2_3 = L2_3(L3_3, L4_3)
            if not L2_3 then
              L2_3 = false
              return L2_3
          end
          else
            L2_3 = A0_2
            L3_3 = L2_3
            L2_3 = L2_3._is_playing_music_id
            L4_3 = A0_3.music_row
            L4_3 = L4_3.ID
            L2_3 = L2_3(L3_3, L4_3)
            if L2_3 then
              L2_3 = A0_2
              L3_3 = L2_3
              L2_3 = L2_3._is_playing_music_id
              L4_3 = A1_3.music_row
              L4_3 = L4_3.ID
              L2_3 = L2_3(L3_3, L4_3)
              if not L2_3 then
                L2_3 = true
                return L2_3
            end
            else
              L2_3 = A0_2
              L3_3 = L2_3
              L2_3 = L2_3._is_playing_music_id
              L4_3 = A0_3.music_row
              L4_3 = L4_3.ID
              L2_3 = L2_3(L3_3, L4_3)
              if not L2_3 then
                L2_3 = A0_2
                L3_3 = L2_3
                L2_3 = L2_3._is_playing_music_id
                L4_3 = A1_3.music_row
                L4_3 = L4_3.ID
                L2_3 = L2_3(L3_3, L4_3)
                if L2_3 then
                  L2_3 = false
                  return L2_3
              end
              else
                L2_3 = A0_2
                L3_3 = L2_3
                L2_3 = L2_3._is_cur_use_music_id
                L4_3 = A0_3.music_row
                L4_3 = L4_3.ID
                L2_3 = L2_3(L3_3, L4_3)
                if L2_3 then
                  L2_3 = A0_2
                  L3_3 = L2_3
                  L2_3 = L2_3._is_cur_use_music_id
                  L4_3 = A1_3.music_row
                  L4_3 = L4_3.ID
                  L2_3 = L2_3(L3_3, L4_3)
                  if not L2_3 then
                    L2_3 = true
                    return L2_3
                end
                else
                  L2_3 = A0_2
                  L3_3 = L2_3
                  L2_3 = L2_3._is_cur_use_music_id
                  L4_3 = A0_3.music_row
                  L4_3 = L4_3.ID
                  L2_3 = L2_3(L3_3, L4_3)
                  if not L2_3 then
                    L2_3 = A0_2
                    L3_3 = L2_3
                    L2_3 = L2_3._is_cur_use_music_id
                    L4_3 = A1_3.music_row
                    L4_3 = L4_3.ID
                    L2_3 = L2_3(L3_3, L4_3)
                    if L2_3 then
                      L2_3 = false
                      return L2_3
                  end
                  else
                    L2_3 = A0_3.music_row
                    L2_3 = L2_3.ID
                    L3_3 = A1_3.music_row
                    L3_3 = L3_3.ID
                    L2_3 = L2_3 < L3_3
                    return L2_3
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L4_2(L5_2, L6_2)
  A0_2._cur_selected_music_index = 1
  L4_2 = pairs
  L5_2 = A0_2._music_config_list
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = L8_2.music_row
    L9_2 = L9_2.ID
    L10_2 = L0_1.CurUseMusicID
    if L9_2 == L10_2 then
      A0_2._cur_selected_music_index = L7_2
    end
  end
end
L3_1._inti_music_config_list = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._music_album_config_list
  L2_2 = A0_2._cur_selected_music_album_index
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_music_album_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.GroupName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_music
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._music_config_list
  L4_2 = #L4_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_music
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_button_panel
  L2_2(L3_2)
end
L3_1._refresh_music_scroll = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._music_album_config_list
  L2_2 = A0_2._cur_selected_music_album_index
  L1_2 = L1_2[L2_2]
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_music_album_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.GroupName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_music
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCountAndMove
  L4_2 = A0_2._music_config_list
  L4_2 = #L4_2
  L5_2 = 0
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_music
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_button_panel
  L2_2(L3_2)
end
L3_1._refresh_music_scroll_and_move = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._music_config_list
  L2_2 = A0_2._cur_selected_music_index
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2.music_row
  L3_2 = L2_2.ID
  L4_2 = L0_1.CurUseMusicID
  L3_2 = L3_2 ~= L4_2 and L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_use
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_music_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L2_2.MusicName
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_lock_bg
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L1_2.is_un_lock
  L6_2 = not L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_lock_icon
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L1_2.is_un_lock
  L6_2 = not L6_2
  L4_2(L5_2, L6_2)
  L4_2 = L1_2.is_un_lock
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_music_desc
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L2_2.BGMDesc
    L4_2(L5_2, L6_2)
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColorWithAlpha
    L5_2 = "#dbc291"
    L6_2 = 1
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_music_title
    L5_2.color = L4_2
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_music_desc
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L2_2.UnlockDesc
    L4_2(L5_2, L6_2)
    L4_2 = G
    L4_2 = L4_2.UIColorUtils
    L4_2 = L4_2.GetColorWithAlpha
    L5_2 = "#FFFFFF"
    L6_2 = 1
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_music_title
    L5_2.color = L4_2
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_in_use_tip
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2.ID
  L7_2 = L0_1.CurUseMusicID
  L6_2 = L6_2 == L7_2 and L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_lock_tip
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L1_2.is_un_lock
  L6_2 = not L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.animation
  L5_2 = L4_2
  L4_2 = L4_2.Play
  L6_2 = "MusicTextSwitch"
  L4_2(L5_2, L6_2)
end
L3_1._refresh_button_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_music_album
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._music_album_config_list
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_music_album
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L3_1._refresh_music_album_scroll = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
    L7_2 = L7_2.MusicAlbumItemPanel
    L8_2 = G
    L8_2 = L8_2.MusicAlbumItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._music_album_config_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.register_click_callback
  L8_2 = A0_2
  L9_2 = A0_2._on_music_album_item_click
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = A2_2 + 1
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._cur_selected_music_album_index
  L7_2 = A2_2 + 1
  L6_2 = L6_2 == L7_2
  L8_2 = L4_2
  L7_2 = L4_2.setup_checked
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  if L6_2 then
    A0_2._cur_selected_music_album_panel = L4_2
  end
  return L3_2
end
L3_1._on_music_album_change = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.MusicItemPanel
    L8_2 = G
    L8_2 = L8_2.MusicItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._music_config_list
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2._music_config_list
  L7_2 = A2_2 + 1
  L6_2 = L6_2[L7_2]
  L6_2 = L6_2.music_row
  L8_2 = L4_2
  L7_2 = L4_2.register_click_callback
  L9_2 = A0_2
  L10_2 = A0_2._on_music_item_click
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = L4_2
  L7_2 = L4_2.setup_view
  L9_2 = A2_2 + 1
  L10_2 = L5_2
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A0_2._cur_playing_music_id
  L8_2 = L6_2.ID
  L7_2 = L7_2 == L8_2
  L9_2 = L4_2
  L8_2 = L4_2.setup_playing
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._cur_select_music_id
  L9_2 = L6_2.ID
  L8_2 = L8_2 == L9_2
  L10_2 = L4_2
  L9_2 = L4_2.setup_checked
  L11_2 = L8_2
  L9_2(L10_2, L11_2)
  if L8_2 then
    A0_2._cur_selected_music_item_panel = L4_2
  end
  L10_2 = A0_2
  L9_2 = A0_2._is_played_music_id
  L11_2 = L6_2.ID
  L9_2 = L9_2(L10_2, L11_2)
  L11_2 = L4_2
  L10_2 = L4_2.setup_new
  L12_2 = L9_2
  L10_2(L11_2, L12_2)
  return L3_2
end
L3_1._on_music_change = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._cur_playing_music_id
  L2_2 = L2_2 == A1_2
  return L2_2
end
L3_1._is_playing_music_id = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.IsPlayedMusicID
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = A0_2._played_music_id_list
    L2_2 = L2_2[A1_2]
  end
  return L2_2
end
L3_1._is_played_music_id = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = L0_1.CurUseMusicID
  L2_2 = A1_2 == L2_2
  return L2_2
end
L3_1._is_cur_use_music_id = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.MusicAlbum.MusicUnlockDialog"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._inti_music_album_config_list
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_music_album_scroll
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_music_scroll
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._init_ui_navigation
  L2_2(L3_2)
end
L3_1._on_unlock_music_success = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.CurUseMusicID
  A0_2._cur_playing_music_id = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_music_album_scroll
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_music_scroll
  L1_2(L2_2)
end
L3_1._on_set_music_success = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._cur_selected_music_album_panel
  if L2_2 then
    L2_2 = A0_2._music_config_list
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = true
      L3_2 = pairs
      L4_2 = A0_2._music_config_list
      L3_2, L4_2, L5_2 = L3_2(L4_2)
      for L6_2, L7_2 in L3_2, L4_2, L5_2 do
        L8_2 = L7_2.is_un_lock
        if L8_2 then
          L9_2 = A0_2
          L8_2 = A0_2._is_played_music_id
          L10_2 = L7_2.music_row
          L10_2 = L10_2.ID
          L8_2 = L8_2(L9_2, L10_2)
          if not L8_2 then
            L2_2 = false
            break
          end
        end
      end
      L3_2 = A0_2._cur_selected_music_album_panel
      L4_2 = L3_2
      L3_2 = L3_2.setup_new
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L3_1._on_trial_music_success = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._cur_selected_music_album_index
  if L2_2 ~= A1_2 then
    A0_2._cur_selected_music_album_index = A1_2
    L3_2 = A0_2
    L2_2 = A0_2._refresh_music_album_scroll
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._inti_music_config_list
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_music_album
    L3_2 = L2_2
    L2_2 = L2_2.IsItemWithinViewport
    L4_2 = A1_2 - 1
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.scroll_music_album
      L3_2 = L2_2
      L2_2 = L2_2.MovePanelToItemIndex
      L4_2 = A1_2 - 1
      L2_2(L3_2, L4_2)
    end
    L3_2 = A0_2
    L2_2 = A0_2._update_cur_select_music_id
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._refresh_music_scroll_and_move
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.scroll_music
    L3_2 = L2_2
    L2_2 = L2_2.PlayFadeIn
    L2_2(L3_2)
  end
end
L3_1._on_music_album_item_click = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._cur_select_music_id
  L4_2 = A2_2.music_row
  L4_2 = L4_2.ID
  if L3_2 == L4_2 then
    L3_2 = A2_2.is_un_lock
    if not L3_2 then
      goto lbl_52
    end
    L3_2 = A0_2._cur_playing_music_id
    L4_2 = A2_2.music_row
    L4_2 = L4_2.ID
    if L3_2 == L4_2 then
      goto lbl_52
    end
  end
  A0_2._cur_selected_music_index = A1_2
  L3_2 = A2_2.music_row
  L3_2 = L3_2.ID
  A0_2._cur_select_music_id = L3_2
  L3_2 = A0_2._cur_playing_music_id
  L4_2 = A2_2.music_row
  L4_2 = L4_2.ID
  if L3_2 ~= L4_2 then
    L3_2 = A2_2.is_un_lock
    if L3_2 then
      L3_2 = A2_2.music_row
      L3_2 = L3_2.ID
      A0_2._cur_playing_music_id = L3_2
      L3_2 = A0_2._played_music_id_list
      L4_2 = A2_2.music_row
      L4_2 = L4_2.ID
      L3_2[L4_2] = true
      L3_2 = L0_1
      L4_2 = L3_2
      L3_2 = L3_2.SetTrialMusicID
      L5_2 = A2_2.music_row
      L5_2 = L5_2.ID
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2._try_switch_music
      L3_2(L4_2)
      L4_2 = A0_2
      L3_2 = A0_2._refresh_music_scroll
      L3_2(L4_2)
    else
      L4_2 = A0_2
      L3_2 = A0_2._update_music_item_panel_checked
      L3_2(L4_2)
      L4_2 = A0_2
      L3_2 = A0_2._refresh_button_panel
      L3_2(L4_2)
    end
  else
    L4_2 = A0_2
    L3_2 = A0_2._update_music_item_panel_checked
    L3_2(L4_2)
    L4_2 = A0_2
    L3_2 = A0_2._refresh_button_panel
    L3_2(L4_2)
  end
  ::lbl_52::
end
L3_1._on_music_item_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._cur_selected_music_item_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_checked
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.get_music_item_panel_by_index
  L3_2 = A0_2._cur_selected_music_index
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    A0_2._cur_selected_music_item_panel = L1_2
    L2_2 = A0_2._cur_selected_music_item_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_checked
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
end
L3_1._update_music_item_panel_checked = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.scroll_music
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    return L3_2
  end
  L3_2 = nil
  return L3_2
end
L3_1.get_music_item_panel_by_index = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._music_config_list
  L2_2 = A0_2._cur_selected_music_index
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.music_row
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_GamePhaseManager
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentPhase
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 or L3_2
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.GetAdventureAudioManager
    L3_2 = L3_2(L4_2)
  end
  if L3_2 ~= nil and L1_2 ~= nil then
    L5_2 = L3_2
    L4_2 = L3_2.SwitchJukeBox
    L6_2 = L1_2.ID
    L4_2(L5_2, L6_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.SDKLuaReportAdapter
    L4_2 = L4_2.ReportJukeboxOperate
    L5_2 = A0_2._cur_playing_music_id
    L6_2 = L1_2.ID
    L7_2 = 1
    L4_2(L5_2, L6_2, L7_2)
  end
end
L3_1._try_switch_music = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._music_config_list
  L2_2 = A0_2._cur_selected_music_index
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.music_row
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.SetTrialMusicID
  L4_2 = L1_2.ID
  L2_2(L3_2, L4_2)
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.SetCurUseMusicID
  L4_2 = L1_2.ID
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.SDKLuaReportAdapter
  L2_2 = L2_2.ReportJukeboxOperate
  L3_2 = L0_1.CurUseMusicID
  L4_2 = L1_2.ID
  L5_2 = 2
  L2_2(L3_2, L4_2, L5_2)
end
L3_1._on_btn_use_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._music_config_list
  L1_2 = L1_2[1]
  L1_2 = L1_2.music_row
  L1_2 = L1_2.ID
  A0_2._cur_select_music_id = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._music_config_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.music_row
    L6_2 = L6_2.ID
    L7_2 = A0_2._cur_playing_music_id
    if L6_2 == L7_2 then
      A0_2._cur_selected_music_index = L4_2
      L6_2 = A0_2._cur_playing_music_id
      A0_2._cur_select_music_id = L6_2
      break
    end
  end
end
L3_1._update_cur_select_music_id = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_AudioManager
  L2_2 = L1_2
  L1_2 = L1_2.PostEvent
  L3_2 = "Ev_global_ui_jukebox_close"
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetAdventureAudioManager
    L2_2 = L2_2(L3_2)
  end
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.SwitchJukeBoxToCurrent
    L3_2(L4_2)
  end
end
L3_1._on_dispose = L4_1
return L3_1
