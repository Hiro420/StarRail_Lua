local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Gacha.GachaSubFunctionPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaSubFunctionItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Gacha.GachaSubFunctionItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GachaSubFunctionPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.OpeUtil
L2_1 = "GachaShopID"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_shop
  L4_2 = A0_2._on_goto_shop
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_record
  L4_2 = A0_2._on_open_detail_url
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_goto_trial
  L4_2 = A0_2._on_goto_trial
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_goto_trial
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_special_zoom_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_goto_trial
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_record
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_special_zoom_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_record
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "GachaBlockDetail"
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = L1_2.Value
    L2_2 = L2_2.IntValue
  end
  L2_2 = L2_2 == 1 or L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_record
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._gacha_pool_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_btn_goto_trial_view
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "GachaTrialBtn"
  L5_2 = A1_2.GachaID
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.red_dot_btn_trial
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_goto_trial
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._gacha_pool_data
  L3_2 = L3_2.GachaType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.GachaType
  L4_2 = L4_2.Normal
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
end
L0_1._refresh_btn_goto_trial_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_record
  L2_2.interactable = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_shop
  L2_2.interactable = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_goto_trial
  L2_2.interactable = A1_2
end
L0_1.set_interactable = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_in_control_option_type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_can_to_special_zoom
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.is_active_in_hierarchy
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2.is_in_special_zoom
        L2_2 = L2_2(L3_2)
        if not L2_2 then
          L2_2 = nil
          L3_2 = A0_2._binder
          L3_2 = L3_2.btn_record
          L3_2 = L3_2.gameObject
          L3_2 = L3_2.activeInHierarchy
          if L3_2 then
            L3_2 = A0_2._binder
            L3_2 = L3_2.btn_record
            L2_2 = L3_2.gameObject
          else
            L3_2 = A0_2._binder
            L3_2 = L3_2.btn_goto_trial
            L3_2 = L3_2.gameObject
            L3_2 = L3_2.activeInHierarchy
            if L3_2 then
              L3_2 = A0_2._binder
              L3_2 = L3_2.btn_goto_trial
              L2_2 = L3_2.gameObject
            end
          end
          if L2_2 ~= nil then
            L4_2 = A0_2
            L3_2 = A0_2.set_special_zoom_navigation_target
            L5_2 = L2_2
            L3_2(L4_2, L5_2)
          end
        end
      end
    end
  end
end
L0_1._on_in_control_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L0_1._on_got_focus = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_zoom
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.is_gamepad_input
  L3_2 = L3_2()
  L1_2(L2_2, L3_2)
end
L0_1._on_in_control_input_switch = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_key_map_info
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = L2_1
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.IntValue
  L2_2 = G
  L2_2 = L2_2.GotoManager
  L2_2 = L2_2.GotoByType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GotoType
  L3_2 = L3_2.Shop
  L3_2 = #L3_2
  L4_2 = {}
  L5_2 = nil
  L6_2 = L1_2
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L2_2(L3_2, L4_2)
end
L0_1._on_goto_shop = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._gacha_pool_data
  if L1_2 == nil then
    return
  end
  L1_2 = L1_1.OpenGachaHistoryURL
  L2_2 = A0_2._gacha_pool_data
  L2_2 = L2_2.DetailURL
  L3_2 = A0_2._gacha_pool_data
  L3_2 = L3_2.GachaType
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "GachaDetailBtn"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_open_detail_url = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.SDKLuaReportAdapter
  L1_2 = L1_2.ReportUIButtonClick
  L2_2 = A0_2._owner
  L2_2 = L2_2.__name
  L3_2 = A0_2.__name
  L4_2 = "GachaTrialBtn"
  L5_2 = A0_2._owner
  L5_2 = L5_2.guid
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2.GachaNormalTrialBtnSeen = true
  L1_2 = A0_2._gacha_pool_data
  if L1_2 ~= nil then
    L1_2 = A0_2._gacha_pool_data
    L1_2 = L1_2.GachaType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.GachaType
    L2_2 = L2_2.WeaponUp
    if L1_2 ~= L2_2 then
      goto lbl_32
    end
  end
  do return end
  ::lbl_32::
  L1_2 = A0_2._gacha_pool_data
  L1_2 = L1_2.GachaType
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GachaType
  L2_2 = L2_2.Normal
  if L1_2 == L2_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Gacha.GachaTrial.GachaNormalTrialPage"
    L1_2(L2_2)
  else
    L1_2 = A0_2._gacha_pool_data
    L1_2 = L1_2.GachaType
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.GachaType
    L2_2 = L2_2.AvatarUp
    if L1_2 == L2_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.GlobalVars
      L1_2 = L1_2.s_ModuleManager
      L1_2 = L1_2.ActivityModule
      L2_2 = L1_2
      L1_2 = L1_2.GetRoleTrialActivityData
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L3_2 = A0_2
        L2_2 = A0_2._get_ssr_avatar_id
        L2_2 = L2_2(L3_2)
        L1_2.DefaultSelectedAvatarID = L2_2
        L2_2 = G
        L2_2 = L2_2.GotoManager
        L2_2 = L2_2.Goto
        L3_2 = GotoType2DefaultGotoID
        L4_2 = CS
        L4_2 = L4_2.RPG
        L4_2 = L4_2.GameCore
        L4_2 = L4_2.GotoType
        L4_2 = L4_2.Activity
        L4_2 = #L4_2
        L3_2 = L3_2[L4_2]
        L4_2 = {}
        L5_2 = L1_2.PanelID
        L4_2[1] = L5_2
        L2_2(L3_2, L4_2)
      else
        L2_2 = G
        L2_2 = L2_2.NotifyManager
        L2_2 = L2_2.notify
        L3_2 = G
        L3_2 = L3_2.CS
        L3_2 = L3_2.NotifyType
        L3_2 = L3_2.UIPileToastMessageTextID
        L4_2 = "UIText_FuncLockedDesc"
        L2_2(L3_2, L4_2)
      end
    end
  end
end
L0_1._on_goto_trial = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = A0_2._gacha_pool_data
  L2_2 = L2_2.PrizeItemsRow
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.AvatarExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._gacha_pool_data
    L6_2 = L6_2.PrizeItemsRow
    L6_2 = L6_2[L4_2]
    L6_2 = L6_2.ID
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L6_2 = L5_2.Rarity
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.CombatPowerAvatarRarityType
      L7_2 = L7_2.CombatPowerAvatarRarityType5
      if L6_2 == L7_2 then
        L6_2 = L5_2.AvatarID
        return L6_2
      end
    end
  end
  L1_2 = 0
  return L1_2
end
L0_1._get_ssr_avatar_id = L3_1
return L0_1
