local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Museum.RandomEvent.MuseumMissionEventDialogBinder"
L0_1(L1_1)
L0_1 = "MuseumMissionStart"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MuseumMissionEventDialog"
L3_1 = G
L3_1 = L3_1.BaseDialog
L1_1 = L1_1(L2_1, L3_1)
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.MuseumModule
L3_1 = 8
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumMissionEventDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
  A0_2._pause_game = true
end
L1_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._random_event = A1_2
  A0_2._is_item_event = false
  L2_2 = A1_2.RandomEventConfig
  L2_2 = L2_2.EventTypeParameter
  L2_2 = L2_2[0]
  L3_2 = A1_2.RandomEventConfig
  L3_2 = L3_2.EventType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MuseumRandomEventType
  L4_2 = L4_2.ExhibitMission
  if L3_2 == L4_2 then
    A0_2._is_item_event = true
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.EventMuseumItemConfigExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    A0_2._event_config = L3_2
  else
    L3_2 = A1_2.RandomEventConfig
    L3_2 = L3_2.EventType
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MuseumRandomEventType
    L4_2 = L4_2.StuffMission
    if L3_2 == L4_2 then
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.EventStuffConfigExcelTable
      L3_2 = L3_2.GetData
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      A0_2._event_config = L3_2
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.GetMainMissionRow
  L5_2 = A0_2._event_config
  L5_2 = L5_2.MissionID
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._main_mission_row = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._init_item
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._init_staff
  L3_2(L4_2)
end
L1_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_item_event
  if not L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._event_config
  L2_2 = L2_2.MuseumItemID
  L1_2 = L1_2(L2_2)
  A0_2._item_row = L1_2
end
L1_1._init_item = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_item_event
  if L1_2 then
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._event_config
  L2_2 = L2_2.StuffID
  L1_2 = L1_2(L2_2)
  A0_2._item_row = L1_2
end
L1_1._init_staff = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._event_config = nil
  A0_2._main_mission_row = nil
  A0_2._item_row = nil
end
L1_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_common
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_item_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_staff_panel
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_next_frame_callback
  L2_2 = A0_2._refresh_short_cut_hint
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L1_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = L3_1
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rect
  L5_2 = "Root/Content/BgPanel/KeyMapHintRoot"
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._refresh_short_cut_hint = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._random_event
  L3_2 = L3_2.RandomEventConfig
  L3_2 = L3_2.EventTitle
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.TextmapStatic
  L1_2 = L1_2.GetText
  L2_2 = A0_2._main_mission_row
  L2_2 = L2_2.Name
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = A0_2._item_row
  L3_2 = L3_2.ItemName
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._random_event
  L5_2 = L5_2.RandomEventConfig
  L5_2 = L5_2.Event
  L6_2 = L1_2
  L7_2 = L2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1._setup_common = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.exhibit_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._is_item_event
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_item_event
  if not L1_2 then
    return
  end
  L1_2 = L2_1.AllExhibitItemData
  L2_2 = L1_2
  L1_2 = L1_2.TryGetValue
  L3_2 = A0_2._event_config
  L3_2 = L3_2.MuseumItemID
  L1_2, L2_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.exhibit_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L1_1._setup_item_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.staff_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = A0_2._is_item_event
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_item_event
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.staff_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = L2_1
  L4_2 = L3_2
  L3_2 = L3_2.GetStaffData
  L5_2 = A0_2._event_config
  L5_2 = L5_2.StuffID
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._setup_staff_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._event_config
  if L1_2 ~= nil then
    L1_2 = A0_2._event_config
    L1_2 = L1_2.MissionID
    if L1_2 ~= 0 then
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
      L5_2 = A0_2._event_config
      L5_2 = L5_2.MissionID
      function L6_2(A0_3)
        local L1_3, L2_3, L3_3
        if A0_3 then
          L1_3 = CS
          L1_3 = L1_3.RPG
          L1_3 = L1_3.Client
          L1_3 = L1_3.GlobalVars
          L1_3 = L1_3.s_UIManager
          L2_3 = L1_3
          L1_3 = L1_3.GetPageByName
          L3_3 = "MuseumEntrancePage"
          L1_3 = L1_3(L2_3, L3_3)
          if L1_3 then
            L1_3 = G
            L1_3 = L1_3.Utils
            L1_3 = L1_3.trigger_custom_string
            L2_3 = L0_1
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
      end
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L3_2[3] = L6_2
      L1_2(L2_2, L3_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L1_1._on_btn_go = L4_1
return L1_1
