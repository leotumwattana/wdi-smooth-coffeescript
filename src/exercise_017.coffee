formatDate = (date) ->
	day = date.getDate()
	month = date.getMonth() + 1
	year = date.getFullYear()

	day = "0" + day if day < 10
	month = "0" + month if month < 10

	"#{day}/#{month}/#{year}"


date = new Date
show formatDate(date)