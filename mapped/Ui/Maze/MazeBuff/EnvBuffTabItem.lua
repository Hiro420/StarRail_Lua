local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EnvBuffTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_TeamBuffDetailDialog_TitleEnvBuff"
L2_1 = "SpriteOutput/TabIcon/Maze/Maze02Icon.png"
L3_1 = require
L4_1 = "Utilities.BuffUtils"
L3_1(L4_1)
L3_1 = G
L3_1 = L3_1.BuffUtils
L3_1 = L3_1.BuffPoolType
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2.env_buff_data_list
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  return L1_2
end
L0_1.is_show_buff = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_normal_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn_selected_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn_normal_img
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.tab_btn_selected_img
  L4_2 = L2_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = {}
  A0_2.env_buff_data_list = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._init_env_buff_data
  L1_2(L2_2)
  L1_2 = A0_2.env_buff_data_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.env_scroll_view
    L2_2 = L1_2
    L1_2 = L1_2.SafeInitListView
    L3_2 = 0
    L4_2 = A0_2._on_scroll_env_change
    L5_2 = nil
    L6_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.GetMainWorld
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2.EntityManagerRef
    L4_2 = L2_2
    L3_2 = L2_2.GetLightTeamEntity
    L3_2 = L3_2(L4_2)
    L5_2 = L3_2
    L4_2 = L3_2.GetComponent
    L6_2 = typeof
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.AdventureAbilityComponent
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L6_2(L7_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L5_2 = L4_2.ModifierCount
    L6_2 = 0
    L7_2 = L5_2 - 1
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L11_2 = L4_2
      L10_2 = L4_2.GetModifierByIndex
      L12_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = G
      L11_2 = L11_2.BuffUtils
      L11_2 = L11_2.GetMazeBuffData
      L12_2 = L10_2.BuffID
      L13_2 = L10_2.Level
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = L10_2.State
      L13_2 = CS
      L13_2 = L13_2.RPG
      L13_2 = L13_2.GameCore
      L13_2 = L13_2.ModifierState
      L13_2 = L13_2.Alive
      if L12_2 == L13_2 and L11_2 then
        L12_2 = L11_2.IsDisplay
        if L12_2 then
          L12_2 = L11_2.MazeBuffPool
          L13_2 = L3_1.Env
          if L12_2 == L13_2 then
            L12_2 = table
            L12_2 = L12_2.insert
            L13_2 = A0_2.env_buff_data_list
            L14_2 = L10_2
            L12_2(L13_2, L14_2)
          end
        end
      end
    end
  end
end
L0_1._init_env_buff_data = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2.env_buff_data_list
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  L4_2 = nil
  L6_2 = A1_2
  L5_2 = A1_2.NewListViewItem
  L7_2 = 0
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L5_2
  L5_2 = L4_2.UserObjectData
  if L5_2 == nil then
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.CommonBuffRowPanel
    L9_2 = G
    L9_2 = L9_2.CommonBuffRowPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  L7_2 = L5_2
  L6_2 = L5_2.setup_buff_data
  L8_2 = L3_2
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = L5_2._binder
  L7_2 = L7_2.root
  L6_2(L7_2)
  return L4_2
end
L0_1._on_scroll_env_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._owner
  L1_2 = L1_2._binder
  L1_2 = L1_2.text_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.env_buff_data_list
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_env_buff_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_env_buff_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_empty_env_buff_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_TeamBuffDetailDialog_NoEnvBuff"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.env_scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2.env_buff_data_list
  L4_2 = #L4_2
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L4_1
return L0_1
