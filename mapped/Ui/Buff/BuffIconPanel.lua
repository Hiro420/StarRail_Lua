local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
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
L3_1 = {}
L4_1 = G
L4_1 = L4_1.BuffUtils
L4_1 = L4_1.BuffPoolType
L4_1 = L4_1.ItemAtk
L5_1 = G
L5_1 = L5_1.BuffUtils
L5_1 = L5_1.BuffPoolType
L5_1 = L5_1.ItemDef
L6_1 = G
L6_1 = L6_1.BuffUtils
L6_1 = L6_1.BuffPoolType
L6_1 = L6_1.CharPassive
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
function L4_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._current_normal_buff = L1_2
  A0_2._special_buff_tag = 3
  A0_2._loaded_prefab_num = 0
end
L0_1.ctor = L4_1
function L4_1(A0_2)
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
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_special_buff
  L3_2 = nil
  L1_2(L2_2, L3_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2, A1_2, A2_2)
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
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_GamePhaseManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentPhase
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = nil
  if L1_2 ~= nil then
    L4_2 = L1_2.TeamManager
    L5_2 = L4_2
    L4_2 = L4_2.GetMemberEntityByMemberData
    L6_2 = A0_2._avatar_data
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 == nil then
      return
    end
    L6_2 = L4_2
    L5_2 = L4_2.GetComponent
    L7_2 = typeof
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.GameCore
    L8_2 = L8_2.AdventureAbilityComponent
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L7_2(L8_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    if L5_2 == nil then
      return
    end
    L6_2 = L5_2.ModifierCount
    L7_2 = 0
    L8_2 = L6_2 - 1
    L9_2 = 1
    for L10_2 = L7_2, L8_2, L9_2 do
      L12_2 = L5_2
      L11_2 = L5_2.GetModifierByIndex
      L13_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2)
      L12_2 = G
      L12_2 = L12_2.BuffUtils
      L12_2 = L12_2.GetMazeBuffData
      L13_2 = L11_2.BuffID
      L14_2 = L11_2.Level
      L12_2 = L12_2(L13_2, L14_2)
      if L11_2 and L12_2 then
        L13_2 = L12_2.IsDisplay
        if L13_2 then
          L13_2 = L11_2.CurrentLife
          if L13_2 then
            L13_2 = L11_2.CurrentLife
            if L13_2 < 0 then
              L13_2 = L12_2.MazeBuffPool
              L14_2 = A0_2._special_buff_tag
              if L13_2 == L14_2 then
                L3_2 = L11_2
              else
                L13_2 = pairs
                L14_2 = L3_1
                L13_2, L14_2, L15_2 = L13_2(L14_2)
                for L16_2, L17_2 in L13_2, L14_2, L15_2 do
                  L18_2 = L12_2.MazeBuffPool
                  if L18_2 == L17_2 then
                    L2_2[L16_2] = L11_2
                  end
                end
              end
          end
          else
            L3_2 = L11_2
          end
        end
      end
    end
    L7_2 = L4_2.OwnerWorldRef
    L7_2 = L7_2.EntityManagerRef
    L8_2 = L7_2
    L7_2 = L7_2.GetLightTeamEntity
    L7_2 = L7_2(L8_2)
    if L7_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.GetComponent
      L10_2 = typeof
      L11_2 = CS
      L11_2 = L11_2.RPG
      L11_2 = L11_2.GameCore
      L11_2 = L11_2.AdventureAbilityComponent
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L10_2(L11_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
      L5_2 = L8_2
      if L5_2 ~= nil then
        L8_2 = L5_2.ModifierCount
        L9_2 = 0
        L10_2 = L8_2 - 1
        L11_2 = 1
        for L12_2 = L9_2, L10_2, L11_2 do
          L14_2 = L5_2
          L13_2 = L5_2.GetModifierByIndex
          L15_2 = L12_2
          L13_2 = L13_2(L14_2, L15_2)
          if L13_2 then
            L14_2 = G
            L14_2 = L14_2.BuffUtils
            L14_2 = L14_2.GetMazeBuffData
            L15_2 = L13_2.BuffID
            L16_2 = L13_2.Level
            L14_2 = L14_2(L15_2, L16_2)
            if L14_2 then
              L15_2 = L14_2.IsDisplay
              if L15_2 then
                L15_2 = L13_2.CurrentLife
                if L15_2 then
                  L15_2 = L13_2.CurrentLife
                  if L15_2 < 0 then
                    L15_2 = L14_2.MazeBuffPool
                    L16_2 = A0_2._special_buff_tag
                    if L15_2 == L16_2 then
                      L3_2 = L13_2
                    else
                      L15_2 = pairs
                      L16_2 = L3_1
                      L15_2, L16_2, L17_2 = L15_2(L16_2)
                      for L18_2, L19_2 in L15_2, L16_2, L17_2 do
                        L20_2 = L14_2.MazeBuffPool
                        if L20_2 == L19_2 then
                          L2_2[L18_2] = L13_2
                        end
                      end
                    end
                end
                else
                  L15_2 = L13_2.Caster
                  if L15_2 == L4_2 then
                    L3_2 = L13_2
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L5_2 = A0_2
  L4_2 = A0_2._setup_normal_buff
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_special_buff
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.LayoutRebuilder
  L4_2 = L4_2.ForceRebuildLayoutImmediate
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_special_buff_panel
  L4_2(L5_2)
end
L0_1._setup_buff_data = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = 1
  L3_2 = L3_1
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = nil
    L7_2 = A1_2[L5_2]
    if L7_2 ~= nil then
      L7_2 = A1_2[L5_2]
      L8_2 = A0_2._current_normal_buff
      L8_2 = L8_2[L5_2]
      if L7_2 ~= L8_2 then
        L7_2 = A0_2._current_normal_buff
        L7_2 = L7_2[L5_2]
        if L7_2 == nil then
          L6_2 = L1_1
        else
          L6_2 = L2_1
        end
      else
        L7_2 = A0_2._buff_evt
        if L7_2 then
          L7_2 = A1_2[L5_2]
          L7_2 = L7_2.BuffID
          L8_2 = A0_2._buff_evt
          L9_2 = L8_2
          L8_2 = L8_2.GetBuffID
          L8_2 = L8_2(L9_2)
          if L7_2 == L8_2 then
            L6_2 = L2_1
          end
        end
      end
    end
    L7_2 = A0_2._current_normal_buff
    L8_2 = A1_2[L5_2]
    L7_2[L5_2] = L8_2
    L7_2 = A0_2._buff_panels
    L7_2 = L7_2[L5_2]
    L8_2 = L7_2
    L7_2 = L7_2.setup_view
    L9_2 = A0_2._current_normal_buff
    L9_2 = L9_2[L5_2]
    L10_2 = L6_2
    L7_2(L8_2, L9_2, L10_2)
  end
end
L0_1._setup_normal_buff = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._setup_special_buff = L4_1
function L4_1(A0_2)
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
L0_1._set_buff_btn_status = L4_1
function L4_1(A0_2)
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
L0_1._contain_display_buff = L4_1
function L4_1(A0_2)
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
L0_1._on_tick = L4_1
function L4_1(A0_2, A1_2)
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
L0_1._on_owner_active_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  A0_2._buff_panels = L1_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.instantiate_object
    L7_2 = A0_2._binder
    L7_2 = L7_2.prefab_loader
    L7_2 = L7_2.Prefab
    L8_2 = A0_2._binder
    L8_2 = L8_2.prefab_loader
    L8_2 = L8_2.transform
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.BuffIconNode
    L9_2 = G
    L9_2 = L9_2.BuffIconNodeBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L8_2 = L5_2
    L7_2 = L5_2.SafeSetActive
    L9_2 = false
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._buff_panels
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._create_buff_display_panel = L4_1
return L0_1
