// Setup the calendar with the current date
$(document).ready(function(){
    var date = new Date();
    var today = date.getDate();
    // Set click handlers for DOM elements
    $(".right-button").click({date: date}, next_year);
    $(".left-button").click({date: date}, prev_year);
    $(".month").click({date: date}, month_click);
    $("#add-button").click({date: date}, new_event);
    // Set current month as active
    $(".months-row").children().eq(date.getMonth()).addClass("active-month");
    init_calendar(date);
    var events = check_events(today, date.getMonth()+1, date.getFullYear());
    show_events(events, months[date.getMonth()], today);
});

// Initialize the calendar by appending the HTML dates
//달력을 초기화하고, 달력의 일자에 클릭 이벤트를 추가
function init_calendar(date) {
    $(".tbody").empty(); //tbody 클래스를 가진 HTML 요소의 내용지우기
    $(".events-container").empty(); 
    var calendar_days = $(".tbody");
    var month = date.getMonth();
    var year = date.getFullYear();
    var day_count = days_in_month(month, year);
    var row = $("<tr class='table-row'></tr>");
    var today = date.getDate();
    // Set date to 1 to find the first day of the month
    date.setDate(1);
    var first_day = date.getDay();
    // 35+firstDay is the number of date elements to be added to the dates table
    // 35 is from (7 days in a week) * (up to 5 rows of dates in a month)
    for(var i=0; i<35+first_day; i++) {
        // Since some of the elements will be blank, 
        // need to calculate actual date from index
        var day = i-first_day+1;
        // If it is a sunday, make a new row
        if(i%7===0) {
            calendar_days.append(row);
            row = $("<tr class='table-row'></tr>");
        }
        // if current index isn't a day in this month, make it blank
        if(i < first_day || day > day_count) {
            var curr_date = $("<td class='table-date nil'>"+"</td>");
            row.append(curr_date);
        }   
        else {
            var curr_date = $("<td class='table-date'>"+day+"</td>");
            var events = check_events(day, month+1, year);
            if(today===day && $(".active-date").length===0) {
                curr_date.addClass("active-date");
                show_events(events, months[month], day);
            }
            // If this date has any events, style it with .event-date
            if(events.length!==0) {
                curr_date.addClass("event-date");
            }
            // Set onClick handler for clicking a date
            curr_date.click({events: events, month: months[month], day:day}, date_click);
            row.append(curr_date);
        }
    }
    // Append the last row and set the current year
    calendar_days.append(row);
    $(".year").text(year);
}

// Get the number of days in a given month/year
function days_in_month(month, year) {
    var monthStart = new Date(year, month, 1);
    var monthEnd = new Date(year, month + 1, 1);
    return (monthEnd - monthStart) / (1000 * 60 * 60 * 24);    
}

// Event handler for when a date is clicked
function date_click(event) {
    $(".events-container").show(250);
    $("#dialog").hide(250);
    $(".active-date").removeClass("active-date");
    $(this).addClass("active-date");
    show_events(event.data.events, event.data.month, event.data.day);
};

// Event handler for when a month is clicked
function month_click(event) {
    $(".events-container").show(250);
    $("#dialog").hide(250);
    var date = event.data.date;
    $(".active-month").removeClass("active-month");
    $(this).addClass("active-month");
    var new_month = $(".month").index(this);
    date.setMonth(new_month);
    init_calendar(date);
}

// Event handler for when the year right-button is clicked
function next_year(event) {
    $("#dialog").hide(250);
    var date = event.data.date;
    var new_year = date.getFullYear()+1;
    $("year").html(new_year);
    date.setFullYear(new_year);
    init_calendar(date);
}

// Event handler for when the year left-button is clicked
function prev_year(event) {
    $("#dialog").hide(250);
    var date = event.data.date;
    var new_year = date.getFullYear()-1;
    $("year").html(new_year);
    date.setFullYear(new_year);
    init_calendar(date);
}

// Event handler for clicking the new event button
function new_event(event) {
    // if a date isn't selected then do nothing
    if($(".active-date").length===0)
        return;
    // remove red error input on click
    $("input").click(function(){
        $(this).removeClass("error-input");
    })
    // empty inputs and hide events
    $("#dialog input[type=text]").val('');
    $("#dialog input[type=number]").val('');
    $(".events-container").hide(250);
    $("#dialog").show(250);
    // Event handler for cancel button
    $("#cancel-button").click(function() {
        $("#name").removeClass("error-input");
        $("#count").removeClass("error-input");
        $("#dialog").hide(250);
        $(".events-container").show(250);
    });
    // 예약하기 버튼 눌렀을때
    $("#ok-button").unbind().click({date: event.data.date}, function() { 
	//이벤트가 발생하면 해당 이벤트에 대한 정보가 이 핸들러 함수로 전달
	//click이 발생하면 클릭된 요소정보가 click 핸들러 함수로 전달
	//data 속성을 통해 date 변수에 값을 전달
        var date = event.data.date;
        var owner_name = $("#owner_name").val();
        var pet_name = $("#pet__name").val();
        var owner_tel = parseInt($("#owner_tel").val());
        var owner_addr = $("#owner_addr").val();
        var time = $("#collapseOne").val();
        var reserv_memo = $("#reser_memo").val();
		var day = parseInt($(".active-date").html()); //선택된 날짜를 숫자로 변환
        //var count = parseInt($("#count").val().trim());
		
		//1글자이상 입력 검증
		if (owner_name.length === 0) {
		  $("#owner_name").addClass("error-input");
		  alert('최소 한글자 이상 입력하세요');
		}
		
		if (pet_name.length === 0) {
		  $("#pet_name").addClass("error-input");
		  alert('최소 한글자 이상 입력하세요');
		}
		
		if (owner_addr.length === 0) {
		  $("#owner_addr").addClass("error-input");
		  alert('최소 한글자 이상 입력하세요');
		}
		
		if (owner_tel.length === 0) {
		  $("#owner_tel").addClass("error-input");
		  alert('최소 한글자 이상 입력하세요');
		} else if (isNaN(owner_tel)) {
		  $("#owner_tel").addClass("error-input");
		  alert('숫자만 입력이 가능합니다')
		}

        else {
            $("#dialog").hide(250);
            console.log("new event");
            new_event_json(owner_name, pet_name, owner_tel, owner_addr, time, reserv_memo, date, day);
            date.setDate(day);
            init_calendar(date);
        }
    });
}

// Adds a json event to event_data
function new_event_json(owner_name, pet_name, owner_tel, owner_addr, time, reserv_memo, date, day) {
    var event = {
        "owner_name": owner_name,
        "pet_name": pet_name,
        "owner_tel": owner_tel,
        "owner_addr": owner_addr,
        "time": time,
        "reserv_memo": reserv_memo,
        "year": date.getFullYear(),
        "month": date.getMonth()+1,
        "day": day
    };
    event_data["events"].push(event);
}

// Display all events of the selected date in card views
function show_events(events, month, day) {
    // Clear the dates container
    $(".events-container").empty();
    $(".events-container").show(250);
    console.log(event_data["events"]);
    // If there are no events for this date, notify the user
    if(events.length===0) {
        var event_card = $("<div class='event-card'></div>");
        var event_name = $("<div class='event-name'> "+month+" "+day+" 의 일정이 없습니다</div>");
        $(event_card).css({ "border-left": "10px solid #FF1744" });
        $(event_card).append(event_name);
        $(".events-container").append(event_card);
    }
    else {
        // Go through and add each event as a card to the events container
        for(var i=0; i<events.length; i++) {
            var event_card = $("<div class='event-card'></div>");
            var event_name = $("<div class='event-name'>"+events[i]["owner_name"]+":</div>");
            //var event_count = $("<div class='event-count'>"+events[i]["invited_count"]+" Invited</div>");
            if(events[i]["cancelled"]===true) {
                $(event_card).css({
                    "border-left": "10px solid #FF1744"
                });
                event_count = $("<div class='event-cancelled'>Cancelled</div>");
            }
            $(event_card).append(event_name).append(event_count);
            $(".events-container").append(event_card);
        }
    }
}

// Checks if a specific date has any events
function check_events(day, month, year) {
    var events = [];
    for(var i=0; i<event_data["events"].length; i++) {
        var event = event_data["events"][i];
        if(event["day"]===day &&
            event["month"]===month &&
            event["year"]===year) {
                events.push(event);
            }
    }
    return events;
}

// Given data for events in JSON format
var event_data = {
    "events": [
    {
        "occasion": " Repeated Test Event ",
        "invited_count": 120,
        "year": 2017,
        "month": 5,
        "day": 10,
        "cancelled": true
    },
    {
        "occasion": " Repeated Test Event ",
        "invited_count": 120,
        "year": 2017,
        "month": 5,
        "day": 10,
        "cancelled": true
    },
        {
        "occasion": " Repeated Test Event ",
        "invited_count": 120,
        "year": 2017,
        "month": 5,
        "day": 10,
        "cancelled": true
    },
    {
        "occasion": " Repeated Test Event ",
        "invited_count": 120,
        "year": 2017,
        "month": 5,
        "day": 10
    },
        {
        "occasion": " Repeated Test Event ",
        "invited_count": 120,
        "year": 2017,
        "month": 5,
        "day": 10,
        "cancelled": true
    },
    {
        "occasion": " Repeated Test Event ",
        "invited_count": 120,
        "year": 2017,
        "month": 5,
        "day": 10
    },
        {
        "occasion": " Repeated Test Event ",
        "invited_count": 120,
        "year": 2017,
        "month": 5,
        "day": 10,
        "cancelled": true
    },
    {
        "occasion": " Repeated Test Event ",
        "invited_count": 120,
        "year": 2017,
        "month": 5,
        "day": 10
    },
        {
        "occasion": " Repeated Test Event ",
        "invited_count": 120,
        "year": 2017,
        "month": 5,
        "day": 10,
        "cancelled": true
    },
    {
        "occasion": " Repeated Test Event ",
        "invited_count": 120,
        "year": 2017,
        "month": 5,
        "day": 10
    },
    {
        "occasion": " Test Event",
        "invited_count": 120,
        "year": 2017,
        "month": 5,
        "day": 11
    }
    ]
};

const months = [ 
    "January", 
    "February", 
    "March", 
    "April", 
    "May", 
    "June", 
    "July", 
    "August", 
    "September", 
    "October", 
    "November", 
    "December" 
];