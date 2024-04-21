local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.PlayerInfo.Diary.PlayerDiaryItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PlayerInfo.Diary.PlayerDiaryItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.FriendModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "PlayerDiaryPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._item_datas = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDiaryRefreshed
  L4_2 = A0_2._refresh_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerDiaryDisplayChanged
  L4_2 = A0_2._refresh_setting_view
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._data = A1_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.RefreshDiaryData
  L4_2 = A0_2._data
  L4_2 = L4_2.UID
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetPlayerDiaryData
  L3_2 = A0_2._data
  L3_2 = L3_2.UID
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._diary_data = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_setting_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_diary_view
  L1_2(L2_2)
end
L1_1._refresh_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_setting
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = G
    L2_2 = L2_2.PlayerUtils
    L2_2 = L2_2.is_display_diary
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = "UI/Atlas/AtlasRoot/Common/Icon/IconHideFill.png"
      if L2_2 then
        goto lbl_20
      end
    end
    L2_2 = "UI/Atlas/AtlasRoot/Common/Icon/IconDisplay.png"
    ::lbl_20::
    L4_2 = A0_2
    L3_2 = A0_2._async_load_sprite_to
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_setting_icon
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L1_1._refresh_setting_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  if not L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.DisplayDiary
    if not L1_2 then
      goto lbl_17
    end
  end
  L1_2 = A0_2._diary_data
  L1_2 = A0_2._diary_data
  L1_2 = L1_2 ~= nil and L1_2
  ::lbl_17::
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_content
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = G
    L2_2 = L2_2.Utils
    L2_2 = L2_2.create_lua_table_from_cs_list
    L3_2 = A0_2._diary_data
    L3_2 = L3_2.DiaryItems
    L2_2 = L2_2(L3_2)
    A0_2._item_datas = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_view
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = A0_2._item_datas
    L4_2 = #L4_2
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_view
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_empty
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._data
    L4_2 = L4_2.IsLocalPlayer
    if not L4_2 then
      L4_2 = A0_2._data
      L4_2 = L4_2.DisplayDiary
      if not L4_2 then
        goto lbl_62
      end
    end
    L4_2 = "UIText_PlayerCard_Updates_Tips2"
    ::lbl_62::
    if not L4_2 then
      L4_2 = "UIText_PlayerCard_Updates_Tips1"
    end
    L2_2(L3_2, L4_2)
  end
end
L1_1._refresh_diary_view = L2_1
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
  L7_2 = L7_2.PlayerDiaryItemPanel
  L8_2 = G
  L8_2 = L8_2.PlayerDiaryItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_21::
  L5_2 = A0_2._item_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L1_1._on_item_changed = L2_1
return L1_1
