function PULL(params)
    local request = fetch({
		url = API_URL..params,
		method = "GET",
		headers = { ["Content-Type"] = "application/json" }
	})

    return request
end

function POST(body)
	coroutine.wrap(function()
    	local request = fetch({
			url = API_URL,
			method = "POST",
			headers = { ["Content-Type"] = "application/json" },
        	body = body
		})
	end)()
end