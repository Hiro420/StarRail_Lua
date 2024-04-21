local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Bingo.ActivityMonopolyMiniGameCookieInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.ActivityMonopoly.MiniGamePage.Bingo.ActivityMonopolyMiniGameCookieInfoPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = "MonopolyCookieRevert"
L2_1 = "MonopolyCookieRevert_Hint"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ActivityMonopolyMiniGameCookieCInfoPanel"
L5_1 = G
L5_1 = L5_1.ActivityMonopolyMiniGameCookieInfoPanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._index = A1_2
  A0_2._resource_id = A2_2
  L4_2 = L0_1.GameInfo
  L5_2 = L4_2
  L4_2 = L4_2.TryGetMonopolyGameResourceData
  L6_2 = A0_2._resource_id
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._resource_data = L4_2
  L4_2 = L0_1.GameInfo
  L4_2 = L4_2.BingoData
  L4_2 = L4_2.ResourceIDList
  L5_2 = A0_2._index
  L5_2 = L5_2 - 1
  L4_2 = L4_2[L5_2]
  A0_2._value = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_cookie_state
  L6_2 = false
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_tip_state
  L6_2 = false
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_front_text
  L4_2(L5_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim_cookie
  L5_2 = L4_2
  L4_2 = L4_2.GetClip
  L6_2 = L1_1
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.length
  L6_2 = A0_2
  L5_2 = A0_2._add_count_down_timer
  L7_2 = A0_2._on_revert_anim_finish
  L8_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  A0_2._revert_timer = L5_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.anim_cookie
  L6_2 = L5_2
  L5_2 = L5_2.GetClip
  L7_2 = L2_1
  L5_2 = L5_2(L6_2, L7_2)
  L5_2 = L5_2.length
  L7_2 = A0_2
  L6_2 = A0_2._add_count_down_timer
  L8_2 = A0_2._on_revert_anim_finish
  L9_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  A0_2._hint_timer = L6_2
end
L3_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._play_cookie_revert_anim
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L3_1._on_cookie_revert = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_cookie
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._play_cookie_revert_anim
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L3_1._on_final_cookie_revert = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.GameInfo
  L1_2 = L1_2.BingoData
  L2_2 = L1_2
  L1_2 = L1_2.GetBingoCBubbleTextID
  L3_2 = A0_2._value
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_cookie_hint_text
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L3_1._on_cookie_hint_active = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_front
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityMonopoly_Game_RaiseValue"
  L4_2 = A0_2._value
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._setup_front_text = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._revert_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = A0_2._hint_timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._flip_final_cookie_finish_callback
  L3_2 = A0_2._flip_final_cookie_finish_callback_handler
  L1_2(L2_2, L3_2)
end
L3_1._on_revert_anim_finish = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._value
  if L2_2 <= 5 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_cookie
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
    if A1_2 then
      L2_2 = A0_2._revert_timer
      L3_2 = L2_2
      L2_2 = L2_2.reset
      L2_2(L3_2)
      L2_2 = A0_2._revert_timer
      L3_2 = L2_2
      L2_2 = L2_2.start
      L2_2(L3_2)
    end
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_cookie
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
    if A1_2 then
      L2_2 = A0_2._hint_timer
      L3_2 = L2_2
      L2_2 = L2_2.reset
      L2_2(L3_2)
      L2_2 = A0_2._hint_timer
      L3_2 = L2_2
      L2_2 = L2_2.start
      L2_2(L3_2)
    end
  end
end
L3_1._play_cookie_revert_anim = L4_1
return L3_1
