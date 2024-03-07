local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.BattlePass.MainPage.BattlePassRewardTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Component.TabItem"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BattlePassModule
L1_1 = "SpriteOutput/TabIcon/BattlePass/BPhomepage.png"
L2_1 = 0.45
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "BattlePassRewardTabItem"
L5_1 = G
L5_1 = L5_1.TabItem
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattlePassRefreshExp
  L4_2 = A0_2._on_exp_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattlePassRefreshLevel
  L4_2 = A0_2._on_level_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattlePassRefreshReward
  L4_2 = A0_2._refresh_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattlePassTypeChanged
  L4_2 = A0_2._on_bp_type_changed
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattlePassRewardGot
  L4_2 = A0_2._on_reward_got
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_purchase
  L4_2 = A0_2._on_btn_purchase
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_icon
  L4_2 = A0_2._on_btn_purchase
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_display
  L2_2 = L1_2
  L1_2 = L1_2.register_click_callback
  L3_2 = A0_2._on_btn_purchase
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  A0_2._has_purchase_hint = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_purchase_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_display
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_purchase_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1.BattlePassData
  L1_2 = L1_2.Row
  L1_2 = L1_2.Purchase68
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateRewardItemTableSorted
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 ~= nil
  A0_2._has_purchase_hint = L3_2
  L3_2 = A0_2._has_purchase_hint
  if L3_2 then
    L3_2 = L2_2[1]
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ItemExcelTable
    L4_2 = L4_2.GetData
    L5_2 = L3_2.ItemID
    L4_2 = L4_2(L5_2)
    L6_2 = A0_2
    L5_2 = A0_2._load_sprite_to
    L7_2 = A0_2._binder
    L7_2 = L7_2.img_purchase_icon
    L8_2 = L4_2.ItemCurrencyIconPath
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_purchase_count
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetText
    L7_2 = L3_2.Count
    L5_2(L6_2, L7_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._refresh_purchase_hint
  L3_2(L4_2)
end
L3_1._setup_purchase_hint = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._can_see_purchase_hint
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._has_purchase_hint
  if L1_2 then
    L1_2 = L0_1.BattlePassData
    L1_2 = L1_2.HasPurchased
    L1_2 = not L1_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_purchase_hint
  L2_2 = L2_2.gameObject
  L2_2 = L2_2.activeSelf
  if L1_2 == L2_2 then
    return
  end
  if L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.CoroutineUtils
    L2_2 = L2_2.InvokeAfterSeconds
    L3_2 = L2_1
    function L4_2()
      local L0_3, L1_3, L2_3
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3._can_see_purchase_hint
      L0_3 = L0_3(L1_3)
      if not L0_3 then
        return
      end
      L0_3 = A0_2._binder
      L0_3 = L0_3.node_purchase_hint
      L1_3 = L0_3
      L0_3 = L0_3.SafeSetActive
      L2_3 = L1_2
      L0_3(L1_3, L2_3)
    end
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_purchase_hint
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L3_1._refresh_purchase_hint = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2 ~= nil
  return L1_2
end
L3_1._can_see_purchase_hint = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_level
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_rewards
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_purchase_btn
  L1_2(L2_2)
end
L3_1._refresh_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1.BattlePassData
  L1_2 = L1_2.CanPurchase
  L2_2 = L0_1.IsPayEnd
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_icon
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_purchase
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetInteractable
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_btn_purchase
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_purchase_end
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_btn_purchase
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  if L1_2 then
    L5_2 = "UIText_Battlepass_Unlock"
    if L5_2 then
      goto lbl_33
    end
  end
  L5_2 = "UIText_Battlepass_Unlock01"
  ::lbl_33::
  L3_2(L4_2, L5_2)
end
L3_1._setup_purchase_btn = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_rewards
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L3_1._refresh_reward = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_purchase_hint
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.EventSystem
  L2_2 = L2_2.current
  L3_2 = L2_2
  L2_2 = L2_2.SetSelectedGameObject
  L4_2 = nil
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
  if not A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._try_play_anim
    L2_2(L3_2)
  end
end
L3_1._on_top_page = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_purchase_hint
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_play_anim
  L1_2(L2_2)
end
L3_1._on_return_to_top = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    L2_2 = A0_2._binder
    if L2_2 ~= nil then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_purchase_hint_effect
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
end
L3_1._on_owner_active_change = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._try_play_anim
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.EventSystem
    L2_2 = L2_2.current
    L3_2 = L2_2
    L2_2 = L2_2.SetSelectedGameObject
    L4_2 = nil
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.get_first_selected_object
    L2_2 = L2_2(L3_2)
    L4_2 = A0_2
    L3_2 = A0_2.set_navigation_target
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    if L2_2 then
      L4_2 = A0_2
      L3_2 = A0_2.save_navigation_target
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L3_1._on_first_child_dialog_close = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_level
  L3_2 = L2_2
  L2_2 = L2_2.play_level_up_anim
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_view
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_rewards
  L3_2 = L2_2
  L2_2 = L2_2.set_level_anim
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._try_play_anim
  L2_2(L3_2)
end
L3_1._on_level_up = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_level
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_level
  L3_2 = L2_2
  L2_2 = L2_2.play_exp_up_anim
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L3_1._on_exp_changed = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_reward
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.NCPMPNBOJBP
  L2_2 = L2_2.DLOKMLHOFEM
  if A1_2 == L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.panel_rewards
    L3_2 = L2_2
    L2_2 = L2_2.set_type_anim
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._try_play_anim
    L2_2(L3_2)
  end
end
L3_1._on_bp_type_changed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._can_play_anim
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_rewards
    L2_2 = L1_2
    L1_2 = L1_2.start_anim
    return L1_2(L2_2)
  end
  L1_2 = false
  return L1_2
end
L3_1._try_play_anim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._state
  L2_2 = A0_2.SelectState
  L2_2 = L2_2.Selected
  L2_2 = A0_2
  L1_2 = A0_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_top_page_or_dialog
    L1_2 = L1_2 == L2_2 and L1_2
  end
  return L1_2
end
L3_1._can_play_anim = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L3_2 = A0_2
  L2_2 = A0_2.is_active
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_reward
    L2_2(L3_2)
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.show_reward_dialog
    L3_2 = A1_2
    L2_2(L3_2)
  end
end
L3_1._on_reward_got = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.PayModule
  L2_2 = L1_2
  L1_2 = L1_2.ContainsBattlePassProduct
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_Battlepass_Errorcode03"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = L0_1.IsPayEnd
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_Battlepass_Errorcode04"
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._setup_purchase_btn
    L1_2(L2_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.BattlePass.BattlePassPurchasePage"
  L1_2(L2_2)
end
L3_1._on_btn_purchase = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_play_anim
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L3_1._on_select = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_purchase_hint_effect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L3_1._on_unselect = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_btn_view
  L1_2(L2_2)
end
L3_1._on_added = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.unselect_icon_image
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.select_icon_image
  L4_2 = L1_1
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "BattlePassRewardTab"
  L4_2 = nil
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.go_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L3_1._setup_tab_btn_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone2
  if A1_2 == L2_2 then
    L2_2 = false
    return L2_2
  end
end
L3_1._is_can_to_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_rewards
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L3_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = {}
  L2_2 = "ReceiveReward"
  L3_2 = "BattlePassMainPageChangeEquipment"
  L4_2 = "ActionGroup_Return"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L1_2[3] = L4_2
  return L1_2
end
L3_1.get_short_cut_hint = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.InControl
  L2_2 = L2_2.InputControlType
  L2_2 = L2_2.LeftTrigger
  L2_2 = #L2_2
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._on_control_prev_button_click
    L2_2(L3_2)
  else
    L2_2 = CS
    L2_2 = L2_2.InControl
    L2_2 = L2_2.InputControlType
    L2_2 = L2_2.RightTrigger
    L2_2 = #L2_2
    if A1_2 == L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._on_control_next_button_click
      L2_2(L3_2)
    end
  end
end
L3_1._on_in_control_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._owner
      L1_2 = L1_2._button_mutex
      L2_2 = L1_2
      L1_2 = L1_2.Check
      function L3_2()
        local L0_3, L1_3
        L0_3 = A0_2._binder
        L0_3 = L0_3.panel_display
        L1_3 = L0_3
        L0_3 = L0_3.switch_to_left
        L0_3(L1_3)
      end
      L1_2(L2_2, L3_2)
    end
  end
end
L3_1._on_control_prev_button_click = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.is_out_most_zoom
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_in_special_zoom
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = A0_2._owner
      L1_2 = L1_2._button_mutex
      L2_2 = L1_2
      L1_2 = L1_2.Check
      function L3_2()
        local L0_3, L1_3
        L0_3 = A0_2._binder
        L0_3 = L0_3.panel_display
        L1_3 = L0_3
        L0_3 = L0_3.switch_to_right
        L0_3(L1_3)
      end
      L1_2(L2_2, L3_2)
    end
  end
end
L3_1._on_control_next_button_click = L4_1
return L3_1
