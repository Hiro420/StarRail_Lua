local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassRewardItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassRewardIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassRewardIconPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BattlePassModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "BattlePassRewardItemPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  A0_2._data = nil
  L1_2 = {}
  A0_2._free_points = L1_2
  L1_2 = {}
  A0_2._paid_points = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_points_free
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_free_point_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_points_paid
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_paid_point_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_points_free
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_get_align_offset
    L3_3 = A0_3
    return L1_3(L2_3, L3_3)
  end
  L1_2.OnGetAlignOffset = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_points_paid
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A0_2
    L2_3 = L1_3
    L1_3 = L1_3._on_get_align_offset
    L3_3 = A0_3
    return L1_3(L2_3, L3_3)
  end
  L1_2.OnGetAlignOffset = L2_2
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._level
  return L1_2
end
L1_1.get_level = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._data = A1_2
  L2_2 = A0_2._data
  L2_2 = L2_2.Level
  A0_2._level = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_Battlepass_Level_Button"
  L5_2 = A0_2._level
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_current
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_current
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._level
    L5_2 = L0_1.BattlePassData
    L5_2 = L5_2.CurrentLevel
    L4_2 = L4_2 == L5_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = {}
  L3_2 = A0_2._data
  L3_2 = L3_2.FreeRewardPoint
  L2_2[1] = L3_2
  A0_2._free_points = L2_2
  L2_2 = {}
  A0_2._paid_points = L2_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = A0_2._data
  L3_2 = L3_2.PaidRewardPoints
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.IsEmpty
    if not L8_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._paid_points
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.refresh_view
  L3_2(L4_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_points_free
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._free_points
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_points_paid
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._paid_points
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_inner_navigation
  L1_2(L2_2)
end
L1_1.refresh_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._on_point_changed
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2._free_points
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1._on_free_point_changed = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L4_2 = A0_2
  L3_2 = A0_2._on_point_changed
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2._paid_points
  return L3_2(L4_2, L5_2, L6_2, L7_2)
end
L1_1._on_paid_point_changed = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = A1_2
  L4_2 = A1_2.NewListViewItem
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.BattlePassRewardIconPanel
    L9_2 = G
    L9_2 = L9_2.BattlePassRewardIconPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
    L7_2 = L4_2
    L6_2 = L4_2.SetAlignRectTransform
    L8_2 = A0_2._binder
    L8_2 = L8_2.root
    L6_2(L7_2, L8_2)
  end
  L6_2 = A2_2 + 1
  L6_2 = A3_2[L6_2]
  L8_2 = L5_2
  L7_2 = L5_2.setup_view
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  return L4_2
end
L1_1._on_point_changed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.Vector2
  L3_2 = 0
  L4_2 = A1_2.AlignRectTransform
  L4_2 = L4_2.rect
  L4_2 = L4_2.width
  return L2_2(L3_2, L4_2)
end
L1_1._on_get_align_offset = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_points_free
  return L1_2
end
L1_1.get_free_static_list = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_points_paid
  return L1_2
end
L1_1.get_paid_static_list = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_points_free
  L2_2 = L1_2
  L1_2 = L1_2.SetDirectionRefListview
  L3_2 = A0_2._binder
  L3_2 = L3_2.list_points_paid
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.EventSystems
  L4_2 = L4_2.MoveDirection
  L4_2 = L4_2.Down
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._setup_inner_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_points_free
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByItemIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      goto lbl_13
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_13::
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.get_first_selected_object
  return L2_2(L3_2)
end
L1_1.get_first_selected_object = L2_1
return L1_1
