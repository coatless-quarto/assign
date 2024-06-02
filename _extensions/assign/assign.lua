
-- Reformat all Div content
function Div(div)

  if not (div.classes:includes("sol") or div.classes:includes("rubric") or div.classes:includes("direction") ) then
    return nil
  end

  local behavior = "content-visible" -- or "content-hidden", as necessary

  local value_condition = {}
  if div.classes:includes("sol") then 
    value_condition = {"when-profile", "solution"}
  elseif div.classes:includes("rubric") then 
    value_condition = {"when-profile", "rubric"}
  elseif div.classes:includes("direction") then 
    value_condition = {"when-profile", "assign"}
  end 

  local condition = {
    value_condition
    -- other conditions
  }

  return quarto.ConditionalBlock({
    node = div, -- this is the div containing your content
    behavior = behavior,
    condition = condition
  })
end


