local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.DailyMission.Guide.Rogue.HandbookGuideRogueItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Guide.Rogue.HandbookGuideRogueItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Guide.Farm.HandbookGuideFarmMultipleDropPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.DailyMission.Guide.Farm.HandbookGuideFarmMultipleDropPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.RogueModule
L1_1 = CS
L1_1 = L1_1.EFHDEOKLMFI
L2_1 = "HandBookRogueGuide01"
L3_1 = "HandBookRogueGuide02"
L4_1 = "UIText_Handbook_RogueTab"
L5_1 = "GameplayGuideTab_Desc_1006"
L6_1 = G
L6_1 = L6_1.Class
L7_1 = "HandbookGuideRogueTabItem"
L8_1 = G
L8_1 = L8_1.TabItem
L6_1 = L6_1(L7_1, L8_1)
function L7_1(A0_2)
  local L1_2
end
L6_1.ctor = L7_1
function L7_1(A0_2)
  local L1_2
end
L6_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2
  A0_2._type_items = nil
  A0_2._unlock_guide_data = nil
  A0_2._rogue_area_data = nil
  A0_2._banner_guide_row = nil
end
L6_1._on_dispose = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._type_id = A1_2
  A0_2._type_items = A2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GameplayGuideTabConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._type_id
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MultipleDropUtils
  L4_2 = L4_2.GetMultipleDropTypeByGuideType
  L5_2 = L3_2.GuideType
  L4_2 = L4_2(L5_2)
  A0_2._multiple_drop_type = L4_2
end
L6_1.set_tab_data = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_3rd_progress_open
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = L3_1
    return L1_2
  end
  L1_2 = L2_1
  return L1_2
end
L6_1.get_res_bar_key = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._type_id
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_rogue_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_type_panel_desc
  L1_2(L2_2)
end
L6_1._on_added = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_rogue_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_items_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.PlayFadeIn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_type_panel_desc
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_node_double_reward
  L1_2(L2_2)
end
L6_1._on_select = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetRogueData
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.ProgressInfo
  L3_2 = {}
  A0_2._unlock_guide_data = L3_2
  L3_2 = {}
  A0_2._rogue_area_data = L3_2
  L3_2 = pairs
  L4_2 = A0_2._type_items
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.Row
    if L6_2 ~= 1 then
      if L8_2 ~= nil then
        L10_2 = A0_2
        L9_2 = A0_2._get_display_rogue_area
        L11_2 = L2_2
        L12_2 = L8_2.RelatedID
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        if L9_2 ~= nil then
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = A0_2._rogue_area_data
          L12_2 = L9_2
          L10_2(L11_2, L12_2)
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = A0_2._unlock_guide_data
          L12_2 = L8_2
          L10_2(L11_2, L12_2)
        end
      end
    else
      A0_2._banner_guide_row = L8_2
    end
  end
end
L6_1._refresh_rogue_data = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = nil
  L4_2 = A1_2.ProgressAreaDic
  L5_2 = L4_2
  L4_2 = L4_2.ContainsKey
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = A1_2.ProgressAreaDic
    L4_2 = L4_2[A2_2]
    L3_2 = L4_2[0]
    L5_2 = 0
    L6_2 = L4_2.Count
    L6_2 = L6_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = L4_2[L8_2]
      L10_2 = L9_2.RogueAreaStatus
      L11_2 = L1_1.HHOFCKOOBBI
      if L10_2 ~= L11_2 then
        L10_2 = L9_2.RogueAreaStatus
        L11_2 = L1_1.DBPHCIPFLNI
        if L10_2 ~= L11_2 then
          goto lbl_26
        end
      end
      L3_2 = L9_2
      ::lbl_26::
    end
  end
  return L3_2
end
L6_1._get_display_rogue_area = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MultipleDropUtils
  L1_2 = L1_2.IsInMultipleDrop
  L2_2 = A0_2._multiple_drop_type
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_double_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.HandbookGuideFarmMultipleDropPanel
    L5_2 = G
    L5_2 = L5_2.HandbookGuideFarmMultipleDropPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.bind
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_double_reward
    L3_2(L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.setup_view
    L5_2 = A0_2._multiple_drop_type
    L3_2(L4_2, L5_2)
  end
end
L6_1._setup_node_double_reward = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_list_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._rogue_area_data
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L4_2 = A0_2
  L3_2 = A0_2._get_list_count
  L3_2 = L3_2(L4_2)
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L6_1._setup_items_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._show_banner
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._rogue_area_data
    L1_2 = #L1_2
    L1_2 = L1_2 + 1
    if L1_2 then
      goto lbl_12
    end
  end
  L1_2 = A0_2._rogue_area_data
  L1_2 = #L1_2
  ::lbl_12::
  return L1_2
end
L6_1._get_list_count = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._banner_guide_row
  L1_2 = L1_2 ~= nil
  return L1_2
end
L6_1._show_banner = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A2_2 == 0 then
    L4_2 = A0_2
    L3_2 = A0_2._show_banner
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2._on_banner_item_changed
      L5_2 = A1_2
      return L3_2(L4_2, L5_2)
  end
  else
    L4_2 = A0_2
    L3_2 = A0_2._on_normal_item_changed
    L5_2 = A1_2
    L7_2 = A0_2
    L6_2 = A0_2._show_banner
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = A2_2 - 1
      if L6_2 then
        goto lbl_22
      end
    end
    L6_2 = A2_2
    ::lbl_22::
    return L3_2(L4_2, L5_2, L6_2)
  end
end
L6_1._on_item_changed = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2
  L2_2 = A1_2.NewListViewItem
  L4_2 = GuidePanelPrefabIndex
  L4_2 = L4_2.RogueBanner
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.UserObjectData
  if L3_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2.create_panel
    L6_2 = G
    L6_2 = L6_2.HandbookGuideRogueBannerPanel
    L7_2 = G
    L7_2 = L7_2.HandbookGuideRogueBannerPanelBinder
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2
    L5_2 = L3_2
    L4_2 = L3_2.bind
    L6_2 = L2_2.transform
    L4_2(L5_2, L6_2)
    L2_2.UserObjectData = L3_2
  end
  L5_2 = L3_2
  L4_2 = L3_2.setup_view
  L6_2 = A0_2._banner_guide_row
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.setup_reddot
  L6_2 = "HandbookGuideSubTab"
  L7_2 = A0_2._banner_guide_row
  L7_2 = L7_2.ID
  L4_2(L5_2, L6_2, L7_2)
  return L2_2
end
L6_1._on_banner_item_changed = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = GuidePanelPrefabIndex
  L5_2 = L5_2.CommonInfoRow
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      L5_2 = L4_2.__name
      if L5_2 == "HandbookGuideRogueItemPanel" then
        goto lbl_35
      end
    end
  end
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      L5_2 = L4_2.__name
      if L5_2 ~= "HandbookGuideRogueItemPanel" then
        L6_2 = L4_2
        L5_2 = L4_2._exit
        L5_2(L6_2)
      end
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.HandbookGuideRogueItemPanel
  L8_2 = G
  L8_2 = L8_2.HandbookGuideRogueItemPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  ::lbl_35::
  L5_2 = A0_2._unlock_guide_data
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L6_2 = A0_2._rogue_area_data
  L7_2 = A2_2 + 1
  L6_2 = L6_2[L7_2]
  L8_2 = L4_2
  L7_2 = L4_2.setup_view_rogue
  L9_2 = L5_2
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
  return L3_2
end
L6_1._on_normal_item_changed = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._is_3rd_progress_open
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.tab_btn_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_desc
    L3_2 = L5_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.tab_btn_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_desc
    L3_2 = L4_1
    L1_2(L2_2, L3_2)
  end
end
L6_1._setup_type_panel_desc = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._unlock_guide_data
  L1_2 = L1_2 ~= nil
  return L1_2
end
L6_1._is_3rd_progress_open = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_panel
  L2_2 = L1_2
  L1_2 = L1_2.try_play_double_mark_animation
  L1_2(L2_2)
end
L6_1.try_play_double_mark_animation = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._get_list_selected_object
  L3_2 = 1
  return L1_2(L2_2, L3_2)
end
L6_1.get_first_selected_object = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_view_item
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
  L5_2 = L3_2
  L4_2 = L3_2.get_first_selected_object
  return L4_2(L5_2)
end
L6_1._get_list_selected_object = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_list_count
    L2_2 = L2_2(L3_2)
    L2_2 = 0 < L2_2
    return L2_2
  end
end
L6_1.can_to_zoom = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._type_items
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view_item
  L2_2 = L1_2
  L1_2 = L1_2.MovePanelToItemIndex
  L3_2 = 0
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
end
L6_1.reset_view = L7_1
return L6_1
