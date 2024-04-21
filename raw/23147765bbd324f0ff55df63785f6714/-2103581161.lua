local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MonopolyModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.MonopolyUtils
L1_1 = L1_1.GetMiniGameMaxRaiseValue
L1_1 = L1_1()
L2_1 = "5180"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "ActivityMonopolyMiniGameBetPanel"
L5_1 = G
L5_1 = L5_1.BasePanel
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2
  A0_2._ratio = 0
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_minus
  L4_2 = A0_2._on_btn_minus
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_add
  L4_2 = A0_2._on_btn_add
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_btn_start
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_handlers
  L1_2(L2_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.KIJHIIKJELL
  L4_2 = A0_2._on_ratio_rsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L3_1._add_handlers = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_ratio_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn_view
  L1_2(L2_2)
end
L3_1._refresh_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityMonopoly_Game_RaiseValue"
  L4_2 = A0_2._ratio
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_minus
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L0_1.GameInfo
  L3_2 = L3_2.RatioUnlocked
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_add
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L0_1.GameInfo
  L3_2 = L3_2.RatioUnlocked
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_minus
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._ratio
  L4_2 = A0_2._min_ratio
  L3_2 = L0_1.GameInfo
  L3_2 = L3_2 ~= L4_2 and L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_add
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = A0_2._ratio
  L4_2 = A0_2._max_ratio
  L3_2 = L0_1.GameInfo
  L3_2 = L3_2 ~= L4_2 and L3_2
  L1_2(L2_2, L3_2)
end
L3_1._refresh_ratio_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MonopolyRaiseConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._curve_id
  L3_2 = A0_2._ratio
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.Cost
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_cost
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 0 < L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_tip
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_ActivityMonopoly_Game_RaiseTitle"
    L5_2 = A0_2._ratio
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1.SystemInfo
  L2_2 = L2_2.CurrencyNum
  if L1_2 > L2_2 then
    L2_2 = string
    L2_2 = L2_2.format
    L3_2 = "<color=\"#EB4D3D\">%s</color>"
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_start
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetInteractable
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.btn_start
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetInteractable
    L4_2 = true
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_material_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.MonopolyUtils
  L2_2 = L2_2.GetMonopolyCurrencyID
  L2_2 = L2_2()
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_material
  L7_2 = L3_2.ItemIconPath
  L4_2(L5_2, L6_2, L7_2)
end
L3_1._refresh_btn_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._ratio
  if 1 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_cost
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_start
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetInteractable
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_add
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetInteractable
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_minus
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetInteractable
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_tip
    if L1_2 ~= nil then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_tip
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = "UIText_ActivityMonopoly_Game_RaiseTitle"
      L4_2 = A0_2._ratio
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L3_1._update_ratio_and_btn_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = L0_1.GameInfo
  L1_2 = L1_2.RatioMaxLimit
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L3_2 = L2_2
  L2_2 = L2_2.MonopolyGetSeenGameRatio
  L2_2 = L2_2(L3_2)
  L2_2 = L1_2 > L2_2
  if L2_2 then
    L3_2 = G
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = "UIText_ActivityMonopoly_Event_Tips_AddGameRaiseValue"
    L3_2 = L3_2(L4_2)
    L4_2 = G
    L4_2 = L4_2.UIManager
    L4_2 = L4_2.load_and_async_show
    L5_2 = "Ui.ActivityMonopoly.Toast.ActivityMonopolyGameRatioHintDialog"
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.Prefs
    L4_2 = L4_2.User
    L5_2 = L4_2
    L4_2 = L4_2.MonopolySetSeenGameRatio
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
  end
end
L3_1._try_show_ratio_hint = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._ratio
  L1_2 = L1_2 - 1
  A0_2._ratio = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._ratio_change_callback
  L3_2 = A0_2._ratio_change_handler
  L4_2 = A0_2._ratio
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_btn_minus = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._ratio
  L1_2 = L1_2 + 1
  A0_2._ratio = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._ratio_change_callback
  L3_2 = A0_2._ratio_change_handler
  L4_2 = A0_2._ratio
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_btn_add = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._ratio
  L2_2 = L0_1.GameInfo
  L2_2 = L2_2.Ratio
  if L1_2 ~= L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.show_full_screen_block_for_packet
    L3_2 = CS
    L3_2 = L3_2.PBIBDHBOIGI
    L3_2 = L3_2.KIJHIIKJELL
    L1_2(L2_2, L3_2)
    L1_2 = L0_1
    L2_2 = L1_2
    L1_2 = L1_2.SendMonopolyGameRaiseRatioCsReq
    L3_2 = A0_2._ratio
    L1_2(L2_2, L3_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_ratio_rsp
    L1_2(L2_2)
  end
end
L3_1._on_btn_start = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.invoke_callback
  L3_2 = A0_2._start_callback
  L4_2 = A0_2._start_handler
  L2_2(L3_2, L4_2)
end
L3_1._on_ratio_rsp = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._ratio
  return L1_2
end
L3_1.get_ratio = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._start_callback = A1_2
  A0_2._start_handler = A2_2
end
L3_1.register_start_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._ratio_change_callback = A1_2
  A0_2._ratio_change_handler = A2_2
end
L3_1.register_ratio_change_callback = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A1_2 or L4_2
  if A1_2 == nil or not A1_2 then
    L4_2 = A3_2
  end
  A0_2._ratio = L4_2
  A0_2._curve_id = A2_2
  A0_2._min_ratio = 1
  L4_2 = math
  L4_2 = L4_2.min
  L5_2 = L0_1.GameInfo
  L5_2 = L5_2.RatioMaxLimit
  L6_2 = L1_1
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._max_ratio = L4_2
  L5_2 = A0_2
  L4_2 = A0_2._refresh_view
  L4_2(L5_2)
  L4_2 = L0_1.GameInfo
  L4_2 = L4_2.RatioUnlocked
  if L4_2 then
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.TutorialTaskUnlock
    L6_2 = L2_1
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._try_show_ratio_hint
    L4_2(L5_2)
  end
  L5_2 = A0_2
  L4_2 = A0_2._update_ratio_and_btn_view
  L4_2(L5_2)
end
L3_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_minus
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_add
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L3_1.set_bet_btn_interactable = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_start_btn
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L3_1.set_start_btn_active = L4_1
return L3_1
