$(document).ready(function(){
  $('#calendar').fullCalendar({
    height: 750,
    axisFormat: 'H(:mm)',
    timeFormat: 'H(:mm)',
    minTime: "00:00:00", 
	  maxTime: "24:00:00", 
    navLinks: true,
    selectable: true,
    selectHelper: true,
    events: '/events.json',
    editable: true,
    dayClick: function(date){ //イベントじゃないところをクリックしたとき(日をクリックしたとき)に実行
      var html = `<div>
                 <a class="add_event" href="/events/new">予定を追加する</a>
                  </div>`
      $(this).append(html);
      $("a.add_event")[0].click();
    },
    });
});