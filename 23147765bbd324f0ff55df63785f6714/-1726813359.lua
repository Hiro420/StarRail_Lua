local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureBgItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TravelBrochure.Widget.TravelBrochureBgItemPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.TravelBrochureModule
L1_1 = "Root/Effect"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "TravelBrochureBgPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
  A0_2._node_back = nil
  A0_2._node_front = nil
  L1_2 = {}
  A0_2._id_to_back_obj = L1_2
  L1_2 = {}
  A0_2._id_to_panel = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._node_back = A1_2
  A0_2._node_front = A2_2
end
L2_1.init_node = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_back_fade_in
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L2_1.play_first_in = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._diary_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_back_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_front_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_back_fade_in
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._diary_data
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._diary_data
  L2_2 = L2_2.ID
  L3_2 = A0_2._id_to_back_obj
  L3_2 = L3_2[L2_2]
  if L3_2 == nil then
    return
  end
  L4_2 = G
  L4_2 = L4_2.ComponentExtensions
  L4_2 = L4_2.SafeGetCmpt
  L5_2 = typeof
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.Animation
  L5_2 = L5_2(L6_2)
  L6_2 = L3_2.transform
  L7_2 = ""
  L8_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 ~= nil then
    if A1_2 then
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.UIAnimationUtils
      L5_2 = L5_2.PlayFromBegin
      L6_2 = L4_2
      L7_2 = "TravelBrochureMainInfoPanel_FadeIn"
      L5_2(L6_2, L7_2)
    else
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.Client
      L5_2 = L5_2.UIAnimationUtils
      L5_2 = L5_2.PlayToEnd
      L6_2 = L4_2
      L7_2 = "TravelBrochureMainInfoPanel_FadeIn"
      L5_2(L6_2, L7_2)
    end
  end
end
L2_1._refresh_back_fade_in = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._node_back
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._diary_data
  L1_2 = L1_2.ID
  L2_2 = A0_2._id_to_back_obj
  L2_2 = L2_2[L1_2]
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.sync_load_prefab
    L4_2 = A0_2._diary_data
    L4_2 = L4_2.Row
    L4_2 = L4_2.BackgroundPrefab
    L5_2 = A0_2._node_back
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2._id_to_back_obj
    L3_2[L1_2] = L2_2
  end
  L2_2 = pairs
  L3_2 = A0_2._id_to_back_obj
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = L5_2 == L1_2
    L7_2(L8_2, L9_2)
  end
end
L2_1._refresh_back_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._node_front
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._diary_data
  L1_2 = L1_2.ID
  L2_2 = A0_2._id_to_panel
  L2_2 = L2_2[L1_2]
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.sync_load_prefab
    L4_2 = A0_2._diary_data
    L4_2 = L4_2.Row
    L4_2 = L4_2.FrontPrefab
    L5_2 = A0_2._node_front
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.TravelBrochureBgItemPanel
    L6_2 = G
    L6_2 = L6_2.TravelBrochureBgItemPanelBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L5_2 = L3_2
    L4_2 = L3_2.bind
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._id_to_panel
    L4_2[L1_2] = L3_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_front
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._id_to_panel
  L2_2 = L2_2[L1_2]
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L5_2 = A0_2
  L4_2 = A0_2._get_directory_index
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._get_current_count
  L5_2 = L5_2(L6_2)
  L7_2 = A0_2
  L6_2 = A0_2._get_max_count
  L6_2, L7_2 = L6_2(L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L2_1._refresh_front_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2._diary_data
  L2_2 = L2_2.ID
  L3_2 = pairs
  L4_2 = A0_2._id_to_panel
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.safe_set_active
    L10_2 = A1_2 or L10_2
    L10_2 = A1_2 and L6_2 == L2_2
    L8_2(L9_2, L10_2)
  end
end
L2_1._show_front = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._diary_data
  L2_2 = L2_2.ID
  L3_2 = A0_2._id_to_back_obj
  L3_2 = L3_2[L2_2]
  L4_2 = G
  L4_2 = L4_2.ComponentExtensions
  L4_2 = L4_2.SafeFind
  L5_2 = L3_2.transform
  L6_2 = L1_1
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = L4_2
  L5_2 = L4_2.SafeSetActive
  L7_2 = A1_2
  L5_2(L6_2, L7_2)
end
L2_1.show_bg_effect = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._diary_data
  L2_2 = L2_2.ID
  L3_2 = A0_2._id_to_panel
  L3_2 = L3_2[L2_2]
  L5_2 = L3_2
  L4_2 = L3_2.show_content
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
end
L2_1.show_front_content = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._diary_data
  L1_2 = L1_2.ID
  L2_2 = A0_2._id_to_panel
  L2_2 = L2_2[L1_2]
  L4_2 = L2_2
  L3_2 = L2_2.get_obstacle_nodes
  return L3_2(L4_2)
end
L2_1.get_obstacle_nodes = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetDirectoryDiaryDatas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = L1_2
  L4_2 = A0_2._diary_data
  return L2_2(L3_2, L4_2)
end
L2_1._get_directory_index = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetUnlockedDiaryDatas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.index_of_item
  L3_2 = L1_2
  L4_2 = A0_2._diary_data
  return L2_2(L3_2, L4_2)
end
L2_1._get_current_count = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetUnlockedDiaryDatas
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Count
  return L1_2
end
L2_1._get_max_count = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._diary_data
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._id_to_panel
  L3_2 = A0_2._diary_data
  L3_2 = L3_2.ID
  L2_2 = L2_2[L3_2]
  L4_2 = L2_2
  L3_2 = L2_2.show_progress
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L2_1.show_progress = L3_1
return L2_1
