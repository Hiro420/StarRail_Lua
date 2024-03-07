local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "UIBinderFinalizer"
L0_1 = L0_1(L1_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeList
  L2_2 = A0_2
  L1_2(L2_2)
end
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.SuperScrollViewUtils
  L1_2 = L1_2.DisposeGrid
  L2_2 = A0_2
  L1_2(L2_2)
end
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2.onClick
  L2_2 = L1_2
  L1_2 = L1_2.RemoveAllListeners
  L1_2(L2_2)
end
L4_1 = {}
L4_1["SuperScrollView.LoopListView2"] = L1_1
L4_1["SuperScrollView.LoopGridView"] = L2_1
L4_1["RPG.Client.AnimatorButton"] = L3_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 ~= nil then
    L1_2 = type
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 == "userdata" then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = A0_2
  L1_2 = A0_2.IsEqualsNull
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = getmetatable
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.__name
    if L2_2 ~= nil then
      goto lbl_23
    end
  end
  do return end
  ::lbl_23::
  L2_2 = L1_2.__name
  L2_2 = L4_1[L2_2]
  if L2_2 == nil then
    return
  end
  L3_2 = L2_2
  L4_2 = A0_2
  L3_2(L4_2)
end
L0_1.Finalize = L5_1
