local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Story.RogueNousStoryHintDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Tools.RogueNousUtils"
L0_1(L1_1)
L0_1 = "UIText_RogueDLC_Layer_Name%d"
L1_1 = "SpriteOutput/UI/Rogue/DLC/Dice/Level/ImgRogueDlcDiamondMount%d.png"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "RogueNousStoryHintDialog"
L4_1 = G
L4_1 = L4_1.UIController
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueNousStoryHintDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._title_id = A1_2
  A0_2._content = A2_2
  A0_2._is_locked = A3_2
end
L2_1.init = L3_1
function L3_1(A0_2, A1_2)
  A0_2._show_nous_value_panel = true
  A0_2._story_id = A1_2
  A0_2._is_main_story = false
end
L2_1.set_show_nous_value_panel = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._show_nous_value_panel
  if L1_2 then
    L1_2 = A0_2._is_main_story
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._prepare_main_story_info
      L1_2(L2_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2._prepare_sub_story_info
      L1_2(L2_2)
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L1_2(L2_2, L3_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_basic_info
  L1_2(L2_2)
  L1_2 = A0_2._show_nous_value_panel
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_nous_value
    L1_2(L2_2)
  end
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueDimensionData
  L1_2 = L1_2.NousStoryInfo
  L2_2 = L1_2.SubMissionDict
  L3_2 = L2_2
  L2_2 = L2_2.TryGetValue
  L4_2 = A0_2._story_id
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  if L3_2 == nil then
    return
  end
  L4_2 = L3_2.Layer
  A0_2._layer_num = L4_2
end
L2_1._prepare_sub_story_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ChessRogueModule
  L1_2 = L1_2.ChessRogueDimensionData
  L1_2 = L1_2.NousStoryInfo
  L2_2 = L1_2.MainMissionDict
  L3_2 = L2_2
  L2_2 = L2_2.TryGetValue
  L4_2 = A0_2._story_id
  L2_2, L3_2 = L2_2(L3_2, L4_2)
  if L3_2 == nil then
    return
  end
  L4_2 = L3_2.Layer
  A0_2._layer_num = L4_2
end
L2_1._prepare_main_story_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._title_id
  L1_2(L2_2, L3_2)
  L1_2 = type
  L2_2 = A0_2._content
  L1_2 = L1_2(L2_2)
  if L1_2 == "string" then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_desc
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = A0_2._content
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_desc
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._content
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_locked
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_locked
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon_untriggered
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_locked
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L2_1._setup_basic_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_nous_value
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_layer_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = L0_1
  L5_2 = A0_2._layer_num
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2.async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_layer_num
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = L1_1
  L6_2 = A0_2._layer_num
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.create_nous_value_panel_handbook
  L2_2 = A0_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_nous_value_slot
  L4_2 = A0_2._story_id
  L5_2 = A0_2._is_main_story
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._nous_value_panel = L1_2
end
L2_1._setup_nous_value = L3_1
return L2_1
