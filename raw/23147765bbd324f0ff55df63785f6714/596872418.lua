local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Phone.HudIconItemPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.StaminaTipPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.DescTipPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "HudIconItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._data = nil
  A0_2._on_click_handler = nil
  A0_2._on_click_listener = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2.setup_icon
  L4_2 = A1_2.FuncHudIconPath
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TutorialSupportModule
  L3_2 = L2_2
  L2_2 = L2_2.SetNodeDynamicKey
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.gameObject
  L5_2 = A0_2._data
  L5_2 = L5_2.ID
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = A0_2._data
  L4_2 = L4_2.RedDotHud
  L5_2 = nil
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.go_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.go_reddot
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = G
  L4_2 = L4_2.StrExt
  L4_2 = L4_2.IsNullOrEmpty
  L5_2 = A0_2._data
  L5_2 = L5_2.RedDotHud
  L4_2 = L4_2(L5_2)
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_pop_up_tips
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.icon
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_icon = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.GotoID
  L2_2 = GotoType2DefaultGotoID
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GotoType
  L3_2 = L3_2.DailyMission
  L3_2 = #L3_2
  L2_2 = L2_2[L3_2]
  if L1_2 == L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_stamina_tip
    L1_2(L2_2)
  else
    L1_2 = A0_2._data
    L1_2 = L1_2.GotoID
    L2_2 = GotoType2DefaultGotoID
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.GotoType
    L3_2 = L3_2.ChessRogueCabinet
    L3_2 = #L3_2
    L2_2 = L2_2[L3_2]
    if L1_2 == L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2._setup_rogue_dimension_tip
      L1_2(L2_2)
    end
  end
end
L0_1.setup_pop_up_tips = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.prefab_loadmeta_popup_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._stamina_tip_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.instantiate_object
    L3_2 = A0_2._binder
    L3_2 = L3_2.prefab_loadmeta_popup_tip
    L3_2 = L3_2.MultiPrefabList
    L3_2 = L3_2[1]
    L4_2 = A0_2._binder
    L4_2 = L4_2.prefab_loadmeta_popup_tip
    L4_2 = L4_2.transform
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.StaminaTipPanel
    L5_2 = G
    L5_2 = L5_2.StaminaTipPanelBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    A0_2._stamina_tip_panel = L2_2
    L2_2 = A0_2._stamina_tip_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L1_2 = A0_2._stamina_tip_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._setup_stamina_tip = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_UIManager
  L2_2 = L1_2
  L1_2 = L1_2.TopPage
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Name
  if L1_2 == "ChessRogueMazeMainPage" then
    L1_2 = A0_2._binder
    L1_2 = L1_2.prefab_loadmeta_popup_tip
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._rogue_dimension_tip_panel
    if L1_2 == nil then
      L2_2 = A0_2
      L1_2 = A0_2.instantiate_object
      L3_2 = A0_2._binder
      L3_2 = L3_2.prefab_loadmeta_popup_tip
      L3_2 = L3_2.MultiPrefabList
      L3_2 = L3_2[0]
      L4_2 = A0_2._binder
      L4_2 = L4_2.prefab_loadmeta_popup_tip
      L4_2 = L4_2.transform
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.create_panel
      L4_2 = G
      L4_2 = L4_2.DescTipPanel
      L5_2 = G
      L5_2 = L5_2.DescTipPanelBinder
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      A0_2._rogue_dimension_tip_panel = L2_2
      L2_2 = A0_2._rogue_dimension_tip_panel
      L3_2 = L2_2
      L2_2 = L2_2.bind
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.ChessRogueModule
    L1_2 = L1_2.ChessRogueDimensionData
    L1_2 = L1_2.CabinetInfo
    L3_2 = L1_2
    L2_2 = L1_2.GetNormalCabinetInfo
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2
    L2_2 = L2_2.GetEnumerator
    L2_2 = L2_2(L3_2)
    L3_2 = 0
    while true do
      L5_2 = L2_2
      L4_2 = L2_2.MoveNext
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        break
      end
      L4_2 = L2_2.Current
      L4_2 = L4_2.QuestData
      if L4_2 then
        L4_2 = L2_2.Current
        L4_2 = L4_2.QuestData
        L4_2 = L4_2.Status
        L5_2 = CS
        L5_2 = L5_2.LEOGBBOPKKO
        L5_2 = L5_2.KBBBFCIHJPC
        if L4_2 == L5_2 then
          L3_2 = L3_2 + 1
        end
      end
    end
    if 0 < L3_2 then
      L4_2 = A0_2._rogue_dimension_tip_panel
      L5_2 = L4_2
      L4_2 = L4_2.setup_text
      L6_2 = "UIText_RogueDLC_Cabinet_HUD_Process"
      L7_2 = L3_2
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = A0_2._rogue_dimension_tip_panel
      L5_2 = L4_2
      L4_2 = L4_2.setup_view
      L6_2 = false
      L4_2(L5_2, L6_2)
    else
      L4_2 = A0_2._rogue_dimension_tip_panel
      L5_2 = L4_2
      L4_2 = L4_2.safe_set_active
      L6_2 = false
      L4_2(L5_2, L6_2)
    end
  end
end
L0_1._setup_rogue_dimension_tip = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_click_handler = A1_2
  A0_2._on_click_listener = A2_2
end
L0_1.register_click_event = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.in_control_tip
  L4_2 = L3_2
  L3_2 = L3_2.SetInControlTipKey
  L5_2 = A1_2
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = false
  end
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_in_control_button
  L4_2 = L3_2
  L3_2 = L3_2.SetActionName
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.set_in_control_tip_key = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  if nil ~= L1_2 then
    L1_2 = G
    L1_2 = L1_2.GotoManager
    L1_2 = L1_2.Goto
    L2_2 = A0_2._data
    L2_2 = L2_2.GotoID
    L1_2(L2_2)
  end
  L1_2 = A0_2._on_click_handler
  if L1_2 ~= nil then
    L1_2 = A0_2._on_click_handler
    L2_2 = A0_2._on_click_listener
    L1_2(L2_2)
  end
end
L0_1._on_btn_root = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.prefab_loadmeta_popup_tip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L1_1
return L0_1
