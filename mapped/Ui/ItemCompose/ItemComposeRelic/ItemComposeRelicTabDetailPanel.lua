local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicTargetItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicTargetItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicTabShownItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicTabShownItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ItemComposeRelicTabDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 3
L2_1 = {}
L2_1.Enable = "#FFFFFFFF"
L2_1.Disable = "#EB4141FF"
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._btn_list
  if L1_2 then
    L1_2 = A0_2._btn_list
    L1_2 = #L1_2
    if 0 < L1_2 then
      L1_2 = A0_2._btn_list
      L1_2 = L1_2[2]
      if L1_2 == nil then
        L1_2 = A0_2._btn_list
        L1_2 = L1_2[1]
        L1_2 = L1_2.gameObject
        return L1_2
      end
      L1_2 = A0_2._btn_list
      L1_2 = L1_2[2]
      L1_2 = L1_2.gameObject
      return L1_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2, A1_2)
end
L0_1.setup_in_control_button_enable = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.TutorialSupportModule
  L2_2 = L1_2
  L1_2 = L1_2.SetNodeDynamicKey
  L3_2 = A0_2._compose_icon_panel
  L3_2 = L3_2._binder
  L3_2 = L3_2.root
  L3_2 = L3_2.gameObject
  L4_2 = "CommonItemIcon"
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.rename_item_icon_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.static_list_view_relics
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_static_list_view_change
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ItemComposeRelicTargetItemPanel
  L4_2 = G
  L4_2 = L4_2.ItemComposeRelicTargetItemPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._compose_icon_panel = L1_2
  L1_2 = A0_2._compose_icon_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_compose_icon_panel
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._relic_box_data = A1_2
  L2_2 = {}
  A0_2._btn_list = L2_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = A0_2._btn_list
  L4_2 = A0_2._compose_icon_panel
  L4_2 = L4_2._binder
  L4_2 = L4_2.button
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_suit_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._relic_box_data
  L4_2 = L4_2.Name
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_disable_panel
  L2_2(L3_2)
  L2_2 = A0_2._compose_icon_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A0_2._relic_box_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.ItemID
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_relic_configs
  L2_2(L3_2)
  L2_2 = A0_2._relic_configs
  L2_2 = #L2_2
  if L2_2 < 1 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_desc
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.static_list_view_relics
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._relic_configs
  L4_2 = #L4_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_btn_list_navigation_static
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_disable_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._relic_box_data
  L3_2 = L3_2.IsLock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_relics_view_area
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._relic_box_data
  L3_2 = L3_2.IsLock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._relic_box_data
  L1_2 = L1_2.IsLock
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_disable_panel
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_ItemCompose_Tips_02"
    L4_2 = A0_2._relic_box_data
    L4_2 = L4_2.Row
    L4_2 = L4_2.WorldLevelRequire
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_disable_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._relic_configs = L1_2
  L1_2 = 0
  L2_2 = A0_2._relic_box_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.RelicList
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.RelicConfigExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._relic_box_data
    L6_2 = L6_2.Row
    L6_2 = L6_2.RelicList
    L6_2 = L6_2[L4_2]
    L5_2 = L5_2(L6_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._relic_configs
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._get_relic_configs = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._get_relic_box_set_skill_desc
  L3_2 = A0_2._relic_configs
  L3_2 = L3_2[1]
  L3_2 = L3_2.SetID
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_relic_box_desc_info
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_suit_desc
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L1_2
  L6_2 = "\n"
  L7_2 = L2_2
  L5_2 = L5_2 .. L6_2 .. L7_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_desc = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._relic_box_data
  L2_2 = L2_2.ItemID
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = L1_2.ItemDesc
  L2_2 = L2_2(L3_2)
  return L2_2
end
L0_1._get_relic_box_desc_info = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = ""
  L3_2 = 1
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.RelicSetSkillConfigExcelTable
  L4_2 = L4_2.GetEnumerator
  L4_2 = L4_2()
  while true do
    L6_2 = L4_2
    L5_2 = L4_2.MoveNext
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      break
    end
    L5_2 = L4_2.Current
    L6_2 = L5_2.SetID
    if L6_2 == A1_2 then
      L6_2 = G
      L6_2 = L6_2.TextmapStatic
      L6_2 = L6_2.GetText
      L7_2 = "UIText_AvatarRelic_Effect"
      L8_2 = tostring
      L9_2 = L5_2.RequireNum
      L8_2 = L8_2(L9_2)
      L7_2 = L7_2 .. L8_2
      L6_2 = L6_2(L7_2)
      L7_2 = G
      L7_2 = L7_2.TextmapStatic
      L7_2 = L7_2.GetText
      L8_2 = L5_2.SkillDesc
      L9_2 = G
      L9_2 = L9_2.UITextUtils
      L9_2 = L9_2.GetSkillParams
      L10_2 = L5_2.AbilityParamList
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
      L8_2 = L2_2
      L9_2 = G
      L9_2 = L9_2.TextmapStatic
      L9_2 = L9_2.GetText
      L10_2 = "UIText_AvatarRelic_EffectDesc_WithCount"
      L11_2 = L6_2
      L12_2 = L7_2
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      L2_2 = L8_2 .. L9_2
      L8_2 = L2_2
      L9_2 = "\n"
      L2_2 = L8_2 .. L9_2
      L3_2 = L3_2 + 1
    end
  end
  return L2_2
end
L0_1._get_relic_box_set_skill_desc = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ItemComposeRelicTabShownItem
    L8_2 = G
    L8_2 = L8_2.ItemComposeRelicTabShownItemBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_relic_icon_click
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._relic_box_data
  L5_2 = L5_2.IsLock
  if not L5_2 then
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2._btn_list
    L7_2 = L4_2._binder
    L7_2 = L7_2.btn_root
    L5_2(L6_2, L7_2)
  end
  L5_2 = A0_2._relic_configs
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_static_list_view_change = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.ItemCompose.ItemComposeRelic.ItemComposeRelicSynthesis.ItemComposeRelicSynthesisPage"
  L4_2 = A1_2
  L5_2 = A0_2._relic_configs
  L6_2 = A0_2._relic_box_data
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_relic_icon_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2._btn_list
  L1_2 = #L1_2
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._btn_list
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.navigation
    L7_2 = CS
    L7_2 = L7_2.UnityEngine
    L7_2 = L7_2.UI
    L7_2 = L7_2.Navigation
    L7_2 = L7_2.Mode
    L7_2 = L7_2.Explicit
    L6_2.mode = L7_2
  end
  if L1_2 <= 1 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._set_single_btn_navigation
  L4_2 = A0_2._btn_list
  L4_2 = L4_2[1]
  L5_2 = nil
  L6_2 = A0_2._btn_list
  L6_2 = L6_2[2]
  L7_2 = nil
  L8_2 = nil
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = 2
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    if L5_2 == 2 then
      L7_2 = A0_2
      L6_2 = A0_2._set_single_btn_navigation
      L8_2 = A0_2._btn_list
      L8_2 = L8_2[L5_2]
      L9_2 = A0_2._btn_list
      L9_2 = L9_2[1]
      L10_2 = nil
      L11_2 = nil
      L12_2 = A0_2._btn_list
      L13_2 = L5_2 + 1
      L12_2 = L12_2[L13_2]
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    else
      L7_2 = A0_2
      L6_2 = A0_2._set_single_btn_navigation
      L8_2 = A0_2._btn_list
      L8_2 = L8_2[L5_2]
      L9_2 = A0_2._btn_list
      L9_2 = L9_2[1]
      L10_2 = nil
      L11_2 = A0_2._btn_list
      L12_2 = L5_2 - 1
      L11_2 = L11_2[L12_2]
      L12_2 = A0_2._btn_list
      L13_2 = L5_2 + 1
      L12_2 = L12_2[L13_2]
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
  end
end
L0_1._setup_btn_list_navigation_static = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  L6_2 = A1_2.navigation
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.Navigation
  L7_2 = L7_2.Mode
  L7_2 = L7_2.Explicit
  L6_2.mode = L7_2
  if A2_2 ~= nil then
    L7_2 = A2_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnUp = A2_2
  end
  if A3_2 ~= nil then
    L7_2 = A3_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnDown = A3_2
  end
  if A4_2 ~= nil then
    L7_2 = A4_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnLeft = A4_2
  end
  if A5_2 ~= nil then
    L7_2 = A5_2.navigation
    L8_2 = CS
    L8_2 = L8_2.UnityEngine
    L8_2 = L8_2.UI
    L8_2 = L8_2.Navigation
    L8_2 = L8_2.Mode
    L8_2 = L8_2.Explicit
    L7_2.mode = L8_2
    L6_2.selectOnRight = A5_2
  end
  A1_2.navigation = L6_2
end
L0_1._set_single_btn_navigation = L3_1
return L0_1
