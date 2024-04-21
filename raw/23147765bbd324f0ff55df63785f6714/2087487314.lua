local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Adventure.MazeMapTestSelectDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeMapTestSelectDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AdventureModule
function L2_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._LifeTime = 0
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MazeMapTestSelectDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazePlaneRow
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MazePlaneExcelTable
  L2_2 = L2_2.dataDict
  L2_2 = L2_2.Values
  L1_2 = L1_2(L2_2)
  A0_2._maze_plane_list = L1_2
end
L0_1.init = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_begin
  L4_2 = A0_2._on_btn_begin
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_back
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._on_plane_drop_down_val_changed
  if nil ~= L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.drop_down_plane
    L1_2 = L1_2.onValueChanged
    L2_2 = L1_2
    L1_2 = L1_2.RemoveListener
    L3_2 = A0_2._on_plane_drop_down_val_changed
    L1_2(L2_2, L3_2)
  end
  function L1_2(A0_3)
    local L1_3, L2_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._setup_floor_selection
    L1_3(L2_3)
  end
  A0_2._on_plane_drop_down_val_changed = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.drop_down_plane
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  L3_2 = A0_2._on_plane_drop_down_val_changed
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_plane_selection
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_floor_selection
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.String
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = 0
  L3_2 = A0_2._maze_plane_list
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._maze_plane_list
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.PlaneID
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.TextmapStatic
    L7_2 = L7_2.GetText
    L8_2 = A0_2._maze_plane_list
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.PlaneName
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2 .. L7_2
    L7_2 = A0_2._maze_plane_list
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2.FloorIDList
    L7_2 = L7_2.Length
    if L7_2 == 1 then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.MazeFloorExcelTable
      L7_2 = L7_2.GetData
      L8_2 = A0_2._maze_plane_list
      L8_2 = L8_2[L5_2]
      L8_2 = L8_2.FloorIDList
      L8_2 = L8_2[0]
      L7_2 = L7_2(L8_2)
      L8_2 = L7_2.FloorID
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.Client
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = L7_2.FloorName
      L9_2 = L9_2(L10_2)
      L6_2 = L8_2 .. L9_2
    end
    L8_2 = L1_2
    L7_2 = L1_2.Add
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.drop_down_plane
  L3_2 = L2_2
  L2_2 = L2_2.ClearOptions
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.drop_down_plane
  L3_2 = L2_2
  L2_2 = L2_2.AddOptions
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.drop_down_plane
  L4_2 = A0_2
  L3_2 = A0_2._get_plane_drop_down_value
  L3_2 = L3_2(L4_2)
  L2_2.value = L3_2
end
L0_1._setup_plane_selection = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.String
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = A0_2._maze_plane_list
  L3_2 = A0_2._binder
  L3_2 = L3_2.drop_down_plane
  L3_2 = L3_2.value
  L2_2 = L2_2[L3_2]
  L3_2 = 0
  L4_2 = L2_2.FloorIDList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.MazeFloorExcelTable
    L7_2 = L7_2.GetData
    L8_2 = L2_2.FloorIDList
    L8_2 = L8_2[L6_2]
    L7_2 = L7_2(L8_2)
    L9_2 = L1_2
    L8_2 = L1_2.Add
    L10_2 = L7_2.FloorID
    L11_2 = CS
    L11_2 = L11_2.RPG
    L11_2 = L11_2.Client
    L11_2 = L11_2.TextmapStatic
    L11_2 = L11_2.GetText
    L12_2 = L7_2.FloorName
    L11_2 = L11_2(L12_2)
    L10_2 = L10_2 .. L11_2
    L8_2(L9_2, L10_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.drop_down_floor
  L4_2 = L3_2
  L3_2 = L3_2.ClearOptions
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.drop_down_floor
  L4_2 = L3_2
  L3_2 = L3_2.AddOptions
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.drop_down_floor
  L3_2.value = 0
end
L0_1._setup_floor_selection = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RPGApplication
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.RestartGameDev
  L1_2(L2_2)
end
L0_1._on_btn_back = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.drop_down_plane
  L1_2 = L1_2.value
  L2_2 = A0_2._maze_plane_list
  L2_2 = L2_2[L1_2]
  L3_2 = A0_2._binder
  L3_2 = L3_2.input_plane
  L3_2 = L3_2.text
  if L3_2 ~= "" then
    L3_2 = math
    L3_2 = L3_2.floor
    L4_2 = tonumber
    L5_2 = A0_2._binder
    L5_2 = L5_2.input_plane
    L5_2 = L5_2.text
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.MazePlaneExcelTable
    L4_2 = L4_2.GetData
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L2_2 = L4_2
  end
  L3_2 = L2_2.FloorIDList
  L4_2 = A0_2._binder
  L4_2 = L4_2.drop_down_floor
  L4_2 = L4_2.value
  L3_2 = L3_2[L4_2]
  L4_2 = A0_2._binder
  L4_2 = L4_2.input_floor
  L4_2 = L4_2.text
  if L4_2 ~= "" then
    L4_2 = math
    L4_2 = L4_2.floor
    L5_2 = tonumber
    L6_2 = A0_2._binder
    L6_2 = L6_2.input_floor
    L6_2 = L6_2.text
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2 = L4_2
  end
  L5_2 = A0_2
  L4_2 = A0_2.exit
  L4_2(L5_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AdventureMapTestInitParams
  L4_2 = L4_2()
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.GlobalVars
  L5_2 = L5_2.s_GamePhaseManager
  L6_2 = L5_2
  L5_2 = L5_2.SetCurrentPhase
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.GamePhaseType
  L7_2 = L7_2.AdventureMapTest
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = L1_1
  L6_2 = L5_2
  L5_2 = L5_2.CreateMapDef_OnlyClient
  L7_2 = L2_2.PlaneID
  L8_2 = L3_2
  L9_2 = 0
  L10_2 = 0
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_btn_begin = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.DevDataUtils
  L2_2 = L2_2.TeamMemberIDs
  L2_2 = L2_2.Value
  L3_2 = L2_2.Count
  if A1_2 < L3_2 then
    L3_2 = 0
    L4_2 = A0_2._team_member_cfgs
    L4_2 = L4_2.Count
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = A0_2._team_member_cfgs
      L7_2 = L7_2[L6_2]
      L7_2 = L7_2.ID
      L8_2 = L2_2[A1_2]
      if L7_2 == L8_2 then
        L7_2 = L6_2 + 1
        return L7_2
      end
    end
  else
    L3_2 = A1_2 + 1
    return L3_2
  end
end
L0_1._get_team_member_drop_down_value = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.DevDataUtils
  L1_2 = L1_2.PlaneID
  L2_2 = 0
  L3_2 = A0_2._maze_plane_list
  L3_2 = L3_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._maze_plane_list
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.PlaneID
    if L6_2 == L1_2 then
      return L5_2
    end
  end
end
L0_1._get_plane_drop_down_value = L2_1
return L0_1
