	function searchIn(source, keywords)
	{
		var count = 0;
		var pos = source.indexOf(keywords);
		while(pos > -1){
		    ++count;
		    pos = source.indexOf(keywords, ++pos);
		}
		return count;
	}
	
	$(document).ready(function() {
		$.get("getpoets", function(responseJson) {
			$("#somediv").empty();
			var $ul = $("<ul>").appendTo($("#somediv"));
			$.each(responseJson, function(index, item) {
				var $li = $("<li>");
				$li.appendTo($ul);
				$li.text(item.title + " - " + item.publish);
				
				var $p = $("<p>")
				$p.appendTo($li);
				
				var flag = false;
				$li.on("click", function() {
					if (flag != true)
					{
						flag = true;
						
						$p.empty();
						$p.text(item.content);

						var $searchField = $("<input type='text' id='search' placeholder='Search...' />");
						$li.after($searchField);
						
						var $matches = $("<p>");
						$searchField.after($matches);
						$searchField.keyup(function() {
							$matches.empty();
							if (!!$searchField.val()) {
								$matches.text(searchIn(item.content, $searchField.val()));
							}
						});
					}
				});
			});
		});
	});