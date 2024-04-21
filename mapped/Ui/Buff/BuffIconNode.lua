local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Buff.BuffIconNodeBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.BuffArrowPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.BuffArrowPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Utilities.BuffUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "BuffIconNode"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.ComponentExtensions
L2_1 = "BattleUI_Ani_BuffIcon_Twinkle"
L3_1 = "BattleUI_Ani_BuffIcon_FadeIn"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_buff_icon_progress
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_buff_num
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_buff_time
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._add_tick
  L1_2(L2_2)
  A0_2._current_buff = nil
  A0_2._warning_anim_running = false
  A0_2._anim_name = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_buff_icon_progress
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.img_buff_icon_progress
    L1_2.fillAmount = 1
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_arrow
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.BuffArrowPanel
    L4_2 = G
    L4_2 = L4_2.BuffArrowPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2._buff_arrow_panel = L1_2
    L1_2 = A0_2._buff_arrow_panel
    L2_2 = L1_2
    L1_2 = L1_2.bind
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_arrow
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_buff_icon_mask
  if L4_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_buff_icon_mask
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.animation_root
  L5_2 = L4_2
  L4_2 = L4_2.Stop
  L6_2 = L2_1
  L4_2(L5_2, L6_2)
  A0_2._warning_anim_running = false
  if A1_2 then
    L4_2 = A1_2.BuffID
    if L4_2 then
      L4_2 = A1_2.State
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.ModifierState
      L5_2 = L5_2.Alive
      if L4_2 == L5_2 then
        L4_2 = G
        L4_2 = L4_2.BuffUtils
        L4_2 = L4_2.GetMazeBuffData
        L5_2 = A1_2.BuffID
        L6_2 = A1_2.Level
        L4_2 = L4_2(L5_2, L6_2)
        if L4_2 then
          L5_2 = L4_2.IsDisplay
          if L5_2 then
            L6_2 = A0_2
            L5_2 = A0_2.is_active
            L5_2 = L5_2(L6_2)
            if L5_2 then
              L6_2 = A0_2
              L5_2 = A0_2.set_light_weight_active
              L7_2 = true
              L5_2(L6_2, L7_2)
            else
              L6_2 = A0_2
              L5_2 = A0_2.safe_set_active
              L7_2 = true
              L5_2(L6_2, L7_2)
            end
            L6_2 = A0_2
            L5_2 = A0_2.play_anim
            L7_2 = A2_2
            L5_2(L6_2, L7_2)
            L5_2 = A0_2._buff_arrow_panel
            if L5_2 then
              L5_2 = A0_2._buff_arrow_panel
              L6_2 = L5_2
              L5_2 = L5_2.setup_view
              L7_2 = L4_2.MazeBuffIconType
              L5_2(L6_2, L7_2)
            end
            L5_2 = A0_2._binder
            L5_2 = L5_2.txt_buff_num
            if L5_2 ~= nil then
              L5_2 = L4_2.MazeBuffPool
              L6_2 = G
              L6_2 = L6_2.BuffUtils
              L6_2 = L6_2.BuffPoolType
              L6_2 = L6_2.CharPassive
              if L5_2 == L6_2 then
                L5_2 = A0_2._binder
                L5_2 = L5_2.txt_buff_num
                L6_2 = L5_2
                L5_2 = L5_2.SafeSetText
                L7_2 = A1_2.Level
                L5_2(L6_2, L7_2)
              end
              L5_2 = A0_2._binder
              L5_2 = L5_2.txt_buff_num
              L6_2 = L5_2
              L5_2 = L5_2.SafeSetActive
              L7_2 = L4_2.MazeBuffPool
              L8_2 = G
              L8_2 = L8_2.BuffUtils
              L8_2 = L8_2.BuffPoolType
              L8_2 = L8_2.CharPassive
              L7_2 = L7_2 == L8_2
              L5_2(L6_2, L7_2)
            end
            L5_2 = A0_2._binder
            L5_2 = L5_2.canvas_root
            L5_2.alpha = 1
            L6_2 = A0_2
            L5_2 = A0_2._async_load_sprite_to
            L7_2 = A0_2._binder
            L7_2 = L7_2.img_buff_icon
            L8_2 = L4_2.BuffIcon
            L5_2(L6_2, L7_2, L8_2)
            L5_2 = A0_2._binder
            L5_2 = L5_2.img_buff_icon_progress
            if L5_2 ~= nil then
              L6_2 = A0_2
              L5_2 = A0_2._async_load_sprite_to
              L7_2 = A0_2._binder
              L7_2 = L7_2.img_buff_icon_progress
              L8_2 = L4_2.BuffIcon
              L5_2(L6_2, L7_2, L8_2)
            else
              L6_2 = A0_2
              L5_2 = A0_2._async_load_sprite_to
              L7_2 = A0_2._binder
              L7_2 = L7_2.img_buff_icon_mask
              L8_2 = L4_2.BuffIcon
              L5_2(L6_2, L7_2, L8_2)
              L6_2 = A0_2
              L5_2 = A0_2._async_load_sprite_to
              L7_2 = A0_2._binder
              L7_2 = L7_2.img_buff_icon_glow
              L8_2 = L4_2.BuffIcon
              L5_2(L6_2, L7_2, L8_2)
            end
            if A3_2 then
              L6_2 = A0_2
              L5_2 = A0_2._remove_tick
              L5_2(L6_2)
            else
              L5_2 = A1_2.CurrentLife
              if L5_2 then
                L5_2 = A1_2.CurrentLife
                if 0 < L5_2 then
                  L5_2 = A0_2._binder
                  L5_2 = L5_2.img_buff_icon_mask
                  if L5_2 ~= nil then
                    L5_2 = A0_2._binder
                    L5_2 = L5_2.img_buff_icon_mask
                    L6_2 = L5_2
                    L5_2 = L5_2.SafeSetActive
                    L7_2 = true
                    L5_2(L6_2, L7_2)
                  end
                  A0_2._current_buff = A1_2
              end
              else
                L6_2 = A0_2
                L5_2 = A0_2._remove_tick
                L5_2(L6_2)
              end
            end
        end
        else
          L6_2 = A0_2
          L5_2 = A0_2.set_light_weight_active
          L7_2 = false
          L5_2(L6_2, L7_2)
          A0_2._current_buff = nil
        end
    end
  end
  else
    L5_2 = A0_2
    L4_2 = A0_2.set_light_weight_active
    L6_2 = false
    L4_2(L5_2, L6_2)
    A0_2._current_buff = nil
  end
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._current_buff
  if L1_2 ~= nil then
    L1_2 = A0_2._current_buff
    L1_2 = L1_2.CurrentLife
    if 0 < L1_2 then
      L1_2 = A0_2._current_buff
      L1_2 = L1_2.CurrentLife
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.GameCoreConfigManager
      L2_2 = L2_2.MazeConfig
      L2_2 = L2_2.BuffUICountDown
      if L1_2 < L2_2 then
        L1_2 = A0_2._warning_anim_running
        if not L1_2 then
          L1_2 = A0_2._binder
          L1_2 = L1_2.animation_root
          L2_2 = L1_2
          L1_2 = L1_2.Play
          L3_2 = L2_1
          L1_2(L2_2, L3_2)
          A0_2._warning_anim_running = true
        end
      end
    end
  end
end
L0_1._on_tick = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animation_root
    L3_2 = L2_2
    L2_2 = L2_2.Stop
    L2_2(L3_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.animation_root
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._anim_name
    if L2_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.animation_root
      L3_2 = L2_2
      L2_2 = L2_2.IsPlaying
      L4_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.stop_anim
        L2_2(L3_2)
      end
    end
  end
end
L0_1.play_anim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._anim_name
  if L1_2 ~= nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.UIAnimationUtils
    L1_2 = L1_2.PlayFromEnd
    L2_2 = A0_2._binder
    L2_2 = L2_2.animation_root
    L3_2 = A0_2._anim_name
    L1_2(L2_2, L3_2)
  end
end
L0_1.stop_anim = L4_1
function L4_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L4_1
return L0_1
