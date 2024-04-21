local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooFeatureHandbookPanel.SpaceZooHandbookSpecialFeatureIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooFeatureHandbookPanel.SpaceZooHandbookSpecialFeatureIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "SpaceZooHandbookSpecialFeatureListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.SpaceZooChannelConfigExcelTable
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.SpaceZooModule
L3_1 = G
L3_1 = L3_1.ComponentExtensions
function L4_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2._feature_ids = L3_2
  L3_2 = {}
  A0_2._panel_feature_icon = L3_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._init_handbook_feature_icon_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.SpaceZooChannelType
  L3_2 = L3_2.HatDecal
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_handbook_feature_icon_panel
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.SpaceZooChannelType
  L3_2 = L3_2.TailDecal
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_text
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._select_trigger_callback
    L2_3 = A0_2._select_trigger_callback_handler
    L3_3 = CS
    L3_3 = L3_3.RPG
    L3_3 = L3_3.GameCore
    L3_3 = L3_3.SpaceZooChannelType
    L3_3 = L3_3.HatDecal
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = G
  L1_2 = L1_2.SpaceZooUtils
  L1_2 = L1_2.get_node_features
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.SpaceZooChannelType
  L2_2 = L2_2.HatDecal
  L1_2 = L1_2(L2_2)
  A0_2._hat_decal_feature_ids = L1_2
  L1_2 = string
  L1_2 = L1_2.format
  L2_2 = "Content/%s"
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.SpaceZooChannelType
  L3_2 = L3_2.HatDecal
  L4_2 = L3_2
  L3_2 = L3_2.ToString
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L2_2 = 1
  L3_2 = A0_2._hat_decal_feature_ids
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L3_1.SafeFind
    L7_2 = A0_2._binder
    L7_2 = L7_2.root
    L8_2 = L1_2
    L9_2 = L5_2
    L8_2 = L8_2 .. L9_2
    L6_2 = L6_2(L7_2, L8_2)
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.SpaceZooHandbookSpecialFeatureIconPanel
    L10_2 = G
    L10_2 = L10_2.SpaceZooHandbookSpecialFeatureIconPanelBinder
    L11_2 = A0_2._hat_decal_feature_ids
    L11_2 = L11_2[L5_2]
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    L9_2 = L7_2
    L8_2 = L7_2.bind
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._feature_ids
    L10_2 = A0_2._hat_decal_feature_ids
    L10_2 = L10_2[L5_2]
    L8_2(L9_2, L10_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._panel_feature_icon
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = G
  L2_2 = L2_2.SpaceZooUtils
  L2_2 = L2_2.get_node_features
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.SpaceZooChannelType
  L3_2 = L3_2.TailDecal
  L2_2 = L2_2(L3_2)
  A0_2._tail_decal_feature_ids = L2_2
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "Content/%s"
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.SpaceZooChannelType
  L4_2 = L4_2.TailDecal
  L5_2 = L4_2
  L4_2 = L4_2.ToString
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L3_2 = 1
  L4_2 = A0_2._tail_decal_feature_ids
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L3_1.SafeFind
    L8_2 = A0_2._binder
    L8_2 = L8_2.root
    L9_2 = L2_2
    L10_2 = L6_2
    L9_2 = L9_2 .. L10_2
    L7_2 = L7_2(L8_2, L9_2)
    L9_2 = A0_2
    L8_2 = A0_2.create_panel
    L10_2 = G
    L10_2 = L10_2.SpaceZooHandbookSpecialFeatureIconPanel
    L11_2 = G
    L11_2 = L11_2.SpaceZooHandbookSpecialFeatureIconPanelBinder
    L12_2 = A0_2._tail_decal_feature_ids
    L12_2 = L12_2[L6_2]
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L10_2 = L8_2
    L9_2 = L8_2.bind
    L11_2 = L7_2
    L9_2(L10_2, L11_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2._feature_ids
    L11_2 = A0_2._tail_decal_feature_ids
    L11_2 = L11_2[L6_2]
    L9_2(L10_2, L11_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = A0_2._panel_feature_icon
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
end
L0_1._init_handbook_feature_icon_panel = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = 1
  L4_2 = A0_2._hat_decal_feature_ids
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_1.SpaceZooData
    L8_2 = L7_2
    L7_2 = L7_2.GetFeatureData
    L9_2 = A0_2._hat_decal_feature_ids
    L9_2 = L9_2[L6_2]
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2.Row
    L8_2 = L8_2.ResearchPoint
    L2_2 = L2_2 + L8_2
    L9_2 = L7_2.IsUnlock
    if L9_2 then
      L1_2 = L1_2 + L8_2
    end
  end
  L3_2 = 1
  L4_2 = A0_2._tail_decal_feature_ids
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_1.SpaceZooData
    L8_2 = L7_2
    L7_2 = L7_2.GetFeatureData
    L9_2 = A0_2._tail_decal_feature_ids
    L9_2 = L9_2[L6_2]
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = L7_2.Row
    L8_2 = L8_2.ResearchPoint
    L2_2 = L2_2 + L8_2
    L9_2 = L7_2.IsUnlock
    if L9_2 then
      L1_2 = L1_2 + L8_2
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_current_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_total_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = L1_1.GetEnumerator
  L3_2 = L3_2()
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    L5_2 = L4_2.Channel
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.SpaceZooChannelType
    L6_2 = L6_2.HatDecal
    if L5_2 == L6_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_title
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = L4_2.OfficialNameText
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_sub_title
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = "UIText_ActivitySpaceZoo_SpecialFeatures"
      L5_2(L6_2, L7_2)
      break
    end
  end
end
L0_1._init_text = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_btn = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._select_trigger_callback = A1_2
  A0_2._select_trigger_callback_handler = A2_2
end
L0_1.register_select_trigger_callback = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 1
  L3_2 = A0_2._feature_ids
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._feature_ids
    L6_2 = L6_2[L5_2]
    if L6_2 == A1_2 then
      L6_2 = A0_2._panel_feature_icon
      L6_2 = L6_2[L5_2]
      L7_2 = L6_2
      L6_2 = L6_2.play_anim
      L6_2(L7_2)
    end
  end
  L2_2 = G
  L2_2 = L2_2.SuperDebug
  L2_2 = L2_2.LogWarningFormat
  L3_2 = "SpaceZooHandbookFeatureListPanel: \229\155\190\233\137\180\228\184\173\230\137\190\228\184\141\229\136\176\229\175\185\229\186\148feature: "
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
end
L0_1.play_feature_unlock_anim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 1
  L2_2 = A0_2._panel_feature_icon
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._panel_feature_icon
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.stop_anim
    L5_2(L6_2)
  end
end
L0_1.stop_anim = L4_1
return L0_1
