$(document).ready(function() {
  $(".menu").on("click", function() {
    $(this).find(".sidebar_sub_cat").toggleClass("hidden");
    $(this).find('.arrow-desc').toggleClass('fa fa-sort-asc fa fa-sort-desc');
    // $(this).find("h2").css("border-bottom", "3px solid #1ECBCA");
  });
})


