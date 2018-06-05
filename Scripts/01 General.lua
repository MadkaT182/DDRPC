--"Password" generator
function code_line()
	local code = "";
	for i = 1,16 do
		local charset = math.random(1,3);
		if charset == 1 then
			--48-57 0-9
			code = code..string.char(math.random(48,57));
		elseif charset == 2 then
			--65-90 A-Z
			code = code..string.char(math.random(65,90));
		else
			--97-122 a-z
			code = code..string.char(math.random(97,122));
		end
	end
	return code;
end