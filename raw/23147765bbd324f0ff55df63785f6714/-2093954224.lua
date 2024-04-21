local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaObtainDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.ShareUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaObtainDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 0.5
L2_1 = "NewAvatarDropDialog_FadeInR5"
L3_1 = "NewAvatarDropDialog_FadeInR4"
L4_1 = "NewAvatarDropDialog_FadeIn"
L5_1 = "GachaRepeatedConvert"
L6_1 = 5
L7_1 = 4
L8_1 = 3
L9_1 = 2
L10_1 = 1
L11_1 = CS
L11_1 = L11_1.RPG
L11_1 = L11_1.Client
L11_1 = L11_1.GlobalVars
L11_1 = L11_1.s_ModuleManager
L11_1 = L11_1.GachaModule
L12_1 = CS
L12_1 = L12_1.RPG
L12_1 = L12_1.Client
L12_1 = L12_1.GlobalVars
L12_1 = L12_1.s_ModuleManager
L12_1 = L12_1.ShareModule
L13_1 = "GachaShareRewardLabel"
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.GachaObtainDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_can_close = false
  A0_2._is_can_skip = false
  A0_2._need_to_hold = false
  A0_2._exiting = false
end
L0_1.ctor = L14_1
function L14_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  A0_2._gacha_item_data = A1_2
  L5_2 = A0_2
  L4_2 = A0_2._add_count_down_timer
  L6_2 = A0_2._set_close
  L7_2 = L1_1
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2._protected_time_timer = L4_2
  A0_2._call_back = A2_2
  L4_2 = L4_1
  A0_2._cur_anim = L4_2
  A0_2._one_draw = A3_2
  A0_2._enable_share_time = 20
end
L0_1.init = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 9
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_close
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._one_draw
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_skip
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_skip
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_skip
    L4_2 = A0_2._on_skip
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg_close
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIButtonSoundType
  L2_2 = L2_2.Mute
  L1_2.SoundType = L2_2
  L2_2 = A0_2
  L1_2 = A0_2.add_hide_nodes_on_sharing
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_share_avatar
  L4_2 = A0_2._binder
  L4_2 = L4_2.btn_share_light_cone
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_share_reward_panel_avatar
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_share_reward_panel_light_cone
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._one_draw
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.add_hide_node_on_sharing
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_skip
    L1_2(L2_2, L3_2)
  end
  A0_2._enable_share = false
end
L0_1._on_load = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._gacha_item_data = nil
  A0_2._protected_time_timer = nil
  A0_2._call_back = nil
  L1_2 = A0_2._one_draw
  if L1_2 then
    L1_2 = L11_1.EnablePerformance
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_GamePhaseManager
      L2_2 = L1_2
      L1_2 = L1_2.GetCurrentPhase
      L1_2 = L1_2(L2_2)
      L2_2 = L1_2 or L2_2
      if L1_2 then
        L3_2 = L1_2
        L2_2 = L1_2.GetAdventureAudioManager
        L2_2 = L2_2(L3_2)
      end
      if L2_2 ~= nil then
        L4_2 = L2_2
        L3_2 = L2_2.StopAllUIMenuBGM
        L3_2(L4_2)
      end
    end
  end
end
L0_1._on_dispose = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._gacha_item_data
  if not L1_2 then
    return
  end
  L1_2 = A0_2._one_draw
  if L1_2 then
    L1_2 = L11_1
    L2_2 = L1_2
    L1_2 = L1_2.RefreshGachaPoolsData
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.GachaShowMask
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.water_mark_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._setup_view = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_avatar_obtain
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_light_cone_obtain
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._gacha_item_data
  L1_2 = L1_2.ItemRow
  L2_2 = L1_2.ItemMainType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemMainType
  L3_2 = L3_2.AvatarCard
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_avatar_panel
    L2_2(L3_2)
  else
    L2_2 = L1_2.ItemMainType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ItemMainType
    L3_2 = L3_2.Equipment
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._setup_light_cone_panel
      L2_2(L3_2)
    end
  end
  L2_2 = L12_1.EnableShare
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._bind_btn_callback
    L4_2 = A0_2._btn_share
    L5_2 = A0_2._on_btn_share
    L2_2(L3_2, L4_2, L5_2)
    L3_2 = A0_2
    L2_2 = A0_2._add_notify_handler
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.GetShareReward
    L5_2 = A0_2._on_get_share_reward
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = A0_2._one_draw
  if not L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_skip_status
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_fade_in_anim
  L2_2(L3_2)
  L2_2 = A0_2._protected_time_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._protected_time_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_avatar_convert
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L5_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_lightcone_convert
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L5_1
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_share_view
  L2_2(L3_2)
end
L0_1._refresh = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._gacha_item_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._gacha_item_data
  L1_2 = L1_2.ItemRow
  L1_2 = L1_2.Rarity
  L1_2 = #L1_2
  L2_2 = L6_1
  if L1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_fade_in
    L3_2 = L2_2
    L2_2 = L2_2.Play
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
    L2_2 = L2_1
    A0_2._cur_anim = L2_2
    L2_2 = L9_1
    A0_2._enable_share_time = L2_2
  else
    L2_2 = L7_1
    if L1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_fade_in
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = L3_1
      L2_2(L3_2, L4_2)
      L2_2 = L3_1
      A0_2._cur_anim = L2_2
      L2_2 = L10_1
      A0_2._enable_share_time = L2_2
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_fade_in
      L3_2 = L2_2
      L2_2 = L2_2.Play
      L4_2 = L4_1
      L2_2(L3_2, L4_2)
      L2_2 = L4_1
      A0_2._cur_anim = L2_2
    end
  end
  A0_2._time_use = 0
  L3_2 = A0_2
  L2_2 = A0_2.add_tick
  L2_2(L3_2)
end
L0_1._setup_fade_in_anim = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_obtain_panel
  A0_2._active_panel = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_avatar_obtain
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.avatar_obtain_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._gacha_item_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_share_avatar
  A0_2._btn_share = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_share_panel_avatar
  A0_2._node_share_panel = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_share_reward_panel_avatar
  A0_2._node_share_reward_panel = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_share_reward_avatar
  A0_2._text_share_reward = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_share_reward_num_avatar
  A0_2._text_share_reward_num = L1_2
end
L0_1._setup_avatar_panel = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.light_cone_obtain_panel
  A0_2._active_panel = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_light_cone_obtain
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.light_cone_obtain_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._gacha_item_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_share_light_cone
  A0_2._btn_share = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_share_panel_light_cone
  A0_2._node_share_panel = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_share_reward_panel_light_cone
  A0_2._node_share_reward_panel = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_share_reward_light_cone
  A0_2._text_share_reward = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_share_reward_num_light_cone
  A0_2._text_share_reward_num = L1_2
end
L0_1._setup_light_cone_panel = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._gacha_item_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._gacha_item_data
  L1_2 = L1_2.ItemRow
  L2_2 = L1_2.Rarity
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemRarity
  L3_2 = L3_2.SuperRare
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_skip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    A0_2._is_can_skip = false
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_skip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    A0_2._is_can_skip = true
  end
end
L0_1._setup_skip_status = L14_1
function L14_1(A0_2)
  local L1_2
  A0_2._is_can_close = true
end
L0_1._set_close = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_can_skip = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_bg_close
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIButtonSoundType
  L2_2 = L2_2.CommonClick
  L1_2.SoundType = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._set_skip = L14_1
function L14_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_can_close
  if L1_2 then
    L1_2 = A0_2._is_can_skip
    if not L1_2 then
      L1_2 = A0_2._one_draw
      if not L1_2 then
        goto lbl_25
      end
    end
    L1_2 = A0_2._exiting
    if not L1_2 then
      A0_2._exiting = true
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.UIAnimationUtils
      L1_2 = L1_2.PlayFromEnd
      L2_2 = A0_2._binder
      L2_2 = L2_2.anim_fade_in
      L3_2 = A0_2._cur_anim
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2.exit
      L1_2(L2_2)
    end
  end
  ::lbl_25::
end
L0_1._on_exit = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ButtonMutex
  L1_2 = L1_2.click_mutex
  L2_2 = A0_2._button_mutex
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._is_can_close
    if L0_3 then
      L0_3 = A0_2._is_can_skip
      if L0_3 then
        L0_3 = A0_2._call_back
        if L0_3 ~= nil then
          L0_3 = A0_2._call_back
          L0_3()
        end
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3.exit
        L0_3(L1_3)
      end
    end
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_skip = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._gacha_item_data
  L1_2 = L1_2.ItemRow
  L1_2 = L1_2.Rarity
  L1_2 = #L1_2
  L2_2 = A0_2._node_share_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L12_1.EnableShare
  if L4_2 then
    L4_2 = L8_1
    L4_2 = L1_2 ~= L4_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._text_share_reward
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L13_1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._text_share_reward_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L11_1.ShareRewardNum
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_share_state
  L2_2(L3_2)
end
L0_1._setup_share_view = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._enable_share
  if not L1_2 then
    return
  end
  L1_2 = G
  L1_2 = L1_2.ButtonMutex
  L1_2 = L1_2.click_mutex
  L2_2 = A0_2._button_mutex
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = G
    L0_3 = L0_3.ShareUtils
    L0_3 = L0_3.ShareGacha
    L1_3 = A0_2._on_share_exit
    function L2_3()
      local L0_4, L1_4
    end
    L3_3 = A0_2
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_share = L14_1
function L14_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_share_state
  L1_2(L2_2)
end
L0_1._on_share_exit = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L12_1
  L2_2 = L1_2
  L1_2 = L1_2.HasAvailableShareReward
  L3_2 = L11_1.ShareID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._node_share_reward_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_share_state = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._reward_data
  if L1_2 then
    L1_2 = A0_2._reward_data
    L1_2 = L1_2.Count
    L2_2 = {}
    L3_2 = 0
    L4_2 = L1_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L2_2
      L9_2 = A0_2._reward_data
      L9_2 = L9_2[L6_2]
      L7_2(L8_2, L9_2)
    end
    A0_2._reward_data = nil
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_show
    L4_2 = "Ui.Common.RewardDialog"
    L5_2 = L2_2
    L6_2 = nil
    L7_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1._show_share_reward = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._reward_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_share_state
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._show_share_reward
  L2_2(L3_2)
end
L0_1._on_get_share_reward = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_share_state
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._show_share_reward
    L2_2(L3_2)
  end
end
L0_1._on_view_active_change = L14_1
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._exit_callbacks
  if L2_2 ~= nil then
    L2_2 = A0_2._exit_callbacks
    L2_2 = #L2_2
    if 0 < L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.GlobalVars
      L2_2 = L2_2.s_UIManager
      L3_2 = L2_2
      L2_2 = L2_2.HasPageInStack
      L4_2 = "GachaMainPage"
      L2_2 = L2_2(L3_2, L4_2)
      if not L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.remove_tick
        L2_2(L3_2)
        L3_2 = A0_2
        L2_2 = A0_2.exit
        L2_2(L3_2)
      end
    end
  end
  L2_2 = A0_2._time_use
  L2_2 = L2_2 + A1_2
  A0_2._time_use = L2_2
  L2_2 = A0_2._time_use
  L3_2 = A0_2._enable_share_time
  if L2_2 < L3_2 then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._on_protect_time_end
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.remove_tick
  L2_2(L3_2)
end
L0_1._on_tick = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._enable_share = true
  L1_2 = A0_2._gacha_item_data
  L1_2 = L1_2.ItemRow
  L2_2 = A0_2._one_draw
  if not L2_2 then
    L2_2 = L1_2.Rarity
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ItemRarity
    L3_2 = L3_2.SuperRare
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2._set_skip
      L2_2(L3_2)
    end
  end
end
L0_1._on_protect_time_end = L14_1
return L0_1
