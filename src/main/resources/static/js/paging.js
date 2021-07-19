//JQuery Paging Plugin v1.4
//Written By Adnan ŞAHİN

(function($) {
  "use strict";

  $.fn.JPaging = function(param) {
    var params = $.extend({ pageSize: 10, visiblePageSize: 5 }, param);

    var $pageSize = params.pageSize;

    var $visiblePageSize = params.visiblePageSize;

    var $thisId = $(this).attr("id");
    // $("<div id='paging'></div>").insertAfter(this);

    var $countLi = $(this).find("tr").length;


    var $pageCount = Math.round($countLi / $pageSize);

      var $currentIndex = 2;
      // var $currentIndex = 1;


    if ($countLi > 0) {
      if ($pageSize * $pageCount < $countLi) {
        $pageCount++;
      }
    }
    if ($visiblePageSize == 0) {
      $visiblePageSize = 1;
    }

    //sayfa linkleri
    if ($pageCount >= 1 && $visiblePageSize >= 1) {
      $("#paging").append(
        "<li><a href='javascript:void(0)' style='font-weight:700;'></li>" + "<"
      );
      if ($pageCount > $visiblePageSize) {
        $("#paging").append(
          "<li><a href='javascript:void(0)' id='pre_point' class='hidden'></li>" + "..."
        );
      }


      if ($pageCount < $visiblePageSize) {
        for (var i = 0; i <= $pageCount; i++) {
          if (i <= $visiblePageSize) {
            if (i==0){
              $("#paging").append("<li style='display: none'><a href='javascript:void(0)' >" + i + "</a></li>");

            }else{
              $("#paging").append("<li><a href='javascript:void(0)'>" + i + "</a></li>");

            }
          } else if (i > $visiblePageSize) {
            $("#paging").append(
                "<li><a href='javascript:void(0)' class='hidden'>" + i + "</a></li>"
            );
          }
        }
      }else{
        for (var i = 1; i <= $pageCount; i++) {
          if (i <= $visiblePageSize) {
            $("#paging").append("<li><a href='javascript:void(0)'>" + i + "</a></li>");
          } else if (i > $visiblePageSize) {
            $("#paging").append(
                "<li><a href='javascript:void(0)' class='hidden'>" + i + "</a></li>"
            );
          }
        }
      }



      if ($pageCount > $visiblePageSize) {
        $("#paging").append(
          "<li><a href='javascript:void(0)' id='next_point'></li>" + "..."
        );
      }
      $("#paging").append(
        "<li><a href='javascript:void(0)' style='font-weight:700;'></li>" + ">"
      );

      $("tbody#" + $thisId + " tr:gt(" + ($pageSize - 1) + ")").hide();
      $("#paging li:eq(" + $currentIndex + ")").addClass("active");
    }
    $("#pre_point").on("click", function(event) {
      event.preventDefault();
      var prevIndex = $(this)
        .nextAll("a:not('.hidden,#next_point')")
        .first()
        .index();
      var hideIndex = prevIndex + $visiblePageSize - 1;
      $("#paging li:eq(" + hideIndex + ")").addClass("hidden");
      $("#paging li").removeClass("active");
      $("#paging li:eq(" + (prevIndex - 1) + ")")
        .removeClass("hidden")
        .addClass("active");
      $currentIndex = prevIndex - 1;
      var gt = $pageSize * ($currentIndex - 1);
      $("tbody#" + $thisId + " tr").hide();
      for (var i = gt - $pageSize; i < gt; i++) {
        $("tbody#" + $thisId + " tr:eq(" + i + ")").show();
      }
      if ($currentIndex - 1 == $pageCount && $visiblePageSize < $pageCount) {
        $("#next_point").addClass("hidden");
      } else if (
        $currentIndex < $pageCount + $visiblePageSize &&
        $visiblePageSize < $pageCount
      ) {
        $("#next_point").removeClass("hidden");
      }
      if ($currentIndex > 2 && $visiblePageSize < $pageCount) {
        $("#pre_point").removeClass("hidden");
      } else if ($currentIndex <= 2 && $visiblePageSize < $pageCount) {
        $("#pre_point").addClass("hidden");
      }
    });
    $("#next_point").on("click", function(event) {
      event.preventDefault();
      var prevIndex = $(this)
        .prevAll("a:not('.hidden')")
        .first()
        .index();
      console.log("prevIndex:" + prevIndex);
      var hideIndex = prevIndex - $visiblePageSize + 1;
      $("#paging li:eq(" + hideIndex + ")").addClass("hidden");
      $("#paging li").removeClass("active");
      $("#paging li:eq(" + (prevIndex + 1) + ")")
        .removeClass("hidden")
        .addClass("active");
      $currentIndex = prevIndex;
      var gt = $pageSize * $currentIndex;
      $("tbody#" + $thisId + " tr").hide();
      for (var i = gt - $pageSize; i < gt; i++) {
        $("tbody#" + $thisId + " tr:eq(" + i + ")").show();
      }
      if ($currentIndex == $pageCount && $visiblePageSize < $pageCount) {
        $("#next_point").addClass("hidden");
      } else if ($currentIndex < $pageCount && $visiblePageSize < $pageCount) {
        $("#next_point").removeClass("hidden");
      }
      if ($currentIndex > $visiblePageSize && $visiblePageSize < $pageCount) {
        $("#pre_point").removeClass("hidden");
      } else if (
        $currentIndex < $visiblePageSize &&
        $visiblePageSize < $pageCount
      ) {
        $("#pre_point").addClass("hidden");
      }
    });
    $("#paging").on("click", "a:not('#pre_point,#next_point')", function() {
      var $index = $(this).index();
      console.log(
        "curindex:" +
          $currentIndex +
          " visible_page_count:" +
          $visiblePageSize +
          " pageCount:" +
          $pageCount
      );
      if ($(this).is("#paging li:first") === true) {
        if ($currentIndex === 2) {
          return false;
        }
        if ($currentIndex - 2 == $pageCount && $visiblePageSize < $pageCount) {
          $("#next_point").addClass("hidden");
        } else if (
          $currentIndex - 2 <= $pageCount - $visiblePageSize &&
          $visiblePageSize < $pageCount
        ) {
          $("#next_point").removeClass("hidden");
        }
        if ($currentIndex - 1 > 2 && $visiblePageSize < $pageCount) {
          $("#pre_point").removeClass("hidden");
        } else if ($currentIndex - 1 <= 2 && $visiblePageSize < $pageCount) {
          $("#pre_point").addClass("hidden");
        }
        $currentIndex = $currentIndex - 1;
        var gtFirst = $pageSize * ($currentIndex - 1);
        $("#paging li").removeClass("active");
        $("#paging li:not('#next_point'):eq(" + $currentIndex + ")").addClass(
          "active"
        );
        $("#paging li:not('#next_point'):eq(" + $currentIndex + ")").removeClass(
          "hidden"
        );
        if ($("#paging li.hidden").length >= 1) {
          $(
            "#paging li:not('#next_point,#paging li:last'):eq(" +
              ($currentIndex + $visiblePageSize) +
              ")"
          ).addClass("hidden");
        }
        $("tbody#" + $thisId + " tr").hide();
        for (var f = gtFirst - $pageSize; f < gtFirst; f++) {
          $("tbody#" + $thisId + " tr:eq(" + f + ")").show();
        }
        console.log(
          "end curindex:" +
            $currentIndex +
            " visible_page_count:" +
            $visiblePageSize +
            " pageCount:" +
            $pageCount
        );
        return false;
      }
      if ($(this).is("#paging li:last") === true) {
        if ($currentIndex - 1 === $pageCount) {
          return false;
        }
        if ($currentIndex == $pageCount && $visiblePageSize < $pageCount) {
          $("#next_point").addClass("hidden");
        } else if (
          $currentIndex < $pageCount &&
          $visiblePageSize < $pageCount
        ) {
          $("#next_point").removeClass("hidden");
        }
        if ($currentIndex > $visiblePageSize && $visiblePageSize < $pageCount) {
          $("#pre_point").removeClass("hidden");
        } else if (
          $currentIndex < $visiblePageSize &&
          $visiblePageSize < $pageCount
        ) {
          $("#pre_point").addClass("hidden");
        }
        $currentIndex = $currentIndex + 1;
        var gtLast = $pageSize * ($currentIndex - 1);
        $("#paging li").removeClass("active");
        $("#paging li:eq(" + $currentIndex + ")").addClass("active");
        $("#paging li:eq(" + $currentIndex + ")").removeClass("hidden");
        if (
          $currentIndex - 1 > $visiblePageSize &&
          $("#paging li.hidden").length >= 1
        ) {
          console.log("cc" + ($currentIndex - $visiblePageSize));
          $(
            "#paging li:not('#next_point,#paging li:last'):eq(" +
              ($currentIndex - $visiblePageSize) +
              ")"
          ).addClass("hidden");
        }
        $("tbody#" + $thisId + " tr").hide();
        for (var k = gtLast - $pageSize; k < gtLast; k++) {
          $("tbody#" + $thisId + " tr:eq(" + k + ")").show();
        }
        return false;
      }
      $currentIndex = $index - 1;
      var gt = $pageSize * $currentIndex;
      $("#paging li").removeClass("active");
      $(this).addClass("active");
      $("tbody#" + $thisId + " tr").hide();
      for (var i = gt - $pageSize; i < gt; i++) {
        $("tbody#" + $thisId + " tr:eq(" + i + ")").show();
      }
    });
  };
})(jQuery);
