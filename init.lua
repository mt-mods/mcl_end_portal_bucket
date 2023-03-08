local S = minetest.get_translator(minetest.get_current_modname())

minetest.override_item("mcl_portals:portal_end", {
	liquidtype = "source", 
	liquid_alternative_flowing = "mcl_portals:portal_end", 
	liquid_alternative_source = "mcl_portals:portal_end",
	liquid_renewable = false,
	liquid_range = 0,
})

mcl_buckets.register_liquid({
	bucketname = "mcl_end_portal_bucket:end_portal_bucket",
	source_place = function(pos)
		return "mcl_portals:portal_end"
	end,
	source_take = {"mcl_portals:portal_end"},
	inventory_image = "mcl_end_portal_bucket_bucket.png",
	name = S("Bucket of End Portal"),
	londesc = S("This bucket contains end portal which can be placed."),
	usagehelp = S("Place it to empty the bucket and place an end portal."),
	tt_help = S("Used to place end portal."),
})
