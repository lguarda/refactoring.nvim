local utils = require("refactoring.utils")
local Region = require("refactoring.region")

local function selection_setup(refactor)
    local region = Region:from_current_selection()
    local scope = utils.get_scope_over_selection(refactor.root, region, refactor.lang)

    refactor.region = region
    refactor.scope = scope

    if refactor.scope == nil then
        return false, "Scope is nil"
    end

    return true, refactor
end

return selection_setup
