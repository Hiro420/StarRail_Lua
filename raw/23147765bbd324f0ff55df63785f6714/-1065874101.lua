local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumNewExhibitItemDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumNewExhibitItemDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 5
L2_1 = "UIText_ActivityMuseum_AreaCollecProgress"
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.GameCore
L3_1 = L3_1.MuseumAreaMissionExcelTable
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.MuseumModule
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.PlayerModule
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumNewExhibitItemDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_special_above_dialog = true
  A0_2._is_can_close = false
  A0_2._is_can_transit = false
  A0_2._pause_game = true
  A0_2._is_resp_esc = false
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.ItemData
  A0_2._museum_item_data = L2_2
  L2_2 = A1_2.RewardTargetID
  A0_2._reward_target_id = L2_2
  L2_2 = A1_2.ShowRenewProgress
  A0_2._show_renew_progress = L2_2
  L2_2 = A0_2._museum_item_data
  L2_2 = L2_2.AreaID
  A0_2.area_id = L2_2
  L2_2 = L4_1.MuseumData
  L3_2 = L2_2
  L2_2 = L2_2.GetAreaData
  L4_2 = A0_2.area_id
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.area_data = L2_2
  L2_2 = L3_1.GetData
  L3_2 = A0_2.area_id
  L4_2 = A0_2.area_data
  L4_2 = L4_2.ExhibitStuffsCount
  L2_2 = L2_2(L3_2, L4_2)
  A0_2.area_mission_row = L2_2
  L2_2 = A0_2.area_mission_row
  if L2_2 ~= nil then
    L2_2 = A0_2.area_mission_row
    L2_2 = L2_2.MissionID
    A0_2.mission_id = L2_2
  end
end
L0_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_animation_event_str_notify
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2.area_data
  L1_2 = L1_2.ExhibitStuffsCount
  L1_2 = L1_2 - 1
  L2_2 = A0_2.area_data
  L2_2 = L2_2.ExhibitStuffsMaxCount
  L1_2 = L1_2 / L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_collection_progress
  L2_2.fillAmount = L1_2
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1._add_handlers = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ani_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "MuseumItemGetDialog_FadeIn"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._museum_item_data
  L1_2 = L1_2.ItemRow
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_item_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.ItemName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_area_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2.area_data
  L4_2 = L4_2.MuseumAreaName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_area_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2.area_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.AreaItemNoTextID
  L5_2 = A0_2._museum_item_data
  L5_2 = L5_2.DisplayOrder
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_story
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._museum_item_data
  L4_2 = L4_2.StoryDesc
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = L1_2.ItemIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.base_info_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._museum_item_data
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_collection_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_renew_point_panel
  L2_2(L3_2)
end
L0_1._refresh = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._show_renew_progress
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.renew_point_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_show_preview
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.renew_point_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_show_max_bar
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.renew_point_panel
    L2_2 = L1_2
    L1_2 = L1_2.set_added_data
    L3_2 = A0_2._museum_item_data
    L3_2 = L3_2.MuseumItemRow
    L3_2 = L3_2.RenewPoint
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.renew_point_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_view
    L3_2 = L4_1.MuseumData
    L3_2 = L3_2.RenewPointData
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.renew_point_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_all_finish_view
    L1_2(L2_2)
  end
end
L0_1._setup_renew_point_panel = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_area_item_current
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2.area_data
  L3_2 = L3_2.ExhibitStuffsCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_area_item_total
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2.area_data
  L3_2 = L3_2.ExhibitStuffsMaxCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_area_progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L2_1
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TextmapStatic
  L4_2 = L4_2.GetText
  L5_2 = A0_2.area_data
  L5_2 = L5_2.MuseumAreaName
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_collection_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ani_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "MuseumItemGetDialog_CollectionFinishHint"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_player_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityMuseum_AreaMissionDialogName"
  L4_2 = L5_1.PlayerData
  L4_2 = L4_2.NickName
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_mission_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2.area_mission_row
  L3_2 = L3_2.DialogDesc
  L1_2(L2_2, L3_2)
end
L0_1._setup_mission_panel = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == "Museum_ExhibitItem_Fade_In" then
    L2_2 = A0_2._binder
    L2_2 = L2_2.fill_animation
    function L3_2()
      local L0_3, L1_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._on_fill_end
      L0_3(L1_3)
    end
    L2_2.FillEndCallback = L3_2
    L2_2 = A0_2.area_data
    L2_2 = L2_2.ExhibitStuffsCount
    L2_2 = L2_2 - 1
    L3_2 = A0_2.area_data
    L3_2 = L3_2.ExhibitStuffsMaxCount
    L2_2 = L2_2 / L3_2
    L3_2 = A0_2.area_data
    L3_2 = L3_2.ExhibitStuffsCount
    L4_2 = A0_2.area_data
    L4_2 = L4_2.ExhibitStuffsMaxCount
    L3_2 = L3_2 / L4_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.fill_animation
    L5_2 = L4_2
    L4_2 = L4_2.Play
    L6_2 = L2_2
    L7_2 = L3_2
    L8_2 = 1
    L4_2(L5_2, L6_2, L7_2, L8_2)
  elseif A1_2 == "Remind_End" then
    L3_2 = A0_2
    L2_2 = A0_2._set_transit
    L2_2(L3_2)
  elseif A1_2 == "Begin_Renew_Point_Increase" then
    L2_2 = L4_1.MuseumData
    L2_2 = L2_2.RenewPointData
    L3_2 = A0_2._museum_item_data
    L3_2 = L3_2.MuseumItemRow
    L3_2 = L3_2.RenewPoint
    if L3_2 == 0 then
      return
    end
    L3_2 = L2_2.CurNum
    L4_2 = A0_2._museum_item_data
    L4_2 = L4_2.MuseumItemRow
    L4_2 = L4_2.RenewPoint
    L3_2 = L3_2 - L4_2
    L4_2 = L2_2.MaxNum
    L3_2 = L3_2 / L4_2
    L4_2 = L2_2.CurNum
    L5_2 = L2_2.MaxNum
    L4_2 = L4_2 / L5_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.fill_animation_renew_point
    L6_2 = L5_2
    L5_2 = L5_2.Play
    L7_2 = L3_2
    L8_2 = L4_2
    L9_2 = 1
    L5_2(L6_2, L7_2, L8_2, L9_2)
  end
end
L0_1._on_animation_event_str_notify = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.area_data
  L1_2 = L1_2.ExhibitStuffsCount
  L2_2 = A0_2.area_data
  L2_2 = L2_2.ExhibitStuffsMaxCount
  if L1_2 ~= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._set_close
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_collection_panel
    L2_2 = L1_2
    L1_2 = L1_2.Play
    L3_2 = "MuseumProgressBar_Remind"
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_fill_end = L6_1
function L6_1(A0_2)
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
  L5_2 = A0_2.mission_id
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
L0_1._on_btn_go = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._is_can_transit = true
end
L0_1._set_transit = L6_1
function L6_1(A0_2)
  local L1_2
  A0_2._is_can_close = true
end
L0_1._set_close = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_can_transit
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_mission_panel
    L1_2(L2_2)
    A0_2._is_can_transit = false
  end
  L1_2 = A0_2._is_can_close
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L0_1._on_btn_close_click = L6_1
return L0_1
