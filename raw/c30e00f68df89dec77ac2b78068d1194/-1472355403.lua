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
L2_1 = "MonopolyCookieRevert_Boom"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ActivityMonopolyMiniGameCookieBInfoPanel"
L5_1 = G
L5_1 = L5_1.ActivityMonopolyMiniGameCookieInfoPanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._index = A1_2
  A0_2._resource_id = A2_2
  L4_2 = L0_1.GameInfo
  L5_2 = L4_2
  L4_2 = L4_2.TryGetMonopolyGameResourceData
  L6_2 = A0_2._resource_id
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._resource_data = L4_2
  A0_2._is_boom = A3_2
  L5_2 = A0_2
  L4_2 = A0_2._setup_boom_img
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_front_img
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_cookie_state
  L6_2 = false
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_boom_state
  L6_2 = false
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_tip_state
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim_cookie
  L5_2 = L4_2
  L4_2 = L4_2.GetClip
  L6_2 = L2_1
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.length
  L6_2 = A0_2
  L5_2 = A0_2._add_count_down_timer
  L7_2 = A0_2._on_boom_anim_finish
  L8_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  A0_2._timer = L5_2
end
L3_1.setup_view = L4_1
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
  L3_2 = L2_1
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
L3_1._on_final_cookie_revert = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.GameInfo
  L1_2 = L1_2.BingoData
  L2_2 = L1_2
  L1_2 = L1_2.GetBingoBBubbleTextID
  L3_2 = A0_2._is_boom
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_cookie_hint_text
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L3_1._on_cookie_hint_active = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_front
  L4_2 = A0_2._resource_data
  L4_2 = L4_2.IconPath
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._setup_front_img = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_boom
  L4_2 = A0_2._resource_data
  L4_2 = L4_2.IconPath
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._setup_boom_img = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_boom
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L3_1._setup_boom_state = L4_1
function L4_1(A0_2)
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
L3_1._on_boom_anim_finish = L4_1
return L3_1
