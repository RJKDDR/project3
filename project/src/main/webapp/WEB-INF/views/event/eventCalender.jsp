<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<link href='assets/css/calendar.css' rel='stylesheet' />
<script src='assets/js/calendar.js'></script>
<script src='assets/js/locales-all.js'></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,'
      },
      locale: "ko",
      navLinks: true, // can click day/week names to navigate views
      selectable: true,
      selectMirror: true,
      select: function(arg) {
        var title = prompt('Event Title:');
        if (title) {
          calendar.addEvent({
            title: title,
            start: arg.start,
            end: arg.end,
            allDay: arg.allDay
          })
        }
        calendar.unselect()
      },
      eventClick: function(arg) {
        if (confirm('Are you sure you want to delete this event?')) {
          arg.event.remove()
        }
      },
      editable: true,
      dayMaxEvents: true, // allow "more" link when too many events
      events: [
        {
          color: '#799fbf',
          title: 'project', 
          start: '2022-02-12'
        }
      ]
    });

    calendar.render();
  });

</script>
<style>

  body {
   
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    
  }

  #calendar {
    max-width: 1100px;
    margin: 0 auto;
  }

</style>
</head>
<body>
	
  <form action="eventCalender.do" method="post"><br><br><br>
  <div id='calendar'>
  </div>
  </form>

</body>
</html>