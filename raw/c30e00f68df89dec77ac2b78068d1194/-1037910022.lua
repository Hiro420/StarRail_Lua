local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumCollectionDetailDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumAtlasCollectionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumExhibitItemBaseInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Museum.MuseumExhibitItemBaseInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumCollectionDetailDialog"
L2_1 = G
L2_1 = L2_1.BaseDialog
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.avatar = 1
L1_1.item = 2
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MissionModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.MuseumModule
L4_1 = "#383434FF"
L5_1 = "UIText_Activity_Museum_Collection_Non"
L6_1 = "UIText_ActivityMuseum_StuffNo"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumCollectionDetailDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L7_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A1_2 == nil then
    return
  end
  if A2_2 == nil then
    A2_2 = false
  end
  A0_2.data = A1_2
  L3_2 = A0_2.data
  L3_2 = L3_2.ItemRow
  A0_2.item_row = L3_2
  L3_2 = A0_2.data
  L3_2 = L3_2.MuseumItemRow
  if L3_2 ~= nil then
    L3_2 = L1_1.item
    A0_2.panel_type = L3_2
    L3_2 = A1_2.MuseumItemRow
    A0_2.collection_row = L3_2
    L3_2 = A0_2.item_row
    L3_2 = L3_2.ItemIconPath
    A0_2.item_icon_path = L3_2
  else
    L3_2 = A0_2.data
    L3_2 = L3_2.MuseumStuffRow
    if L3_2 ~= nil then
      L3_2 = L1_1.avatar
      A0_2.panel_type = L3_2
      L3_2 = A1_2.MuseumStuffRow
      A0_2.collection_row = L3_2
      L3_2 = A0_2.item_row
      L3_2 = L3_2.ItemFigureIconPath
      A0_2.item_icon_path = L3_2
    end
  end
  L3_2 = A0_2.data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.MuseumCollectionItemStatus
  L4_2 = L4_2.Owned
  L3_2 = L3_2 == L4_2
  A0_2.owned = L3_2
  L3_2 = A0_2.owned
  if not L3_2 then
    L3_2 = A2_2
  end
  A0_2.display_owned = L3_2
  L3_2 = A0_2.panel_type
  L4_2 = L1_1.avatar
  L3_2 = L3_2 == L4_2
  A0_2.is_avatar = L3_2
end
L0_1.init = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_mission_goto
  L4_2 = A0_2._on_click_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_mission_track
  L4_2 = A0_2._on_click_mission
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.MuseumExhibitItemBaseInfoPanel
  L4_2 = G
  L4_2 = L4_2.MuseumExhibitItemBaseInfoPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.property_panel = L1_2
  L1_2 = A0_2.property_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_property_panel
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.data
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "MuseumData is null."
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2.panel_type
  L2_2 = L1_1.item
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.item_panel
    A0_2.collection_panel = L1_2
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.avatar_panel
    A0_2.collection_panel = L1_2
  end
  L1_2 = A0_2.data
  L1_2 = L1_2.MissionID
  if L1_2 == 0 then
    L2_2 = A0_2
    L1_2 = A0_2.setup_collection_view
    L1_2(L2_2)
  else
    L1_2 = L2_1
    L2_2 = L1_2
    L1_2 = L1_2.GetMainMissionDataWithPromise
    L3_2 = A0_2.data
    L3_2 = L3_2.MissionID
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = L1_2
    L1_2 = L1_2.ThenLuaActionOneParam
    function L3_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.setup_collection_view
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.mainMissionData = A1_2
  L2_2 = A0_2.mainMissionData
  L2_2 = A0_2.mainMissionData
  L2_2 = L2_2 ~= nil and L2_2
  A0_2.is_start = L2_2
  L2_2 = A0_2.collection_row
  L2_2 = L2_2.UnlockPhase
  L3_2 = L3_1.MuseumData
  L3_2 = L3_2.Level
  if L2_2 <= L3_2 then
    L2_2 = A0_2.is_start
    if L2_2 then
      goto lbl_21
    end
  end
  L2_2 = A0_2.display_owned
  ::lbl_21::
  A0_2.can_track = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_left_panel
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_right_panel
  L2_2(L3_2)
end
L0_1.setup_collection_view = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.panel_type
  L2_2 = L1_1.avatar
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_avatar_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_item_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_area
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.collection_panel
  L2_2 = L2_2.node_achieve
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2.display_owned
  L2_2(L3_2, L4_2)
  L2_2 = A0_2.collection_panel
  L2_2 = L2_2.node_track
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2.display_owned
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_index
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L6_1
    L5_2 = A0_2.data
    L5_2 = L5_2.DisplayOrder
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_title_story
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityMuseum_AtlasStoryStuff"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_title_clue
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityMuseum_AtlasClueStuff"
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.setup_left_item_panel
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_title_story
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityMuseum_AtlasStory"
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_title_clue
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityMuseum_AtlasClue"
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2.display_owned
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.async_load_sprite_to
    L4_2 = A0_2.collection_panel
    L4_2 = L4_2.img_achieve
    L5_2 = A0_2.item_icon_path
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.InventoryModule
    L2_2 = L2_2.GetItemRarityConfig
    L3_2 = A0_2.item_row
    L3_2 = L3_2.Rarity
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.LineItemRarityColor
    L4_2 = A0_2._binder
    L4_2 = L4_2.image_rarity_back
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetColor
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_name
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = A0_2.item_row
    L6_2 = L6_2.ItemName
    L4_2(L5_2, L6_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2.async_load_sprite_to
    L4_2 = A0_2.collection_panel
    L4_2 = L4_2.img_track
    L5_2 = A0_2.item_icon_path
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.image_rarity_back
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetColor
    L4_2 = L4_1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.can_track
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_name
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = A0_2.item_row
      L4_2 = L4_2.ItemName
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_name
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L5_1
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1.setup_left_panel = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.data
  L1_2 = L1_2.AreaID
  L2_2 = L3_1.MuseumData
  L3_2 = L2_2
  L2_2 = L2_2.GetAreaData
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L3_2 = L2_2.Row
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_name_area
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.MuseumAreaName
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_desc_area
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = L3_2.FirstWorldText
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_index
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L2_2.Row
  L6_2 = L6_2.AreaItemNoTextID
  L7_2 = A0_2.data
  L7_2 = L7_2.DisplayOrder
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_left_item_panel = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.property_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2.data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_property_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_avatar
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_renew_point_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.is_avatar
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.is_avatar
  if not L1_2 then
    L1_2 = A0_2.collection_row
    L1_2 = L1_2.RenewPoint
    if L1_2 == 0 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_renew_point_panel
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_renew_point
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = "+"
    L4_2 = A0_2.collection_row
    L4_2 = L4_2.RenewPoint
    L3_2 = L3_2 .. L4_2
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_clue
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.display_owned
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_story
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.display_owned
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.display_owned
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_story
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2.data
    L3_2 = L3_2.StoryDesc
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2.mainMissionData
    if L1_2 ~= nil then
      L1_2 = A0_2.mainMissionData
      L1_2 = L1_2.IsStart
      if L1_2 then
        L1_2 = A0_2.is_avatar
        if L1_2 then
          L1_2 = A0_2._binder
          L1_2 = L1_2.txt_clue
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetTextID
          L3_2 = "UIText_ActivityMuseum_AtlasStuffMissionTip"
          L4_2 = A0_2.mainMissionData
          L4_2 = L4_2.NameStr
          L1_2(L2_2, L3_2, L4_2)
        else
          L1_2 = A0_2._binder
          L1_2 = L1_2.txt_clue
          L2_2 = L1_2
          L1_2 = L1_2.SafeSetTextID
          L3_2 = "UIText_ActivityMuseum_AtlasItemMissionTip"
          L4_2 = A0_2.mainMissionData
          L4_2 = L4_2.NameStr
          L1_2(L2_2, L3_2, L4_2)
        end
      else
        L1_2 = CS
        L1_2 = L1_2.RPG
        L1_2 = L1_2.Client
        L1_2 = L1_2.GlobalVars
        L1_2 = L1_2.s_ModuleManager
        L1_2 = L1_2.MissionModule
        L2_2 = L1_2
        L1_2 = L1_2.GetMainMissionRow
        L3_2 = A0_2.data
        L3_2 = L3_2.MissionID
        L1_2 = L1_2(L2_2, L3_2)
        L2_2 = A0_2._binder
        L2_2 = L2_2.txt_clue
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = A0_2.data
        L4_2 = L4_2.EvidenceInfoTextID
        L5_2 = G
        L5_2 = L5_2.TextmapStatic
        L5_2 = L5_2.GetText
        L6_2 = L1_2.Name
        L5_2, L6_2 = L5_2(L6_2)
        L2_2(L3_2, L4_2, L5_2, L6_2)
      end
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.txt_clue
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = A0_2.data
      L3_2 = L3_2.EvidenceInfoTextID
      L1_2(L2_2, L3_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.setup_btn
  L3_2 = A0_2.mainMissionData
  L1_2(L2_2, L3_2)
end
L0_1.setup_right_panel = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2 ~= nil and L2_2
  L3_2 = A1_2 ~= nil
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_mission_goto
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2 or L6_2
  if L2_2 then
    L6_2 = not L3_2
  end
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_mission_track
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L2_2 or L6_2
  if L2_2 then
    L6_2 = L3_2
  end
  L4_2(L5_2, L6_2)
end
L0_1.setup_btn = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.Goto
  L2_2 = 700
  L3_2 = {}
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MainMissionType
  L4_2 = L4_2.None
  L4_2 = #L4_2
  L5_2 = A0_2.data
  L5_2 = L5_2.MissionID
  function L6_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = G
      L1_3 = L1_3.Utils
      L1_3 = L1_3.trigger_custom_string
      L2_3 = "MuseumMissionStart"
      L1_3(L2_3)
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.GlobalVars
      L1_3 = L1_3.s_UIManager
      L2_3 = L1_3
      L1_3 = L1_3.BackToFirstPage
      L1_3(L2_3)
    end
  end
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_click_mission = L7_1
return L0_1
