local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDimensionIncrementIcon"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Settlement.Components.ChessRogueCabinetMissionFinishItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueCabinetMissionFinishItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animation_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = "DicePassLvMissionItem_FadeIn"
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_fade_finished
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A0_2
  L3_2 = A0_2._load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.icon
  L6_2 = A1_2.CabinetIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.Title
  L3_2(L4_2, L5_2)
  L3_2 = 0
  L4_2 = A1_2.QuestData
  if L4_2 ~= nil then
    L4_2 = A1_2.QuestData
    L3_2 = L4_2.TotalProgress
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.content
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A1_2.MissionDesc
  L7_2 = table
  L7_2 = L7_2.unpack
  L8_2 = G
  L8_2 = L8_2.Utils
  L8_2 = L8_2.create_lua_table_from_cs_array
  L9_2 = A1_2.MissionDescParams
  L8_2, L9_2 = L8_2(L9_2)
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.increment_list_view
  L5_2 = L4_2
  L4_2 = L4_2.rebind_child_node
  L6_2 = A1_2.DimensionIncrementsConfigArray
  L6_2 = L6_2.Length
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.increment_list_view
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = G
  L6_2 = L6_2.Utils
  L6_2 = L6_2.create_lua_table_from_cs_array
  L7_2 = A1_2.DimensionIncrementsConfigArray
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.canvas_group
  L4_2.alpha = A2_2
  L4_2 = CS
  L4_2 = L4_2.UnityEngine
  L4_2 = L4_2.UI
  L4_2 = L4_2.LayoutRebuilder
  L4_2 = L4_2.ForceRebuildLayoutImmediate
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L4_2(L5_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._fade_finish_cbk = A1_2
  A0_2._fade_finish_listener = A2_2
end
L0_1.register_fade_finish_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 1
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.canvas_group
    L0_3.alpha = 1
    L0_3 = A0_2._binder
    L0_3 = L0_3.animation_cmpt
    L1_3 = L0_3
    L0_3 = L0_3.Play
    L2_3 = "DicePassLvMissionItem_FadeIn"
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2)
end
L0_1.play_fade_in = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._fade_finish_cbk
  if L1_2 then
    L1_2 = A0_2._fade_finish_listener
    if L1_2 then
      L1_2 = A0_2._fade_finish_cbk
      L2_2 = A0_2._fade_finish_listener
      L1_2(L2_2)
    end
  end
end
L0_1._on_fade_finished = L1_1
return L0_1
