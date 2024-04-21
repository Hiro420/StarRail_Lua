local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaPool.DefaultGachaAvatarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaPool.DefaultGachaAvatarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaPool.DefaultGachaLightConePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaPool.DefaultGachaLightConePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaPool.DefaultGachaUpAvatarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaPool.DefaultGachaUpAvatarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaPool.DefaultGachaUpLightConePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaPool.DefaultGachaUpLightConePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaPool.DefaultGachaPoolTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaInvitation.GachaInvitationDialog"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DefaultGachaPoolTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "ImgDrawcard_Switch_Upward_2"
function L2_1(A0_2)
  local L1_2
  A0_2._item_panels = nil
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._gacha_pool_data = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_invitation
  if L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.GachaCeilingConfigExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A0_2._gacha_pool_data
    L3_2 = L3_2.GachaType
    L2_2 = L2_2(L3_2)
    A0_2._ceiling_config_row = L2_2
  end
end
L0_1.set_tab_data = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._time_over_callback = A1_2
  A0_2._time_over_callback_self = A2_2
end
L0_1.set_time_over_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.switch_animation
  L3_2 = A0_2._binder
  L3_2 = L3_2.content_anim
  L3_2 = L3_2.FromForwardAnimClipName
  L1_2(L2_2, L3_2)
end
L0_1.reset_anim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_invitaion
  L1_2(L2_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_reddot
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.prefab_reddot
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._reddot_object = L1_2
end
L0_1.set_red_dot_active = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._gacha_pool_data = nil
  A0_2._item_panels = nil
  A0_2._time_over_callback_self = nil
  A0_2._time_over_callback = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_pool_icon
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.pool_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_time_over_callback
  L3_2 = A0_2._time_over_callback
  L4_2 = A0_2._time_over_callback_self
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.pool_info_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._gacha_pool_data
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
end
L0_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_invitation
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_invitation
    L4_2 = A0_2._on_btn_invitation
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GachaModule
  L2_2 = L1_2
  L1_2 = L1_2.GetGachaCeiling
  L3_2 = A0_2._gacha_pool_data
  L3_2 = L3_2.GachaType
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.Gacha.GachaInvitation.GachaInvitationDialog"
  L3_2 = A0_2._gacha_pool_data
  L3_2 = L3_2.GachaType
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_invitation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Stop
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.SeenGachaPoolID
  L2_2 = L1_2
  L1_2 = L1_2.Contains
  L3_2 = A0_2._gacha_pool_data
  L3_2 = L3_2.GachaID
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L1_2 = L1_2.User
    L1_2 = L1_2.SeenGachaPoolID
    L2_2 = L1_2
    L1_2 = L1_2.Add
    L3_2 = A0_2._gacha_pool_data
    L3_2 = L3_2.GachaID
    L1_2(L2_2, L3_2)
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.Prefs
    L2_2 = L1_2
    L1_2 = L1_2.ForceSave
    L1_2(L2_2)
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.NewGachaPoolRedDotUpdate
    L1_2(L2_2)
  end
end
L0_1._on_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._gacha_pool_data
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.go_reddot
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.bind_reddot
      L3_2 = "GachaTab"
      L4_2 = A0_2._gacha_pool_data
      L4_2 = L4_2.GachaID
      L5_2 = A0_2
      L6_2 = A0_2._binder
      L6_2 = L6_2.go_reddot
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  else
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.unbind_reddot
    L3_2 = A0_2._binder
    L3_2 = L3_2.go_reddot
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._gacha_pool_data
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.invitation_btn_reddot
    if L1_2 then
      L1_2 = G
      L1_2 = L1_2.RedDotModule
      L1_2 = L1_2.Instance
      L2_2 = L1_2
      L1_2 = L1_2.bind_reddot
      L3_2 = "GachaInvitation"
      L4_2 = A0_2._gacha_pool_data
      L4_2 = L4_2.GachaID
      L5_2 = A0_2
      L6_2 = A0_2._binder
      L6_2 = L6_2.invitation_btn_reddot
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
  else
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.unbind_reddot
    L3_2 = A0_2._binder
    L3_2 = L3_2.invitation_btn_reddot
    L1_2(L2_2, L3_2)
  end
end
L0_1._bind_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._gacha_pool_data
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_selected_icon
    L4_2 = A0_2._gacha_pool_data
    L4_2 = L4_2.Row
    L4_2 = L4_2.PoolLabelIconSelected
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_unselected_icon
    L4_2 = A0_2._gacha_pool_data
    L4_2 = L4_2.Row
    L4_2 = L4_2.PoolLabelIcon
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_pool_icon = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.GachaModule
  L3_2 = L1_2
  L2_2 = L1_2.GetGachaCeilingData
  L4_2 = A0_2._gacha_pool_data
  L4_2 = L4_2.GachaType
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.Closed
  return L3_2
end
L0_1._is_ceiling_closed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_invitation
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._is_ceiling_closed
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.invitation_root
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = false
      L1_2(L2_2, L3_2)
      return
    end
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.GachaModule
    L3_2 = L1_2
    L2_2 = L1_2.GetGachaCeilingData
    L4_2 = A0_2._gacha_pool_data
    L4_2 = L4_2.GachaType
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = L2_2.CeilingNum
    L4_2 = A0_2._ceiling_config_row
    L4_2 = L4_2.CeilingNum
    if L3_2 >= L4_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.invitation_status_max
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.invitation_status_half
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
    else
      L3_2 = L2_2.CeilingNum
      L4_2 = A0_2._ceiling_config_row
      L4_2 = L4_2.CeilingNum
      L4_2 = L4_2 / 2
      if L3_2 >= L4_2 then
        L3_2 = A0_2._binder
        L3_2 = L3_2.invitation_status_max
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetActive
        L5_2 = false
        L3_2(L4_2, L5_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.invitation_status_half
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetActive
        L5_2 = true
        L3_2(L4_2, L5_2)
      else
        L3_2 = A0_2._binder
        L3_2 = L3_2.invitation_status_max
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetActive
        L5_2 = false
        L3_2(L4_2, L5_2)
        L3_2 = A0_2._binder
        L3_2 = L3_2.invitation_status_half
        L4_2 = L3_2
        L3_2 = L3_2.SafeSetActive
        L5_2 = false
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L0_1._refresh_invitaion = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._item_panels
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._create_item_panels
    L1_2(L2_2)
  end
  L1_2 = A0_2._up_item_panels
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._create_up_item_panels
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_item_panels_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_invitaion
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.title_content_scroll_rect
  L2_2 = L1_2
  L1_2 = L1_2.SetVerticalScrollPercent
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.title_content_scroll_rect
    L1_3 = L0_3
    L0_3 = L0_3.CanScroll
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_short_cut_hint_panel
      L2_3 = 33
      L0_3(L1_3, L2_3)
    else
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_short_cut_hint_panel
      L2_3 = 1
      L0_3(L1_3, L2_3)
    end
  end
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = {}
  A0_2._item_panels = L1_2
  L1_2 = A0_2._gacha_pool_data
  L1_2 = L1_2.PrizeItemsRow
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_items_root
  L2_2 = L2_2.childCount
  L3_2 = L1_2.Length
  if L3_2 ~= L2_2 then
    L3_2 = G
    L3_2 = L3_2.SuperDebug
    L3_2 = L3_2.LogWarningFormat
    L4_2 = "Items number: "
    L5_2 = L1_2.Length
    L6_2 = " is not correspond with prefab's node number"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
  end
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = L1_2.Length
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2._gacha_pool_data
  L4_2 = L4_2.GachaType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.GachaType
  L5_2 = L5_2.Normal
  L4_2 = L4_2 == L5_2
  L5_2 = 0
  L6_2 = L3_2 - 1
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    if L8_2 >= L2_2 then
      break
    end
    L9_2 = A0_2._binder
    L9_2 = L9_2.node_items_root
    L10_2 = L9_2
    L9_2 = L9_2.GetChild
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    L10_2 = L1_2.Length
    if L8_2 >= L10_2 then
      L11_2 = L9_2
      L10_2 = L9_2.SafeSetActive
      L12_2 = false
      L10_2(L11_2, L12_2)
    else
      L10_2 = L1_2[L8_2]
      L11_2 = nil
      L12_2 = nil
      L13_2 = L10_2.ItemMainType
      L14_2 = CS
      L14_2 = L14_2.RPG
      L14_2 = L14_2.GameCore
      L14_2 = L14_2.ItemMainType
      L14_2 = L14_2.AvatarCard
      if L13_2 == L14_2 then
        L14_2 = A0_2
        L13_2 = A0_2.create_panel
        L15_2 = G
        L15_2 = L15_2.DefaultGachaAvatarPanel
        L16_2 = G
        L16_2 = L16_2.DefaultGachaAvatarPanelBinder
        L13_2 = L13_2(L14_2, L15_2, L16_2)
        L11_2 = L13_2
        L13_2 = CS
        L13_2 = L13_2.RPG
        L13_2 = L13_2.GameCore
        L13_2 = L13_2.AvatarExcelTable
        L13_2 = L13_2.GetData
        L14_2 = L10_2.ID
        L13_2 = L13_2(L14_2)
        L12_2 = L13_2
      else
        L13_2 = L10_2.ItemMainType
        L14_2 = CS
        L14_2 = L14_2.RPG
        L14_2 = L14_2.GameCore
        L14_2 = L14_2.ItemMainType
        L14_2 = L14_2.Equipment
        if L13_2 == L14_2 then
          L14_2 = A0_2
          L13_2 = A0_2.create_panel
          L15_2 = G
          L15_2 = L15_2.DefaultGachaLightConePanel
          L16_2 = G
          L16_2 = L16_2.DefaultGachaLightConePanelBinder
          L13_2 = L13_2(L14_2, L15_2, L16_2)
          L11_2 = L13_2
          L13_2 = CS
          L13_2 = L13_2.RPG
          L13_2 = L13_2.GameCore
          L13_2 = L13_2.EquipmentExcelTable
          L13_2 = L13_2.GetData
          L14_2 = L10_2.ID
          L13_2 = L13_2(L14_2)
          L12_2 = L13_2
        end
      end
      if L11_2 ~= nil then
        L14_2 = L11_2
        L13_2 = L11_2.bind
        L15_2 = L9_2
        L13_2(L14_2, L15_2)
        L14_2 = L11_2
        L13_2 = L11_2.set_data
        L15_2 = L12_2
        L13_2(L14_2, L15_2)
        L14_2 = L11_2
        L13_2 = L11_2.set_pool_data
        L15_2 = A0_2._gacha_pool_data
        L13_2(L14_2, L15_2)
        L14_2 = L11_2
        L13_2 = L11_2.set_disable_btn_detail
        L15_2 = L4_2
        L13_2(L14_2, L15_2)
        L13_2 = table
        L13_2 = L13_2.insert
        L14_2 = A0_2._item_panels
        L15_2 = L11_2
        L13_2(L14_2, L15_2)
      end
    end
  end
end
L0_1._create_item_panels = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = {}
  A0_2._up_item_panels = L1_2
  L1_2 = nil
  L2_2 = A0_2._gacha_pool_data
  L2_2 = L2_2.GachaType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GachaType
  L3_2 = L3_2.AvatarUp
  if L2_2 == L3_2 then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.DefaultGachaUpAvatarPanel
    L5_2 = G
    L5_2 = L5_2.DefaultGachaUpAvatarPanelBinder
    L6_2 = A0_2._gacha_pool_data
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L1_2 = L2_2
  else
    L2_2 = A0_2._gacha_pool_data
    L2_2 = L2_2.GachaType
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.GachaType
    L3_2 = L3_2.WeaponUp
    if L2_2 == L3_2 then
      L3_2 = A0_2
      L2_2 = A0_2.create_panel
      L4_2 = G
      L4_2 = L4_2.DefaultGachaUpLightConePanel
      L5_2 = G
      L5_2 = L5_2.DefaultGachaUpLightConePanelBinder
      L6_2 = A0_2._gacha_pool_data
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      L1_2 = L2_2
    end
  end
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_avatar_panel
    L2_2(L3_2, L4_2)
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = A0_2._up_item_panels
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._create_up_item_panels = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = A0_2._item_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L6_2(L7_2)
  end
  L1_2 = pairs
  L2_2 = A0_2._up_item_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.setup_view
    L6_2(L7_2)
  end
end
L0_1._setup_item_panels_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if A1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_active
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = CS
      L2_2 = L2_2.UnityEngine
      L2_2 = L2_2.UI
      L2_2 = L2_2.LayoutRebuilder
      L2_2 = L2_2.ForceRebuildLayoutImmediate
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_title_panel_content
      L3_2 = L3_2.gameObject
      L3_2 = L3_2.transform
      L2_2(L3_2)
      L2_2 = CS
      L2_2 = L2_2.UnityEngine
      L2_2 = L2_2.UI
      L2_2 = L2_2.LayoutRebuilder
      L2_2 = L2_2.ForceRebuildLayoutImmediate
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_subtitle_panel
      L3_2 = L3_2.gameObject
      L3_2 = L3_2.transform
      L2_2(L3_2)
      L2_2 = pairs
      L3_2 = A0_2._item_panels
      L2_2, L3_2, L4_2 = L2_2(L3_2)
      for L5_2, L6_2 in L2_2, L3_2, L4_2 do
        L8_2 = L6_2
        L7_2 = L6_2.rebuild_layout
        L7_2(L8_2)
      end
    end
  end
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.go_reddot
    L3_2 = L2_2
    L2_2 = L2_2.GetChild
    L4_2 = 0
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L3_2 = 0
      L4_2 = L2_2.childCount
      L4_2 = L4_2 - 1
      L5_2 = 1
      for L6_2 = L3_2, L4_2, L5_2 do
        L7_2 = CS
        L7_2 = L7_2.UnityEngine
        L7_2 = L7_2.UI
        L7_2 = L7_2.LayoutRebuilder
        L7_2 = L7_2.ForceRebuildLayoutImmediate
        L9_2 = L2_2
        L8_2 = L2_2.GetChild
        L10_2 = L6_2
        L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
        L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
end
L0_1._on_owner_active_change = L2_1
return L0_1
