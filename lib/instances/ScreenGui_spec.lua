local Instance = import("../Instance")
local typeof = import("../functions/typeof")

describe("instances.ScreenGui", function()
	it("should instantiate", function()
		local instance = Instance.new("ScreenGui")

		assert.not_nil(instance)
	end)

	it("should have properties defined", function()
		local instance = Instance.new("ScreenGui")
		assert.equals(typeof(instance.ZIndexBehavior), "number")
	end)

	describe("DisplayOrder", function()
		it("should have a value that is a number", function()
			local instance = Instance.new("ScreenGui")
			assert.equals(type(instance.DisplayOrder), "number")
		end)

		it("should be settable", function()
			local instance = Instance.new("ScreenGui")
			instance.DisplayOrder = 2
			assert.equals(instance.DisplayOrder, 2)
		end)

		it("should only accept numbers", function()
			local instance = Instance.new("ScreenGui")
			assert.has.errors(function()
				instance.DisplayOrder = "string"
			end)
		end)
	end)

	describe("AbsoluteSize", function()
		it("should return a Vector2", function()
			local instance = Instance.new("ScreenGui")
			assert.equals(typeof(instance.AbsoluteSize), "Vector2")
		end)
	end)
end)