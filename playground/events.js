function changeSelectedMajor(passed_in) {
    document.getElementById("major-selected").removeAttribute("id");
    passed_in.setAttribute("id", "major-selected");
    drawChart();

}
function changeSelectedCourse(passed_in) {
    document.getElementById("course-selected").removeAttribute("id");
    passed_in.setAttribute("id", "course-selected");
    drawChart();
}