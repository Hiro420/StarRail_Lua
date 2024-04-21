local L0_1, L1_1, L2_1, L3_1
L0_1 = "UIText_PlayerCard_Collection"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "PlayerInfoCollectionTabItem"
L3_1 = G
L3_1 = L3_1.TabItem
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2, A1_2)
  A0_2._data = A1_2
end
L1_1.update_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_btn_view
  L1_2(L2_2)
end
L1_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tab_btn_selected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_tab_btn_unselected
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L0_1
  L1_2(L2_2, L3_2)
end
L1_1._setup_tab_btn_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerCollectionInfoSynced
  L4_2 = A0_2._refresh_view
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerCollectionDisplayChanged
  L4_2 = A0_2._refresh_setting_view
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh_short_cut_hint
  L1_2(L2_2)
end
L1_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_avatar_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.AvatarCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_lightcone_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.LightConeCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_achievement_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.AchievementCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_disc_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.MusicCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_book_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.BookCount
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_setting_view
  L1_2(L2_2)
end
L1_1._refresh_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_setting
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsLocalPlayer
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.IsLocalPlayer
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.PlayerUtils
    L1_2 = L1_2.is_display_collection
    L1_2 = L1_2()
    if L1_2 then
      L1_2 = "UI/Atlas/AtlasRoot/Common/Icon/IconHideFill.png"
      if L1_2 then
        goto lbl_21
      end
    end
    L1_2 = "UI/Atlas/AtlasRoot/Common/Icon/IconDisplay.png"
    ::lbl_21::
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_setting_status
    L5_2 = L1_2
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = G
    L2_2 = L2_2.PlayerUtils
    L2_2 = L2_2.is_display_collection
    L2_2 = L2_2()
    if L2_2 then
      L2_2 = "UIText_PlayerCard_Record_ShowTips"
      if L2_2 then
        goto lbl_36
      end
    end
    L2_2 = "UIText_PlayerCard_Record_HideTips"
    ::lbl_36::
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_setting_status
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L1_1._refresh_setting_view = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1.refresh_short_cut_hint = L2_1
return L1_1
