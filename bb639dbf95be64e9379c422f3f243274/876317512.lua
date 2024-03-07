local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Buff.BuffIconPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Buff.BuffIconNode"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Buff.BuffIconNodeBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.BuffUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BuffIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "BattleUI_Ani_BuffIcon_FadeIn"
L2_1 = "BattleUI_Ani_BuffIcon_FadeIn"
function L3_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.BuffUtils
  L1_2 = L1_2.BuffPoolType
  L1_2 = L1_2.ItemAtk
  A0_2._atk_buff_tag = L1_2
  L1_2 = G
  L1_2 = L1_2.BuffUtils
  L1_2 = L1_2.BuffPoolType
  L1_2 = L1_2.ItemDef
  A0_2._def_buff_tag = L1_2
  A0_2._special_buff_tag = 3
  A0_2._current_atk_data = nil
  A0_2._current_def_data = nil
  A0_2._loaded_prefab_num = 0
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  A0_2._buff_current_data = nil
  A0_2._special_buff_current_data = nil
  A0_2._special_buff_remaing_time = 0
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._create_buff_display_panel
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_special_buff
  L3_2 = nil
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._avatar_data = A1_2
  A0_2._buff_evt = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_buff_data
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._set_buff_btn_status
  L3_2(L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = nil
  L4_2 = nil
  L5_2 = nil
  if L1_2 ~= nil then
    L6_2 = L1_2.TeamManager
    L7_2 = L6_2
    L6_2 = L6_2.GetMemberEntityByMemberData
    L8_2 = A0_2._avatar_data
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 == nil then
      return
    end
    L8_2 = L6_2
    L7_2 = L6_2.GetComponent
    L9_2 = typeof
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.AdventureAbilityComponent
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L9_2(L10_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    if L7_2 == nil then
      return
    end
    L8_2 = L7_2.ModifierCount
    L9_2 = 0
    L10_2 = L8_2 - 1
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L14_2 = L7_2
      L13_2 = L7_2.GetModifierByIndex
      L15_2 = L12_2
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = G
      L14_2 = L14_2.BuffUtils
      L14_2 = L14_2.GetMazeBuffData
      L15_2 = L13_2.BuffID
      L16_2 = L13_2.Level
      L14_2 = L14_2(L15_2, L16_2)
      if L13_2 and L14_2 then
        L15_2 = L14_2.IsDisplay
        if L15_2 then
          L15_2 = L13_2.CurrentLife
          if L15_2 then
            L15_2 = L13_2.CurrentLife
            if L15_2 < 0 then
              L15_2 = L14_2.MazeBuffPool
              L16_2 = A0_2._atk_buff_tag
              if L15_2 == L16_2 then
                L3_2 = L13_2
              else
                L15_2 = L14_2.MazeBuffPool
                L16_2 = A0_2._def_buff_tag
                if L15_2 == L16_2 then
                  L4_2 = L13_2
                else
                  L15_2 = L14_2.MazeBuffPool
                  L16_2 = A0_2._special_buff_tag
                  if L15_2 == L16_2 then
                    L5_2 = L13_2
                  end
                end
              end
          end
          else
            L5_2 = L13_2
          end
        end
      end
    end
    L9_2 = L6_2.OwnerWorldRef
    L9_2 = L9_2.EntityManagerRef
    L10_2 = L9_2
    L9_2 = L9_2.GetLightTeamEntity
    L9_2 = L9_2(L10_2)
    if L9_2 ~= nil then
      L11_2 = L9_2
      L10_2 = L9_2.GetComponent
      L12_2 = typeof
      L13_2 = CS
      L13_2 = L13_2.RPG
      L13_2 = L13_2.GameCore
      L13_2 = L13_2.AdventureAbilityComponent
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2(L13_2)
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L7_2 = L10_2
      if L7_2 ~= nil then
        L10_2 = L7_2.ModifierCount
        L11_2 = 0
        L12_2 = L10_2 - 1
        L13_2 = 1
        for L14_2 = L11_2, L12_2, L13_2 do
          L16_2 = L7_2
          L15_2 = L7_2.GetModifierByIndex
          L17_2 = L14_2
          L15_2 = L15_2(L16_2, L17_2)
          if L15_2 then
            L16_2 = G
            L16_2 = L16_2.BuffUtils
            L16_2 = L16_2.GetMazeBuffData
            L17_2 = L15_2.BuffID
            L18_2 = L15_2.Level
            L16_2 = L16_2(L17_2, L18_2)
            if L16_2 then
              L17_2 = L16_2.IsDisplay
              if L17_2 then
                L17_2 = L15_2.CurrentLife
                if L17_2 then
                  L17_2 = L15_2.CurrentLife
                  if L17_2 < 0 then
                    L17_2 = L16_2.MazeBuffPool
                    L18_2 = A0_2._atk_buff_tag
                    if L17_2 == L18_2 then
                      L3_2 = L15_2
                    else
                      L17_2 = L16_2.MazeBuffPool
                      L18_2 = A0_2._def_buff_tag
                      if L17_2 == L18_2 then
                        L4_2 = L15_2
                      else
                        L17_2 = L16_2.MazeBuffPool
                        L18_2 = A0_2._special_buff_tag
                        if L17_2 == L18_2 then
                          L17_2 = L15_2.Caster
                          if L17_2 == L6_2 then
                            L5_2 = L15_2
                          end
                        end
                      end
                    end
                end
                else
                  L17_2 = L15_2.Caster
                  if L17_2 == L6_2 then
                    L5_2 = L15_2
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L7_2 = A0_2
  L6_2 = A0_2._setup_normal_buff
  L8_2 = L3_2
  L9_2 = L4_2
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2._setup_special_buff
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.UnityEngine
  L6_2 = L6_2.UI
  L6_2 = L6_2.LayoutRebuilder
  L6_2 = L6_2.ForceRebuildLayoutImmediate
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_special_buff_panel
  L6_2(L7_2)
end
L0_1._setup_buff_data = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = nil
  L4_2 = 0
  if A1_2 ~= nil then
    L5_2 = A0_2._current_atk_data
    if A1_2 ~= L5_2 then
      L5_2 = A0_2._current_atk_data
      if L5_2 == nil then
        L3_2 = L1_1
      else
        L3_2 = L2_1
      end
      A0_2._current_atk_data = A1_2
    else
      L5_2 = A0_2._buff_evt
      if L5_2 then
        L5_2 = A1_2.BuffID
        L6_2 = A0_2._buff_evt
        L7_2 = L6_2
        L6_2 = L6_2.GetBuffID
        L6_2 = L6_2(L7_2)
        if L5_2 == L6_2 then
          L3_2 = L2_1
        end
      end
    end
  else
    A0_2._current_atk_data = A1_2
  end
  L5_2 = A0_2._buff_panels
  L5_2 = L5_2[1]
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = A0_2._current_atk_data
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
  L3_2 = nil
  if A2_2 ~= nil then
    L5_2 = A0_2._current_def_data
    if A2_2 ~= L5_2 then
      L5_2 = A0_2._current_def_data
      if L5_2 == nil then
        L3_2 = L1_1
      else
        L3_2 = L2_1
      end
      A0_2._current_def_data = A2_2
    else
      L5_2 = A0_2._buff_evt
      if L5_2 then
        L5_2 = A2_2.BuffID
        L6_2 = A0_2._buff_evt
        L7_2 = L6_2
        L6_2 = L6_2.GetBuffID
        L6_2 = L6_2(L7_2)
        if L5_2 == L6_2 then
          L3_2 = L2_1
        end
      end
    end
  else
    A0_2._current_def_data = A2_2
  end
  L5_2 = A0_2._buff_panels
  L5_2 = L5_2[2]
  L6_2 = L5_2
  L5_2 = L5_2.setup_view
  L7_2 = A0_2._current_def_data
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._setup_normal_buff = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = nil
  if A1_2 ~= nil then
    L3_2 = A0_2._special_buff_current_data
    if A1_2 ~= L3_2 then
      L2_2 = L1_1
      A0_2._special_buff_current_data = A1_2
    else
      L3_2 = A0_2._buff_evt
      if L3_2 ~= nil then
        L3_2 = A0_2._buff_evt
        L4_2 = L3_2
        L3_2 = L3_2.GetBuffID
        L3_2 = L3_2(L4_2)
        L4_2 = A0_2._special_buff_current_data
        L4_2 = L4_2.BuffID
        if L3_2 == L4_2 then
          L2_2 = L2_1
        end
      end
    end
    L3_2 = A0_2._special_buff_current_data
    L3_2 = L3_2.CurrentLife
    A0_2._special_buff_remaing_time = L3_2
  else
    A0_2._special_buff_current_data = A1_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.special_buff_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A0_2._special_buff_current_data
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_special_buff = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._contain_display_buff
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_buff_btn_status = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._buff_current_data
  if L1_2 ~= nil then
    L1_2 = A0_2._buff_current_data
    L2_2 = G
    L2_2 = L2_2.BuffUtils
    L2_2 = L2_2.GetMazeBuffData
    L3_2 = L1_2.BuffID
    L4_2 = L1_2.Level
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = L2_2.IsDisplay
      if L3_2 then
        L3_2 = true
        return L3_2
      end
    end
  end
  L1_2 = false
  return L1_2
end
L0_1._contain_display_buff = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._special_buff_current_data
  if L1_2 ~= nil then
    L1_2 = A0_2._special_buff_current_data
    L1_2 = L1_2.CurrentLife
    if 0 < L1_2 then
      L1_2 = A0_2._special_buff_current_data
      L1_2 = L1_2.CurrentLife
      A0_2._special_buff_remaing_time = L1_2
    end
  end
end
L0_1._on_tick = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == false then
    L2_2 = A0_2._binder
    L2_2 = L2_2.buff_panel
    L3_2 = L2_2
    L2_2 = L2_2.stop_anim
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.special_buff_panel
    L3_2 = L2_2
    L2_2 = L2_2.stop_anim
    L2_2(L3_2)
  end
end
L0_1._on_owner_active_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  A0_2._buff_panels = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_loader
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.prefab_loader
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.instantiate_object
  L4_2 = A0_2._binder
  L4_2 = L4_2.prefab_loader
  L4_2 = L4_2.Prefab
  L5_2 = A0_2._binder
  L5_2 = L5_2.prefab_loader
  L5_2 = L5_2.transform
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.create_panel
  L5_2 = G
  L5_2 = L5_2.BuffIconNode
  L6_2 = G
  L6_2 = L6_2.BuffIconNodeBinder
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.bind
  L6_2 = L1_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2.create_panel
  L6_2 = G
  L6_2 = L6_2.BuffIconNode
  L7_2 = G
  L7_2 = L7_2.BuffIconNodeBinder
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
  L6_2 = L1_2
  L5_2 = L1_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L6_2 = L2_2
  L5_2 = L2_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = A0_2._buff_panels
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = A0_2._buff_panels
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L0_1._create_buff_display_panel = L3_1
return L0_1
