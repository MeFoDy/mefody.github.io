$(function () {
    return $(".post-content h2, .post-content h3, .post-content h4").each(function (i, el) {
        var $el, id;
        $el = $(el);
        id = $el.attr('id');
        if (id) {
            return $el.prepend($("<a>#</a>").addClass("header-link").attr("href", "#" + id));
        }
    });
});
