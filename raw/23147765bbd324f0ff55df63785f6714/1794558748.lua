local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooFeatureHandbookPanel.SpaceZooHandbookFeatureIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooFeatureHandbookPanel.SpaceZooHandbookFeatureIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooFeatureHandbookPanel.SpaceZooHandbookSpecialFeatureIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooFeatureHandbookPanel.SpaceZooHandbookSpecialFeatureIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.SpaceZoo.SpaceZooFeatureHandbookPanel.SpaceZooEyeDecalIconPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.SpaceZooChannelType
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "SpaceZooHandbookFeatureListPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.SpaceZooChannelConfigExcelTable
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.SpaceZooModule
L4_1 = G
L4_1 = L4_1.ComponentExtensions
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2
  A0_2._channel_type = A3_2
  L5_2 = A4_2 or L5_2
  if A4_2 == nil or not A4_2 then
    L5_2 = false
  end
  A0_2._is_show_material = L5_2
  L5_2 = {}
  A0_2._panel_feature_icon = L5_2
end
L1_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._init_handbook_feature_icon_panel
  L1_2(L2_2)
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
    L3_3 = A0_2._channel_type
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L1_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  L2_2 = string
  L2_2 = L2_2.format
  L3_2 = "Content/%s"
  L4_2 = A0_2._channel_type
  L5_2 = L4_2
  L4_2 = L4_2.ToString
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A0_2._channel_type
  L4_2 = L0_1.HatColor
  if L3_2 == L4_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = L2_2
    L6_2 = 1
    L5_2 = L5_2 .. L6_2
    L3_2(L4_2, L5_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = L2_2
    L6_2 = 2
    L5_2 = L5_2 .. L6_2
    L3_2(L4_2, L5_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = L2_2
    L6_2 = 3
    L5_2 = L5_2 .. L6_2
    L3_2(L4_2, L5_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = L2_2
    L6_2 = 5
    L5_2 = L5_2 .. L6_2
    L3_2(L4_2, L5_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = L2_2
    L6_2 = 6
    L5_2 = L5_2 .. L6_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._channel_type
    L4_2 = L0_1.BodyColor
    if L3_2 == L4_2 then
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L1_2
      L5_2 = L2_2
      L6_2 = 1
      L5_2 = L5_2 .. L6_2
      L3_2(L4_2, L5_2)
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L1_2
      L5_2 = L2_2
      L6_2 = 2
      L5_2 = L5_2 .. L6_2
      L3_2(L4_2, L5_2)
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L1_2
      L5_2 = L2_2
      L6_2 = 4
      L5_2 = L5_2 .. L6_2
      L3_2(L4_2, L5_2)
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L1_2
      L5_2 = L2_2
      L6_2 = 5
      L5_2 = L5_2 .. L6_2
      L3_2(L4_2, L5_2)
      L3_2 = table
      L3_2 = L3_2.insert
      L4_2 = L1_2
      L5_2 = L2_2
      L6_2 = 6
      L5_2 = L5_2 .. L6_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = A0_2._channel_type
      L4_2 = L0_1.EyeDecal
      if L3_2 == L4_2 then
        L3_2 = table
        L3_2 = L3_2.insert
        L4_2 = L1_2
        L5_2 = L2_2
        L6_2 = 1
        L5_2 = L5_2 .. L6_2
        L3_2(L4_2, L5_2)
        L3_2 = table
        L3_2 = L3_2.insert
        L4_2 = L1_2
        L5_2 = L2_2
        L6_2 = 2
        L5_2 = L5_2 .. L6_2
        L3_2(L4_2, L5_2)
        L3_2 = table
        L3_2 = L3_2.insert
        L4_2 = L1_2
        L5_2 = L2_2
        L6_2 = 3
        L5_2 = L5_2 .. L6_2
        L3_2(L4_2, L5_2)
        L3_2 = table
        L3_2 = L3_2.insert
        L4_2 = L1_2
        L5_2 = L2_2
        L6_2 = 4
        L5_2 = L5_2 .. L6_2
        L3_2(L4_2, L5_2)
        L3_2 = table
        L3_2 = L3_2.insert
        L4_2 = L1_2
        L5_2 = L2_2
        L6_2 = 5
        L5_2 = L5_2 .. L6_2
        L3_2(L4_2, L5_2)
      else
        L3_2 = A0_2._channel_type
        L4_2 = L0_1.BodyDecal
        if L3_2 == L4_2 then
          L3_2 = table
          L3_2 = L3_2.insert
          L4_2 = L1_2
          L5_2 = L2_2
          L6_2 = 1
          L5_2 = L5_2 .. L6_2
          L3_2(L4_2, L5_2)
          L3_2 = table
          L3_2 = L3_2.insert
          L4_2 = L1_2
          L5_2 = L2_2
          L6_2 = 2
          L5_2 = L5_2 .. L6_2
          L3_2(L4_2, L5_2)
          L3_2 = table
          L3_2 = L3_2.insert
          L4_2 = L1_2
          L5_2 = L2_2
          L6_2 = 4
          L5_2 = L5_2 .. L6_2
          L3_2(L4_2, L5_2)
          L3_2 = table
          L3_2 = L3_2.insert
          L4_2 = L1_2
          L5_2 = L2_2
          L6_2 = 5
          L5_2 = L5_2 .. L6_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
  return L1_2
end
L1_1._get_feature_paths = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = G
  L1_2 = L1_2.SpaceZooUtils
  L1_2 = L1_2.get_node_features
  L2_2 = A0_2._channel_type
  L1_2 = L1_2(L2_2)
  A0_2._feature_ids = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._get_feature_paths
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L4_1.SafeFind
    L7_2 = A0_2._binder
    L7_2 = L7_2.root
    L8_2 = L1_2[L5_2]
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = nil
    L8_2 = A0_2._is_show_material
    if not L8_2 then
      L9_2 = A0_2
      L8_2 = A0_2.create_panel
      L10_2 = G
      L10_2 = L10_2.SpaceZooHandbookFeatureIconPanel
      L11_2 = G
      L11_2 = L11_2.SpaceZooHandbookFeatureIconPanelBinder
      L12_2 = A0_2._feature_ids
      L12_2 = L12_2[L5_2]
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      L7_2 = L8_2
    else
      L9_2 = A0_2
      L8_2 = A0_2.create_panel
      L10_2 = G
      L10_2 = L10_2.SpaceZooHandbookSpecialFeatureIconPanel
      L11_2 = G
      L11_2 = L11_2.SpaceZooHandbookSpecialFeatureIconPanelBinder
      L12_2 = A0_2._feature_ids
      L12_2 = L12_2[L5_2]
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      L7_2 = L8_2
    end
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._panel_feature_icon
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
    L9_2 = L7_2
    L8_2 = L7_2.bind
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
  end
end
L1_1._init_handbook_feature_icon_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = 0
  L3_2 = 1
  L4_2 = A0_2._feature_ids
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L3_1.SpaceZooData
    L8_2 = L7_2
    L7_2 = L7_2.GetFeatureData
    L9_2 = A0_2._feature_ids
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
  L3_2 = L2_1.GetEnumerator
  L3_2 = L3_2()
  while true do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L4_2 = L3_2.Current
      L5_2 = L4_2.Channel
      L6_2 = A0_2._channel_type
      if L5_2 == L6_2 then
        L5_2 = A0_2._binder
        L5_2 = L5_2.text_title
        L6_2 = L5_2
        L5_2 = L5_2.SafeSetTextID
        L7_2 = L4_2.OfficialNameText
        L5_2(L6_2, L7_2)
        L5_2 = A0_2._binder
        L5_2 = L5_2.text_sub_title
        if L5_2 ~= nil then
          L5_2 = A0_2._binder
          L5_2 = L5_2.text_sub_title
          L6_2 = L5_2
          L5_2 = L5_2.SafeSetTextID
          L7_2 = "UIText_ActivitySpaceZoo_SpecialFeatures"
          L5_2(L6_2, L7_2)
        end
        break
      end
    end
  end
end
L1_1._init_text = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L1_1.get_btn = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._select_trigger_callback = A1_2
  A0_2._select_trigger_callback_handler = A2_2
end
L1_1.register_select_trigger_callback = L5_1
function L5_1(A0_2, A1_2)
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
L1_1.play_feature_unlock_anim = L5_1
function L5_1(A0_2)
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
L1_1.stop_anim = L5_1
return L1_1
