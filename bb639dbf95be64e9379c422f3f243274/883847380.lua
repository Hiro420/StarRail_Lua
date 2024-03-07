local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
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
L2_1 = "MonopolyCookieRevert_Highlight"
L3_1 = "MonopolyCookieRevert_Hint"
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "ActivityMonopolyMiniGameCookieAInfoPanel"
L6_1 = G
L6_1 = L6_1.ActivityMonopolyMiniGameCookieInfoPanel
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._index = A1_2
  A0_2._resource_id = A2_2
  L3_2 = L0_1.GameInfo
  L4_2 = L3_2
  L3_2 = L3_2.TryGetMonopolyGameResourceData
  L5_2 = A0_2._resource_id
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._resource_data = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_cookie_state
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_tip_state
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_front_img
  L3_2(L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_cookie
  L4_2 = L3_2
  L3_2 = L3_2.GetClip
  L5_2 = L3_1
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = L3_2.length
  L5_2 = A0_2
  L4_2 = A0_2._add_count_down_timer
  L6_2 = A0_2._on_reward_anim_finish
  L7_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._timer = L4_2
end
L4_1.setup_view = L5_1
function L5_1(A0_2)
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
end
L4_1._on_cookie_revert = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_cookie
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
end
L4_1._on_final_cookie_revert = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_active
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_cookie
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L4_1._game_over = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.GameInfo
  L1_2 = L1_2.BingoData
  L2_2 = L1_2
  L1_2 = L1_2.GetBingoABubbleTextID
  L3_2 = A0_2._resource_id
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_cookie_hint_text
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L4_1._on_cookie_hint_active = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_front
  L4_2 = A0_2._resource_data
  L4_2 = L4_2.IconPath
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._setup_front_img = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._timer
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
L4_1._on_reward_anim_finish = L5_1
return L4_1
