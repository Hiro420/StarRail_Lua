local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Museum.Target.MuseumRewardMissionDialogBinder"
L0_1(L1_1)
L0_1 = "MuseumMissionStart"
L1_1 = 8
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "MuseumRewardMissionDialog"
L4_1 = G
L4_1 = L4_1.BaseDialog
L2_1 = L2_1(L3_1, L4_1)
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.MuseumModule
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumRewardMissionDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_resp_esc = false
end
L2_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._random_event = A1_2
  L2_2 = A1_2.RandomEventConfig
  L2_2 = L2_2.EventTypeParameter
  L2_2 = L2_2[0]
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.EventMuseumItemConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  A0_2._event_config = L3_2
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
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._event_config
  L4_2 = L4_2.MuseumItemID
  L3_2 = L3_2(L4_2)
  A0_2._item_row = L3_2
end
L2_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_go
  L4_2 = A0_2._on_btn_go
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2
  A0_2._event_config = nil
  A0_2._main_mission_row = nil
  A0_2._item_row = nil
end
L2_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_common
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_item_panel
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_next_frame_callback
  L2_2 = A0_2._refresh_short_cut_hint
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L2_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = L1_1
  L4_2 = A0_2._binder
  L4_2 = L4_2.scroll_rect
  L5_2 = "Root/BgPanel/KeyMapHintRoot"
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L2_1._refresh_short_cut_hint = L4_1
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
L2_1._setup_common = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L3_1.AllExhibitItemData
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
L2_1._setup_item_panel = L4_1
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
L2_1._on_btn_go = L4_1
return L2_1
