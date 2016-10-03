def fiw n
	numbers_words = {
		1000000 => 'MILLION',
		1000 => 'THOUSAND',
		100 => 'HUNDRED',
		90 => 'NINETY',
		80 => 'EIGHTY',
		70 => 'SEVENTY',
		60 => 'SIXTY',
		50 => 'FIFTY',
		40 => 'FOURTY',
		30 => 'THIRTY',
		20 => 'TWENTY',
		19 => 'NINETEEN',
		18 => 'EIGHTEEN',
		17 => 'SEVENTEEN',
		16 => 'SIXTEEN',
		15 => 'FIFTEEN',
		14 => 'FOURTEEN',
		13 => 'THIRTEEN',
		12 => 'TWELVE',
		11 => 'ELEVEN',
		10 => 'TEN',
		9 => 'NINE',
		8 => 'EIGHT',
		7 => 'SEVEN',
		6 => 'SIX',
		5 => 'FIVE',
		4 => 'FOUR',
		3 => 'THREE',
		2 => 'TWO',
		1 => 'ONE'
	}
	space = ''
	numbers_words.each do |number, word|
		if n == 0
			return space
		elsif n.to_s.length == 1 && n/number > 0
			return space + word
		elsif n < 100 && n/number > 0
			return space + word if n%number == 0
			return space + word + ' ' + (fiw n%number)
		elsif n/number > 0
			return space + (fiw n/number) + ' ' + word + ' ' + (fiw n%number)
		end
	end 		
end