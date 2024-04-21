local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = require
L1_1 = "Ui.Battle.AvatarDialogHeadRow"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.TeamInfo.NewAvatarDialogHeadRowBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeBuff.CommonBuffRowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeBuff.CommonBuffRowPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarBuffTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_TeamBuffDetailDialog_TitleAvatarBuff"
L2_1 = "SpriteOutput/TabIcon/Maze/Maze01Icon.png"
L3_1 = require
L4_1 = "Utilities.BuffUtils"
L3_1(L4_1)
L3_1 = G
L3_1 = L3_1.BuffUtils
L3_1 = L3_1.BuffPoolType
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2.avatar_buff_data_list
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  return L1_2
end
L0_1.is_show_buff = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SelectPreview
  L1_2(L2_2)
end
L0_1._on_click_btn_left = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.is_current_tab_item
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_scroll_view
  L2_2 = L1_2
  L1_2 = L1_2.SelectNext
  L1_2(L2_2)
end
L0_1._on_click_btn_right = L4_1
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
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_left
  L4_2 = A0_2._on_click_btn_left
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_right
  L4_2 = A0_2._on_click_btn_right
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_avatar_buff_data
  L1_2(L2_2)
  L1_2 = A0_2.avatar_buff_data_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.avatar_scroll_view
    L2_2 = L1_2
    L1_2 = L1_2.SafeInitListView
    L3_2 = 0
    L4_2 = A0_2._on_scroll_avatar_change
    L5_2 = nil
    L6_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.avatar_scroll_view
    L2_2 = L1_2
    L1_2 = L1_2.SetListItemCount
    L3_2 = A0_2.avatar_buff_data_list
    L3_2 = #L3_2
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.buff_scroll_view
    L2_2 = L1_2
    L1_2 = L1_2.SafeInitListView
    L3_2 = 0
    L4_2 = A0_2._on_scroll_buff_row_change
    L5_2 = nil
    L6_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._on_added = L4_1
L4_1 = {}
L5_1 = L3_1.CharSpe
L6_1 = L3_1.CharAtk
L7_1 = L3_1.CharDef
L8_1 = L3_1.CharPassive
L4_1[1] = L5_1
L4_1[2] = L6_1
L4_1[3] = L7_1
L4_1[4] = L8_1
L5_1 = 1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2
  L1_2 = {}
  A0_2.avatar_buff_data_list = L1_2
  A0_2._selected_index = 0
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_ModuleManager
    L2_2 = L2_2.TeamModule
    L3_2 = L2_2
    L2_2 = L2_2.GetCurrentTeam
    L2_2 = L2_2(L3_2)
    L3_2 = 1
    L4_2 = L2_2.MemberDatas
    L4_2 = L4_2.Length
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L8_2 = L2_2
      L7_2 = L2_2.GetMemberData
      L9_2 = L6_2 - 1
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L8_2 = {}
        L9_2 = L1_2.TeamManager
        L10_2 = L9_2
        L9_2 = L9_2.GetMemberEntityByMemberData
        L11_2 = L7_2
        L9_2 = L9_2(L10_2, L11_2)
        if L9_2 ~= nil then
          L11_2 = L9_2
          L10_2 = L9_2.GetComponent
          L12_2 = typeof
          L13_2 = CS
          L13_2 = L13_2.RPG
          L13_2 = L13_2.GameCore
          L13_2 = L13_2.AdventureAbilityComponent
          L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L12_2(L13_2)
          L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L11_2 = L10_2.ModifierCount
          L12_2 = 0
          L13_2 = L11_2 - 1
          L14_2 = 1
          for L15_2 = L12_2, L13_2, L14_2 do
            L17_2 = L10_2
            L16_2 = L10_2.GetModifierByIndex
            L18_2 = L15_2
            L16_2 = L16_2(L17_2, L18_2)
            L17_2 = G
            L17_2 = L17_2.BuffUtils
            L17_2 = L17_2.GetMazeBuffData
            L18_2 = L16_2.BuffID
            L19_2 = L16_2.Level
            L17_2 = L17_2(L18_2, L19_2)
            if L17_2 then
              L18_2 = L17_2.IsDisplay
              if L18_2 then
                L18_2 = L16_2.CurrentLife
                if L18_2 then
                  L18_2 = L16_2.CurrentLife
                  if L18_2 < 0 then
                    L18_2 = pairs
                    L19_2 = L4_1
                    L18_2, L19_2, L20_2 = L18_2(L19_2)
                    for L21_2, L22_2 in L18_2, L19_2, L20_2 do
                      L23_2 = L17_2.MazeBuffPool
                      if L23_2 == L22_2 then
                        L8_2[L21_2] = L16_2
                      end
                    end
                end
                else
                  L18_2 = L5_1
                  L8_2[L18_2] = L16_2
                end
              end
            end
          end
          L12_2 = L9_2.OwnerWorldRef
          L12_2 = L12_2.EntityManagerRef
          L13_2 = L12_2
          L12_2 = L12_2.GetLightTeamEntity
          L12_2 = L12_2(L13_2)
          L14_2 = L12_2
          L13_2 = L12_2.GetComponent
          L15_2 = typeof
          L16_2 = CS
          L16_2 = L16_2.RPG
          L16_2 = L16_2.GameCore
          L16_2 = L16_2.AdventureAbilityComponent
          L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2 = L15_2(L16_2)
          L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
          L10_2 = L13_2
          L13_2 = L10_2.ModifierCount
          L14_2 = 0
          L15_2 = L13_2 - 1
          L16_2 = 1
          for L17_2 = L14_2, L15_2, L16_2 do
            L19_2 = L10_2
            L18_2 = L10_2.GetModifierByIndex
            L20_2 = L17_2
            L18_2 = L18_2(L19_2, L20_2)
            L19_2 = L18_2.Caster
            if L19_2 == L9_2 then
              L19_2 = G
              L19_2 = L19_2.BuffUtils
              L19_2 = L19_2.GetMazeBuffData
              L20_2 = L18_2.BuffID
              L21_2 = L18_2.Level
              L19_2 = L19_2(L20_2, L21_2)
              if L19_2 then
                L20_2 = L19_2.IsDisplay
                if L20_2 then
                  L20_2 = L18_2.CurrentLife
                  if L20_2 then
                    L20_2 = L18_2.CurrentLife
                    if L20_2 < 0 then
                      L20_2 = L18_2.CurrentLife
                      if L20_2 then
                        L20_2 = L18_2.CurrentLife
                        if L20_2 < 0 then
                          L20_2 = pairs
                          L21_2 = L4_1
                          L20_2, L21_2, L22_2 = L20_2(L21_2)
                          for L23_2, L24_2 in L20_2, L21_2, L22_2 do
                            L25_2 = L19_2.MazeBuffPool
                            if L25_2 == L24_2 then
                              L8_2[L23_2] = L18_2
                            end
                          end
                      end
                      else
                        L20_2 = L5_1
                        L8_2[L20_2] = L18_2
                      end
                    end
                  end
                end
              end
            end
          end
          L14_2 = {}
          L15_2 = L7_2.AvatarData
          L15_2 = L15_2.Row
          L15_2 = L15_2.AvatarName
          L14_2.avatar_name = L15_2
          L15_2 = L7_2.IsAlive
          L15_2 = not L15_2
          L14_2.is_dead = L15_2
          L15_2 = L7_2.AvatarData
          L15_2 = L15_2.AvatarSideIconPath
          L14_2.icon_path = L15_2
          L15_2 = {}
          L14_2.buff_list = L15_2
          L15_2 = L7_2.AvatarData
          L14_2.avatar_data = L15_2
          L15_2 = pairs
          L16_2 = L8_2
          L15_2, L16_2, L17_2 = L15_2(L16_2)
          for L18_2, L19_2 in L15_2, L16_2, L17_2 do
            if L19_2 then
              L20_2 = table
              L20_2 = L20_2.insert
              L21_2 = L14_2.buff_list
              L22_2 = L19_2
              L20_2(L21_2, L22_2)
            end
          end
          L15_2 = table
          L15_2 = L15_2.insert
          L16_2 = A0_2.avatar_buff_data_list
          L17_2 = L14_2
          L15_2(L16_2, L17_2)
        end
      end
    end
  end
  L2_2 = ipairs
  L3_2 = A0_2.avatar_buff_data_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.buff_list
    L7_2 = #L7_2
    if 0 < L7_2 then
      L7_2 = L5_2 - 1
      A0_2._selected_index = L7_2
      break
    end
  end
end
L0_1._init_avatar_buff_data = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = A0_2.avatar_buff_data_list
  L4_2 = A0_2._selected_index
  L4_2 = L4_2 + 1
  L3_2 = L3_2[L4_2]
  L4_2 = L3_2.buff_list
  L5_2 = A2_2 + 1
  L4_2 = L4_2[L5_2]
  L5_2 = nil
  L7_2 = A1_2
  L6_2 = A1_2.NewListViewItem
  L8_2 = 0
  L6_2 = L6_2(L7_2, L8_2)
  L5_2 = L6_2
  L6_2 = L5_2.UserObjectData
  if L6_2 == nil then
    L8_2 = A0_2
    L7_2 = A0_2.create_panel
    L9_2 = G
    L9_2 = L9_2.CommonBuffRowPanel
    L10_2 = G
    L10_2 = L10_2.CommonBuffRowPanelBinder
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    L6_2 = L7_2
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2.transform
    L7_2(L8_2, L9_2)
    L5_2.UserObjectData = L6_2
  end
  L8_2 = L6_2
  L7_2 = L6_2.setup_buff_data
  L9_2 = L4_2
  L10_2 = true
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = CS
  L7_2 = L7_2.UnityEngine
  L7_2 = L7_2.UI
  L7_2 = L7_2.LayoutRebuilder
  L7_2 = L7_2.ForceRebuildLayoutImmediate
  L8_2 = L6_2._binder
  L8_2 = L8_2.root
  L7_2(L8_2)
  return L5_2
end
L0_1._on_scroll_buff_row_change = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A0_2.avatar_buff_data_list
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
    L8_2 = L8_2.AvatarDialogHeadRow
    L9_2 = G
    L9_2 = L9_2.NewAvatarDialogHeadRowBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
    L7_2 = L5_2
    L6_2 = L5_2.bind
    L8_2 = L4_2.transform
    L6_2(L7_2, L8_2)
    L4_2.UserObjectData = L5_2
  end
  L6_2 = A0_2._selected_index
  L6_2 = L6_2 == A2_2
  L8_2 = L5_2
  L7_2 = L5_2.set_icon
  L9_2 = L3_2.icon_path
  L7_2(L8_2, L9_2)
  L8_2 = L5_2
  L7_2 = L5_2.set_dead
  L9_2 = L3_2.is_dead
  L7_2(L8_2, L9_2)
  L8_2 = L5_2
  L7_2 = L5_2.set_checked
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L8_2 = L5_2
  L7_2 = L5_2.set_callback
  L9_2 = A0_2
  L10_2 = A0_2._on_avatar_click
  L11_2 = A2_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
  L8_2 = L5_2
  L7_2 = L5_2.set_story_mark
  L9_2 = false
  L7_2(L8_2, L9_2)
  L8_2 = L5_2
  L7_2 = L5_2.set_assist_mark
  L9_2 = false
  L7_2(L8_2, L9_2)
  L8_2 = L5_2
  L7_2 = L5_2.set_trial_mark
  L9_2 = false
  L7_2(L8_2, L9_2)
  L7_2 = L3_2.avatar_data
  L8_2 = L7_2.IsPlotTrialPlayer
  if L8_2 then
    L9_2 = L5_2
    L8_2 = L5_2.set_story_mark
    L10_2 = true
    L8_2(L9_2, L10_2)
  else
    L8_2 = L7_2.IsAssistAvatar
    if L8_2 then
      L9_2 = L5_2
      L8_2 = L5_2.set_assist_mark
      L10_2 = true
      L8_2(L9_2, L10_2)
    else
      L8_2 = L7_2.IsTrialPlayer
      if L8_2 then
        L9_2 = L5_2
        L8_2 = L5_2.set_trial_mark
        L10_2 = true
        L8_2(L9_2, L10_2)
      end
    end
  end
  return L4_2
end
L0_1._on_scroll_avatar_change = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = A0_2._selected_index
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    L4_2 = L3_2
    L3_2 = L3_2.set_checked
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L3_2 = A1_2 or L3_2
  if not A1_2 then
    L3_2 = 0
  end
  A0_2._selected_index = L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.avatar_scroll_view
  L4_2 = L3_2
  L3_2 = L3_2.GetShownItemByItemIndex
  L5_2 = A0_2._selected_index
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.UserObjectData
    L5_2 = L4_2
    L4_2 = L4_2.set_checked
    L6_2 = true
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2.avatar_buff_data_list
  L5_2 = A0_2._selected_index
  L5_2 = L5_2 + 1
  L4_2 = L4_2[L5_2]
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_avatar_name
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.avatar_name
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.buff_scroll_view
  L6_2 = L5_2
  L5_2 = L5_2.SetListItemCount
  L7_2 = L4_2.buff_list
  L7_2 = #L7_2
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.buff_scroll_view
  L6_2 = L5_2
  L5_2 = L5_2.RefreshAllShownItem
  L5_2(L6_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_empty_avatar_buff_tip
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2.buff_list
  L7_2 = #L7_2
  L7_2 = L7_2 == 0
  L5_2(L6_2, L7_2)
end
L0_1._on_avatar_click = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 == nil then
    L2_2 = A0_2._on_avatar_click
    L3_2 = 0
    L2_2(L3_2)
    return
  end
  L2_2 = pairs
  L3_2 = A0_2.avatar_buff_data_list
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.avatar_data
    L8_2 = L7_2.ID
    if L8_2 == A1_2 then
      L9_2 = A0_2
      L8_2 = A0_2._on_avatar_click
      L10_2 = L5_2 - 1
      L8_2(L9_2, L10_2)
      return
    end
  end
end
L0_1.setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2.avatar_buff_data_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = L5_2.buff_list
    L6_2 = #L6_2
    if 0 < L6_2 then
      L7_2 = A0_2
      L6_2 = A0_2._on_avatar_click
      L8_2 = L4_2 - 1
      L6_2(L7_2, L8_2)
      return
    end
  end
end
L0_1.setup_first_buff_avatar = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L1_2 = A0_2.avatar_buff_data_list
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_avatar_buff_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty_avatar_buff_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_empty_avatar_buff_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_TeamBuffDetailDialog_NoAvatarBuff"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_avatar_click
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.avatar_scroll_view
  L3_2 = L2_2
  L2_2 = L2_2.SetSelectIndex
  L4_2 = 0
  L2_2(L3_2, L4_2)
end
L0_1._on_select = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L6_1
return L0_1
