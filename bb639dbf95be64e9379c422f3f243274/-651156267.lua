local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
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
L3_1 = 1
L4_1 = 2
L5_1 = 3
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2.avatar_buff_data_list
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  return L1_2
end
L0_1.is_show_buff = L6_1
function L6_1(A0_2)
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
L0_1._on_click_btn_left = L6_1
function L6_1(A0_2)
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
L0_1._on_click_btn_right = L6_1
function L6_1(A0_2)
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
L0_1._on_added = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
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
        L8_2 = nil
        L9_2 = nil
        L10_2 = nil
        L11_2 = L1_2.TeamManager
        L12_2 = L11_2
        L11_2 = L11_2.GetMemberEntityByMemberData
        L13_2 = L7_2
        L11_2 = L11_2(L12_2, L13_2)
        if L11_2 ~= nil then
          L13_2 = L11_2
          L12_2 = L11_2.GetComponent
          L14_2 = typeof
          L15_2 = CS
          L15_2 = L15_2.RPG
          L15_2 = L15_2.GameCore
          L15_2 = L15_2.AdventureAbilityComponent
          L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L14_2(L15_2)
          L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
          L13_2 = L12_2.ModifierCount
          L14_2 = 0
          L15_2 = L13_2 - 1
          L16_2 = 1
          for L17_2 = L14_2, L15_2, L16_2 do
            L19_2 = L12_2
            L18_2 = L12_2.GetModifierByIndex
            L20_2 = L17_2
            L18_2 = L18_2(L19_2, L20_2)
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
                    L20_2 = L19_2.MazeBuffPool
                    L21_2 = L3_1
                    if L20_2 == L21_2 then
                      L8_2 = L18_2
                    else
                      L20_2 = L19_2.MazeBuffPool
                      L21_2 = L4_1
                      if L20_2 == L21_2 then
                        L9_2 = L18_2
                      else
                        L20_2 = L19_2.MazeBuffPool
                        L21_2 = L5_1
                        if L20_2 == L21_2 then
                          L10_2 = L18_2
                        end
                      end
                    end
                end
                else
                  L10_2 = L18_2
                end
              end
            end
          end
          L14_2 = L11_2.OwnerWorldRef
          L14_2 = L14_2.EntityManagerRef
          L15_2 = L14_2
          L14_2 = L14_2.GetLightTeamEntity
          L14_2 = L14_2(L15_2)
          L16_2 = L14_2
          L15_2 = L14_2.GetComponent
          L17_2 = typeof
          L18_2 = CS
          L18_2 = L18_2.RPG
          L18_2 = L18_2.GameCore
          L18_2 = L18_2.AdventureAbilityComponent
          L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L17_2(L18_2)
          L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
          L12_2 = L15_2
          L15_2 = L12_2.ModifierCount
          L16_2 = 0
          L17_2 = L15_2 - 1
          L18_2 = 1
          for L19_2 = L16_2, L17_2, L18_2 do
            L21_2 = L12_2
            L20_2 = L12_2.GetModifierByIndex
            L22_2 = L19_2
            L20_2 = L20_2(L21_2, L22_2)
            L21_2 = L20_2.Caster
            if L21_2 == L11_2 then
              L21_2 = G
              L21_2 = L21_2.BuffUtils
              L21_2 = L21_2.GetMazeBuffData
              L22_2 = L20_2.BuffID
              L23_2 = L20_2.Level
              L21_2 = L21_2(L22_2, L23_2)
              if L21_2 then
                L22_2 = L21_2.IsDisplay
                if L22_2 then
                  L22_2 = L20_2.CurrentLife
                  if L22_2 then
                    L22_2 = L20_2.CurrentLife
                    if L22_2 < 0 then
                      L22_2 = L21_2.MazeBuffPool
                      L23_2 = A0_2._atk_buff_tag
                      if L22_2 == L23_2 then
                        L8_2 = L20_2
                      else
                        L22_2 = L21_2.MazeBuffPool
                        L23_2 = A0_2._def_buff_tag
                        if L22_2 == L23_2 then
                          L9_2 = L20_2
                        else
                          L22_2 = L21_2.MazeBuffPool
                          L23_2 = A0_2._special_buff_tag
                          if L22_2 == L23_2 then
                            L10_2 = L20_2
                          end
                        end
                      end
                  end
                  else
                    L10_2 = L20_2
                  end
                end
              end
            end
          end
          L16_2 = {}
          L17_2 = L7_2.AvatarData
          L17_2 = L17_2.Row
          L17_2 = L17_2.AvatarName
          L16_2.avatar_name = L17_2
          L17_2 = L7_2.IsAlive
          L17_2 = not L17_2
          L16_2.is_dead = L17_2
          L17_2 = L7_2.AvatarData
          L17_2 = L17_2.AvatarSideIconPath
          L16_2.icon_path = L17_2
          L17_2 = {}
          L16_2.buff_list = L17_2
          L17_2 = L7_2.AvatarData
          L16_2.avatar_data = L17_2
          if L8_2 or L9_2 or L10_2 then
            if L10_2 then
              L17_2 = table
              L17_2 = L17_2.insert
              L18_2 = L16_2.buff_list
              L19_2 = L10_2
              L17_2(L18_2, L19_2)
            end
            if L8_2 then
              L17_2 = table
              L17_2 = L17_2.insert
              L18_2 = L16_2.buff_list
              L19_2 = L8_2
              L17_2(L18_2, L19_2)
            end
            if L9_2 then
              L17_2 = table
              L17_2 = L17_2.insert
              L18_2 = L16_2.buff_list
              L19_2 = L9_2
              L17_2(L18_2, L19_2)
            end
          end
          L17_2 = table
          L17_2 = L17_2.insert
          L18_2 = A0_2.avatar_buff_data_list
          L19_2 = L16_2
          L17_2(L18_2, L19_2)
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
